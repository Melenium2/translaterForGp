<#macro log>
  <form class="form-signin" method="post" action="/login">
      <h1>Sign in</h1>
      <input type="email" name="username" id="inputEmail" class="form-control mt-3" placeholder="Enter email adress" required autofocus/>
      <input type="password" name="password" id="inputPassword" class="form-control mt-2" placeholder="Enter password"/>
      <input type="hidden" name="_csrf" value="${_csrf.token}" />
      <button type="submit" class="btn btn-lg btn-primary btn-block mt-3">Sign in</button>
      <a href="/registration" class="badge badge-light mt-2">Dont have account? Registration here</a>
  </form>
</#macro>

<#macro regist>
  <form class="form-signin" method="post" action="/registration">
      <h1>Registration</h1>
      <input type="email" name="username" id="inputEmail" class="form-control mt-3" placeholder="Enter email adress" required autofocus/>
      <input type="password" name="password" id="inputPassword" class="form-control mt-2" placeholder="Enter password"/>
      <input type="hidden" name="_csrf" value="${_csrf.token}" />
      <button type="submit" class="btn btn-lg btn-primary btn-block mt-3">Registration</button>
      <b>${message?if_exists}</b>
  </form>
</#macro>
