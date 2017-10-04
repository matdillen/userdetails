<!doctype html>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="section" content="home"/>
    <title><g:message code="registration.accountCreated.account_created" /></title>
</head>
<body>

<g:render template="/layouts/header" />

<div class="row-fluid">
    <h1>
        <g:message code="registration.accountCreated.please_check_your_email" />
    </h1>

    <div class="row-fluid">
        <div class="span12 well well-large">
            <g:message code="registration.accountCreated.account_created.description" args="${[grailsApplication.config.supportEmail]}" />
        </div>
   </div>
</div>
</body>
</html>
