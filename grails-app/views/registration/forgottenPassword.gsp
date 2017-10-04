<!doctype html>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="section" content="home"/>
    <title><g:message code="registration.forgottenPassword.title" /></title>
</head>
<body>

<g:render template="/layouts/header" />

<div class="row-fluid">
    <h1><g:message code="registration.forgottenPassword.reset_my_password" /></h1>
    <div class="row-fluid">
        <div class="span6">

            <g:if test="${captchaInvalid}">
            <p class="well text-error">
                <g:message code="registration.forgottenPassword.your_input_did_not_match" />
            </p>
            </g:if>
            <g:if test="${invalidEmail}">
            <p class="well text-error">
                <g:message code="registration.forgottenPassword.we_dont_recognize_that_email" />
            </p>
            </g:if>

            <g:form action="startPasswordReset" method="POST" onsubmit="submitResetBtn.disabled = true; return true;">
                <label for="email"><g:message code="registration.forgottenPassword.your_email_address" /></label>
                <input id="email" name="email" type="text" class="input-xlarge" value="${params.email ?: email}"/>
                <br/>

                <img src="${createLink(controller: 'simpleCaptcha', action: 'captcha')}"/>
                <label for="captcha"><g:message code="registration.forgottenPassword.type_the_letters_above" /></label>
                <g:textField name="captcha"/>

                <br/>
                <g:submitButton id="submitResetBtn" class="btn btn-ala" name="submit" value="Send Password Reset Link"/>
            </g:form>
        </div>
        <div class="span6">
            <p class="well">
                <g:message code="registration.forgottenPassword.when_you_click_the_send" />
            </p>
        </div>

   </div>
</div>
</body>
</html>
