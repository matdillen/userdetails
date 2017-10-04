<!doctype html>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="section" content="home"/>
    <title><g:message code="registration.accountError.title" /></title>
</head>
<body>

<g:render template="/layouts/header" />

<div class="row-fluid">
    <h1><g:message code="registration.accountError.title" /></h1>
    <div class="row-fluid">
        <p>
            <g:message code="registration.accountError.description" args="${[grailsApplication.config.supportEmail]}" />
        </p>
        <g:if test="${msg}"><p><h4><g:message code="registration.accountError.error" />:</h4> <pre>${msg}</pre></p></g:if>
   </div>
</div>
</body>
</html>
