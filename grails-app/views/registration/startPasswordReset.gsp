<!doctype html>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="section" content="home"/>
    <title><g:message code="registration.startPasswordReset.please_check_your_email" /></title>
</head>
<body>

<g:render template="/layouts/header" />

<div class="row-fluid">
    <h1><g:message code="registration.startPasswordReset.please_check_your_email" /></h1>
    <div class="row-fluid">
        <div class="span12">
            <p class="well">
                <g:message code="registration.startPasswordReset.we_have_sent_you_an_email" />
            </p>
        </div>
   </div>
</div>
</body>
</html>