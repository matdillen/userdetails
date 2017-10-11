<!doctype html>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="section" content="home"/>
    <title><g:message code="registration.accountActivated.account_created" /> | ${grailsApplication.config.skin.orgNameLong}</title>
</head>
<body>

<g:render template="/layouts/header" />
<div class="container" id="main">
<div class="row-fluid">
    <h1>
        <g:message code="registration.accountActivated.please_check_your_email" />
    </h1>

    <div class="row-fluid">
        <div class="span12 well well-large">
            <g:message code="registration.accountActivated.thank_you_for_registering" args="${[grailsApplication.config.supportEmail]}" />
        </div>
   </div>
</div>
</div>
</body>
</html>
