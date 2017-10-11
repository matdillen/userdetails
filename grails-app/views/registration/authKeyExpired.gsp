<!doctype html>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="section" content="home"/>
    <title><g:message code="registration.authKeyExpired.title" /></title>
</head>
<body>

<g:render template="/layouts/header" />
<div class="container" id="main">
<div class="row-fluid">
    <h1><g:message code="registration.authKeyExpired.title" /></h1>
    <div class="row-fluid">
        <p>
            <g:message code="registration.authKeyExpired.description" args="${[grailsApplication.config.supportEmail]}" />
        </p>
   </div>
</div>
</div>
</body>
</html>
