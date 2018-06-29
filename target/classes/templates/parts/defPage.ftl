<#macro page>
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <title>Some App</title>

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    </head>
    <body>
    <#include "security.ftl">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <span class="navbar-brand mb-0 h1">Application</span>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="navbar-nav mr-auto">
                    <a class="nav-link" href="/messagePage">Message</a>
                </li>
                <li class="navbar-nav mr-auto">
                    <a class="nav-link" href="/translate">Translate</a>
                </li>
            </ul>
            <div class = "navbar-text mr-3">${name}</div>
            <form class="form-inline my-2 my-lg-0" method = "post" action= "${buttonActionPath}">
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <button class="btn btn-outline-info my-2 my-sm-0" type="submit">${buttonName}</button>
            </form>
        </div>
    </nav>

    <!-- Scripts -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
      
        <#nested>
    </body>
    </html>
</#macro>
