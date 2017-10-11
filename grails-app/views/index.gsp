<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="section" content="home"/>
    <title><g:message code="index.accounts" /></title>
</head>
<body>

<g:render template="layouts/header" />
<div class="container" id="main">
<div class="row">
    <div class="col-md-12" id="page-body" role="main">

        <g:if test="${flash.errorMessage || flash.message}">
            <div class="col-md-12">
                <div class="alert alert-danger">
                    <button class="close" onclick="$('.alert').fadeOut();" href="#">×</button>
                    ${flash.errorMessage?:flash.message}
                </div>
            </div>
        </g:if>

        <h1><g:message code="index.accounts" /></h1>
        <ul>
            <li><g:link controller="registration" action="createAccount"><g:message code="index.create_a_new_account" /></g:link></li>
            <li><g:link controller="registration" action="forgottenPassword"><g:message code="index.reset_my_password" /></g:link></li>
            <li><g:link controller="profile"><g:message code="index.my_profile" /></g:link></li>
        </ul>

    </div>
    <div style="color:white;" class="pull-right">
        <g:link style="color:#DDDDDD; font-weight:bold;" controller="admin"><g:message code="index.admin_tools" /></g:link>
    </div>
</div>
</div>
</body>
</html>
