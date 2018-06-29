$(document).ready(function ()
{
    $(".text-area-change").on('input', function()
    {
        $(".is-collapse").collapse('hide');
    });
    
    $(".is-click-button-translate").click(function()
    {
      var lang = $(this).attr('id').replace(/btn/ig, "");
      
      translate_ajax(lang);
      
      $(".is-collapse").collapse('hide');
      $("#form"+lang).collapse();     
    });
    
    $(".btn-copy-content").click(function()
    {
       var elem = $(this).attr('id').replace(/btn/ig, "");

       copyToBuffer(elem);
    });
});


function translate_ajax(lang)
{
  var ln = '#' + lang;
  if($(ln).prop('checked'))
  {
    main_translate(lang);
  }
  else
  {
    alert("can not translate this language");
  }
}

function copyToBuffer(elem)
{
  var $temp = $("<textarea>");
  $("body").append($temp);
  $temp.attr("contenteditable", true)
  .html($("#txt"+elem).val())
  .select().on('focus',function() { document.execCommand('selectAll',false,null) }).focus();
  
  document.execCommand('copy');
  $temp.remove();
}


function main_translate(lang)
{
    var url = "https://translate.yandex.net/api/v1.5/tr.json/translate"
    var key = "trnsl.1.1.20180611T114445Z.b07b746a55d9322d.28bd8c213dd835692e1b48e0dfc9232ad1e4c0ec";
    
    var textHeader = $("#translateHeader").val().replace(/ /ig, '+\n').replace(/(USA|America|United\S+)/ig, $("#btn"+lang).html());
    var textContentFirst = $("#translateContentFirst").val().replace(/ /ig, '+\n').replace(/(USA|America|United\S+)/ig, $("#btn"+lang).html());
    var textContentSecond = $("#translateContentSecond").val().replace(/ /ig, '+').replace(/(USA|America|United\S+)/ig, $("#btn"+lang).html());
    var textFooter = $("#translateFooter").val().replace(/ /ig, '+\n').replace(/(USA|America|United\S+)/ig, $("#btn"+lang).html());
    
    var dataHeader = 'key='+key+'&text='+encodeURIComponent(textHeader)+
                          '&lang=en-'+lang;
    
    $.ajax({
      type: "POST",
      contentType: "application/x-www-form-urlencoded",
      url: url,
      data: dataHeader,
      success: function(resp)
      {
        console.log(resp.text[0]);
        
        $("#txt"+lang+"Header").val(resp.text[0].trim().replace(/\s+/g, " ").replace(/\+/ig, " "));
      
        $("#btn"+lang+"Header").css('display', "block");
      },
      error: function(e)
      {
        console.log(e.responseText);
      }
        });
      
      var dataContentFirst = 'key='+key+'&text='+encodeURIComponent(textContentFirst)+
                            '&lang=en-'+lang;
      
      $.ajax({
        type: "POST",
        contentType: "application/x-www-form-urlencoded",
        url: url,
        data: dataContentFirst,
        success: function(resp)
        {          
          $("#txt"+lang+"Content").append(resp.text[0].trim().replace(/\s+/g, " ").replace(/\+/ig, " "));
          
          $("#btn"+lang+"Content").css('display', "block");
        },
        error: function(e)
        {
          console.log(e.responseText);
        }
          });
          
          var dataContentSecond = 'key='+key+'&text='+encodeURIComponent(textContentSecond)+
                                '&lang=en-'+lang;
          
          $.ajax({
            type: "POST",
            contentType: "application/x-www-form-urlencoded",
            url: url,
            data: dataContentSecond,
            success: function(resp)
            {          
              $("#txt"+lang+"Content").append("\n\n").append(resp.text[0].replace(/\+/ig, " "));
              
              $("#btn"+lang+"Content").css('display', "block");
            },
            error: function(e)
            {
              console.log(e.responseText);
            }
              });
        
        var dataFooter = 'key='+key+'&text='+encodeURIComponent(textFooter)+
                              '&lang=en-'+lang;
        
        $.ajax({
          type: "POST",
          contentType: "application/x-www-form-urlencoded",
          url: url,
          data: dataFooter,
          success: function(resp)
          {
            $("#txt"+lang+"Footer").val(resp.text[0].trim().replace(/\s+/g, " ").replace(/\+/ig, " "));
          
            $("#btn"+lang+"Footer").css('display', "block");
          },
          error: function(e)
          {
            console.log(e.responseText);
          }
            });
}