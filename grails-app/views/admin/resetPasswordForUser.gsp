<!doctype html>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="section" content="home"/>
    <title><g:message code="admin.resetPasswordForUser.title" /></title>
</head>
<body>

<g:render template="/layouts/header" />

<div class="container" id="main">
<div class="row-fluid">
    <h1><g:message code="admin.resetPasswordForUser.reset_password_for_user" /></h1>

    <g:if test="${emailNotRecognised}">
    <div class="row-fluid warning well">
        <p class="text-error"><g:message code="admin.resetPasswordForUser.email_address_x_not_recognized" args="${[email]}" /></p>
    </div>
    </g:if>

    <div class="row-fluid">
        <div class="span6">
            <g:form action="sendPasswordResetEmail" method="POST">
                <label for="email"><g:message code="admin.resetPasswordForUser.email_address_of_user" /></label>
                <input id="email" name="email" type="text" class="input-xlarge" value="${params.email ?: email}"/>
                <br/>
                <g:submitButton class="btn btn-ala" name="submit" value="Send user password"/>
            </g:form>
        </div>
        <div class="span6">
            <p class="well">
                <g:message code="admin.resetPasswordForUser.when_you_click_the_send_password_button" />

            </p>
        </div>
   </div>
</div>
</div>
</body>
</html>
