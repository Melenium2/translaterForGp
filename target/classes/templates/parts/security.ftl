<#assign   known = Session.SPRING_SECURITY_CONTEXT??>

<#if known>
    <#assign
        user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
        name = user.getUsername()
        buttonName = "Sign out"
        buttonActionPath = "/logout"
    >
<#else>
    <#assign
        name = "Unknown"
        isLogin = false
        buttonName = "Sign in"
        buttonActionPath = "/loginPage"
    >
</#if>


