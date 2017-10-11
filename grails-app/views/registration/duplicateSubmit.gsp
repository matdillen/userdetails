<!doctype html>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="section" content="home"/>
    <title><g:message code="registration.duplicateSubmit.title" /></title>
</head>
<body>

<g:render template="/layouts/header" />
<div class="container" id="main">
<div class="row-fluid">
    <h1><g:message code="registration.duplicateSubmit.results_of_resetting_your_password" /></h1>
    <div class="row-fluid">
        <div class="alert">
            <g:message code="registration.duplicateSubmit.the_system_has_detected_more_than_one" />
        </div>

        <strong><g:message code="registration.duplicateSubmit.next_steps" /></strong>
        <ul>
            <li>
                <g:message code="registration.duplicateSubmit.it_is_likely_that_your_password" args="${grailsApplication.config.security.cas.loginUrl+"?service="+java.net.URLEncoder.encode(serverUrl, 'UTF-8')}" />
            </li>
            <li>
                <g:message code="registration.duplicateSubmit.if_your_new_password_doesnt_work" /> <g:link controller="registration" action="forgottenPassword"><g:message code="registration.duplicateSubmit.if_your_new_password_doesnt_work.here" /></g:link><g:message code="registration.duplicateSubmit.if_your_new_password_doesnt_work.suffix" />.
            </li>
            <li>
                <g:message code="registration.duplicateSubmit.if_problems_perist" args="${[grailsApplication.config.supportEmail]}" />
            </li>
        </ul>

   </div>
</div>
</div>
</body>
</html>
