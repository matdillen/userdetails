<!doctype html>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="section" content="home"/>
    <title><g:message code="admin.userPasswordResetSuccess.title" /></title>
</head>
<body>
<div class="row-fluid">
    <h1><g:message code="admin.userPasswordResetSuccess.title2" /></h1>
    <div class="row-fluid">
        <div class="span12">
            <p class="well">
                <g:message code="admin.userPasswordResetSuccess.the_password_has_been_reset" args="${[email]}" />
            </p>
        </div>
   </div>
</div>
</body>
</html>
