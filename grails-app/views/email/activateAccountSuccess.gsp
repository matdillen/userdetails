<%@ page contentType="text/html"%>
<html>
<head><title><g:message code="email.activateAccountSuccess.title" /></title></head>
<body>
<h1><g:message code="email.activateAccountSuccess.title" /></h1>
<p>
    <g:message code="email.activateAccountSuccess.you_are_now_subscribed" />

    ${activatedAlerts}
</p>
<p>
    <g:message code="email.activateAccountSuccess.please_visit" args="${[grailsApplication.config.alerts.url+'/notification/myAlerts']}" />
</p>
</body>
</html>