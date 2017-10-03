<!doctype html>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="section" content="home"/>
    <title><g:message code="email.flickrFail.title" /></title>
</head>
<body>
<div class="row-fluid">
    <h1><g:message code="email.flickrFail.failed" /></h1>
    <p class="well text-error">
        <g:message code="email.flickrFail.we_were_unable_to_link" args="${[grailsApplication.config.supportEmail]}"/>
    </p>
</div>
</body>
</html>
