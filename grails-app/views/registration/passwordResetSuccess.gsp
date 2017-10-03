<!doctype html>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="section" content="home"/>
    <title><g:message code="registration.passwordResetSuccess.title" /></title>
</head>
<body>
<div class="row-fluid">
    <h1><g:message code="registration.passwordResetSuccess.password_reset_successfully" /></h1>
    <div class="row-fluid">
        <div class="span12">
            <p class="well">
                <g:message code="registration.passwordResetSuccess.your_password_has_been_reset" />
            </p>
            <a href="${grailsApplication.config.security.cas.loginUrl}?service=${java.net.URLEncoder.encode(serverUrl, 'UTF-8')}" class="btn bt-ala"><g:message code="registration.passwordResetSuccess.login" /></a>
        </div>
   </div>
</div>
</body>
</html>
