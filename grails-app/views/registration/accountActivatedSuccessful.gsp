<!doctype html>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="section" content="home"/>
    <title><g:message code="registration.accountActivatedSuccessful.account_created" /> | ${grailsApplication.config.skin.orgNameLong}</title>
</head>
<body>

<g:render template="/layouts/header" />
<div class="container" id="main">
<div class="row-fluid">
    <h1>
        <g:message code="registration.accountActivatedSuccessful.congratulations" />
    </h1>

    <div class="row-fluid">
        <div class="span12 well well-large">
            <g:message code="registration.accountActivatedSuccessful.please_login_to_access" /> <a href="${grailsApplication.config.security.cas.loginUrl}?email=${user.email}&service=${grailsApplication.config.redirectAfterFirstLogin}"><g:message code="registration.accountActivatedSuccessful.please_login_to_access.my_profile" /></a>.
        </div>
    </div>
</div>
</div>
</body>
</html>