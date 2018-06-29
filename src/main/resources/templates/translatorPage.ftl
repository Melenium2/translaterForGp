<#import "parts/defPage.ftl" as p>

<@p.page>
  <meta name="csrf-token" content="${_csrf.token}" /> 

  <style>
    <#include "static/translationStyle.css"/>
  </style>
  <div class="container">
    <div class="row" id="firstRow">
      <div class="col" id="firstColumn"> 
        <div>     
          <div class="mt-3 ml-2">
            <span class="label label-primary">Header</span>
            <textarea class="form-control mt-1 text-area-change" id="translateHeader" placeholder="Header">
              
            </textarea>
          </div>
          
          <div class="mt-3 ml-2">
            <span class="label label-primary">Content(1 part)</span>
            <textarea class="form-control mt-1 text-area-change" id="translateContentFirst" placeholder="Content">
              
            </textarea>
          </div>
          
          <div class="mt-3 ml-2">
            <span class="label label-primary">Content(2 part)</span>
            <textarea class="form-control mt-1 text-area-change" id="translateContentSecond" placeholder="Content">
              
            </textarea>
          </div>
          
          <div class="mt-3 ml-2">
            <span class="label label-primary">Footer</span>
            <textarea class="form-control mt-1  text-area-change" id="translateFooter" placeholder="Footer">
              
            </textarea>
          </div>
        
          <div class="style-for-cards mt-2">
            <a class="btn btn-outline-primary" href="#formLanguageChose" role="button" data-toggle="collapse" aria-expanded="false" aria-collapse="formLanguageChose">Chose languages</a>
            <div class="collapse" id="formLanguageChose">
              <div class="card card-body">
                
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="hi" checked="checked"/>
                  <label for="en" class="form-check-label">Хинди</label>
                </div>
                
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="fr" checked="checked"/>
                  <label for="en" class="form-check-label">Француский</label>
                </div>
                
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="zh" checked="checked"/>
                  <label for="en" class="form-check-label">Китайский</label>
                </div>
                
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="de" checked="checked"/>
                  <label for="en" class="form-check-label">Немецкий</label>
                </div>
                
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="es" checked="checked"/>
                  <label for="en" class="form-check-label">Испанский</label>
                </div>
                
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="pt" checked="checked"/>
                  <label for="en" class="form-check-label">Португальский</label>
                </div>
                
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="ja" checked="checked"/>
                  <label for="en" class="form-check-label">Японский</label>
                </div>
                
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="ko" checked="checked"/>
                  <label for="en" class="form-check-label">Корейский</label>
                </div>
                
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <div class="col mt-4">
        <div class="row button-area">
          <div class="#">
            <a id="btnhi" class="btn btn-outline-info is-click-button-translate" data-toggle="collapse" href="#formhi" role="button" aria-expanded="false" aria-collapse="formhi">India</a>
            <div class="collapse mt-2 is-collapse" id="formhi">
                <div class="col">
                  <div class=row>
                    <textarea class="form-control trans-textarea" id="txthiHeader"></textarea>
                    <textarea class="form-control trans-textarea" id="txthiContent"></textarea>
                    <textarea class="form-control trans-textarea" id="txthiFooter"></textarea>
                  </div>
                  <div class="row">
                    <button type="button" class="btn btn-info  btn-copy-content" id="btnhiHeader" >Header</button>
                    <button type="button" class="btn btn-info ml-1  btn-copy-content" id="btnhiContent" >Content</button>
                    <button type="button" class="btn btn-info ml-1  btn-copy-content" id="btnhiFooter" >Footer</button>
                  </div>
              </div>
            </div>
          </div>
        </div>
        
        <div class="row button-area mt-2">
          <div class="#">
            <a id="btnfr" class="btn btn-outline-info is-click-button-translate" data-toggle="collapse" href="#formfr" role="button" aria-expanded="false" aria-collapse="formfr">France</a>
            <div class="collapse mt-2  is-collapse" id="formfr">
                <div class="col">
                  <div class=row>
                    <textarea class="form-control trans-textarea" id="txtfrHeader"></textarea>
                    <textarea class="form-control trans-textarea" id="txtfrContent"></textarea>
                    <textarea class="form-control trans-textarea" id="txtfrFooter"></textarea>
                  </div>
                  <div class="row">
                    <button type="button" class="btn btn-info btn-copy-content" id="btnfrHeader" >Header</button>
                    <button type="button" class="btn btn-info ml-1  btn-copy-content" id="btnfrContent" >Content</button>
                    <button type="button" class="btn btn-info ml-1  btn-copy-content" id="btnfrFooter" >Footer</button>
                  </div>
                </div>
            </div>
          </div>
        </div>
        
        <div class="row button-area mt-2">
          <div class="#">
            <a id="btnzh" class="btn btn-outline-info is-click-button-translate" data-toggle="collapse" href="#formzh" role="button" aria-expanded="false" aria-collapse="formzh">China</a>
            <div class="collapse mt-2 is-collapse" id="formzh">
                <div class="col">
                  <div class=row>
                    <textarea class="form-control trans-textarea" id="txtzhHeader"></textarea>
                    <textarea class="form-control trans-textarea" id="txtzhContent"></textarea>
                    <textarea class="form-control trans-textarea" id="txtzhFooter"></textarea>
                  </div>
                  <div class="row">
                    <button type="button" class="btn btn-info  btn-copy-content" id="btnzhHeader" >Header</button>
                    <button type="button" class="btn btn-info ml-1  btn-copy-content" id="btnzhContent" >Content</button>
                    <button type="button" class="btn btn-info ml-1  btn-copy-content" id="btnzhFooter" >Footer</button>
                  </div>
                </div>
            </div>
          </div>
        </div>
        
        <div class="row button-area mt-2">
          <div class="#">
            <a id=btnde class="btn btn-outline-info is-click-button-translate" data-toggle="collapse" href="#formde" role="button" aria-expanded="false" aria-collapse="formde">Germany</a>
            <div class="collapse mt-2 is-collapse" id="formde">
                <div class="col">
                  <div class=row>
                    <textarea class="form-control trans-textarea" id="txtdeHeader"></textarea>
                    <textarea class="form-control trans-textarea" id="txtdeContent"></textarea>
                    <textarea class="form-control trans-textarea" id="txtdeFooter"></textarea>
                  </div>
                  <div class="row">
                    <button type="button" class="btn btn-info btn-copy-content" id="btndeHeader" >Header</button>
                    <button type="button" class="btn btn-info ml-1  btn-copy-content" id="btndeContent" >Content</button>
                    <button type="button" class="btn btn-info ml-1  btn-copy-content" id="btndeFooter" >Footer</button>
                  </div>
                </div>
            </div>
          </div>
        </div>
        
        <div class="row button-area mt-2">
          <div class="#">
            <a id=btnes class="btn btn-outline-info is-click-button-translate" data-toggle="collapse" href="#formes" role="button" aria-expanded="false" aria-collapse="formes">Spain</a>
            <div class="collapse mt-2 is-collapse" id="formes">
                <div class="col">
                  <div class=row>
                    <textarea class="form-control trans-textarea" id="txtesHeader"></textarea>
                    <textarea class="form-control trans-textarea" id="txtesContent"></textarea>
                    <textarea class="form-control trans-textarea" id="txtesFooter"></textarea>
                  </div>
                  <div class="row">
                    <button type="button" class="btn btn-info btn-copy-content" id="btnesHeader" >Header</button>
                    <button type="button" class="btn btn-info ml-1  btn-copy-content" id="btnesContent" >Content</button>
                    <button type="button" class="btn btn-info ml-1  btn-copy-content" id="btnesFooter" >Footer</button>
                  </div>
                </div>
            </div>
          </div>
        </div>
        
        <div class="row button-area mt-2">
          <div class="#">
            <a id=btnpt class="btn btn-outline-info is-click-button-translate" data-toggle="collapse" href="#formpt" role="button" aria-expanded="false" aria-collapse="formpt">Portugal</a>
            <div class="collapse mt-2 is-collapse" id="formpt">
                <div class="col">
                  <div class=row>
                    <textarea class="form-control trans-textarea" id="txtptHeader"></textarea>
                    <textarea class="form-control trans-textarea" id="txtptContent"></textarea>
                    <textarea class="form-control trans-textarea" id="txtptFooter"></textarea>
                  </div>
                  <div class="row">
                    <button type="button" class="btn btn-info btn-copy-content" id="btnptHeader" >Header</button>
                    <button type="button" class="btn btn-info ml-1  btn-copy-content" id="btnptContent" >Content</button>
                    <button type="button" class="btn btn-info ml-1  btn-copy-content" id="btnptFooter" >Footer</button>
                  </div>
                </div>
            </div>
          </div>
        </div>
        
        <div class="row button-area mt-2">
          <div class="#">
            <a id=btnja class="btn btn-outline-info is-click-button-translate" data-toggle="collapse" href="#formja" role="button" aria-expanded="false" aria-collapse="formja">Japan</a>
            <div class="collapse mt-2 is-collapse" id="formja">
                <div class="col">
                  <div class=row>
                    <textarea class="form-control trans-textarea" id="txtjaHeader"></textarea>
                    <textarea class="form-control trans-textarea" id="txtjaContent"></textarea>
                    <textarea class="form-control trans-textarea" id="txtjaFooter"></textarea>
                  </div>
                  <div class="row">
                    <button type="button" class="btn btn-info btn-copy-content" id="btnjaHeader" >Header</button>
                    <button type="button" class="btn btn-info ml-1  btn-copy-content" id="btnjaContent" >Content</button>
                    <button type="button" class="btn btn-info ml-1  btn-copy-content" id="btnjaFooter" >Footer</button>
                  </div>
                </div>
            </div>
          </div>
        </div>
        
          <div class="row button-area mt-2">
            <div class="#">
              <a id="btnko" class="btn btn-outline-info is-click-button-translate" data-toggle="collapse" href="#formko" role="button" aria-expanded="false" aria-collapse="formko">Korea</a>
              <div class="collapse mt-2 is-collapse" id="formko">
                  <div class="col">
                    <div class=row>
                      <textarea class="form-control trans-textarea" id="txtkoHeader"></textarea>
                      <textarea class="form-control trans-textarea" id="txtkoContent"></textarea>
                      <textarea class="form-control trans-textarea" id="txtkoFooter"></textarea>
                    </div>
                    <div class="row">
                      <button type="button" class="btn btn-info btn-copy-content" id="btnkoHeader" >Header</button>
                      <button type="button" class="btn btn-info ml-1  btn-copy-content" id="btnkoContent" >Content</button>
                      <button type="button" class="btn btn-info ml-1  btn-copy-content" id="btnkoFooter" >Footer</button>
                    </div>
                  </div>
              </div>
            </div>
          </div>
        
      </div>    
    </div>
  </div>
  
    
    <script type="text/javascript">
      <#include "scripts/translatorScript.js"/>
    </script>
</@p.page>
