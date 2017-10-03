<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="section" content="home"/>
    <title><g:message code="index.accounts" /></title>


    <!---- CAS header includes ----->
    <!-- Bootstrap-->
    <!--<link href="${grailsApplication.config.auth_cas_url}/css/bootstrap.min.css" rel="stylesheet" />

    <!-- FontAwesome -->
    <!--    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />

    <!-- ALA-->
    <!--    <link href="${grailsApplication.config.auth_cas_url}/css/ala-styles.css" rel="stylesheet" />
    <link href="${grailsApplication.config.auth_cas_url}/css/ala-cas.css" rel="stylesheet" />
    <link href="${grailsApplication.config.auth_cas_url}/css/doedat-cas.css" rel="stylesheet" />

    <!-- favicon -->
    <!--    <link rel="shortcut icon" href="${grailsApplication.config.auth_cas_url}/img/favicon/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" sizes="57x57" href="${grailsApplication.config.auth_cas_url}/img/favicon/apple-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="60x60" href="${grailsApplication.config.auth_cas_url}/img/favicon/apple-icon-60x60.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="${grailsApplication.config.auth_cas_url}/img/favicon/apple-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="${grailsApplication.config.auth_cas_url}/img/favicon/apple-icon-76x76.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="${grailsApplication.config.auth_cas_url}/img/favicon/apple-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="${grailsApplication.config.auth_cas_url}/img/favicon/apple-icon-120x120.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="${grailsApplication.config.auth_cas_url}/img/favicon/apple-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="${grailsApplication.config.auth_cas_url}/img/favicon/apple-icon-152x152.png" />
    <link rel="apple-touch-icon" sizes="180x180" href="${grailsApplication.config.auth_cas_url}/img/favicon/apple-icon-180x180.png" />
    <link rel="icon" type="image/png" sizes="192x192" href="${grailsApplication.config.auth_cas_url}/img/favicon/android-icon-192x192.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="${grailsApplication.config.auth_cas_url}/img/favicon/favicon-32x32.png" />
    <link rel="icon" type="image/png" sizes="96x96" href="${grailsApplication.config.auth_cas_url}/img/favicon/favicon-96x96.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="${grailsApplication.config.auth_cas_url}/img/favicon/favicon-16x16.png" />
    <link rel="manifest" href="${grailsApplication.config.auth_cas_url}/img/favicon/manifest.json" />
    <meta name="theme-color" content="#d5502a"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <!---- End CAS header includes ----->

</head>
<body>
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
            <li><g:link controller="profile">My profile</g:link></li>
        </ul>

    </div>
    <div style="color:white;" class="pull-right">
        <g:link style="color:#DDDDDD; font-weight:bold;" controller="admin"><g:message code="index.admin_tools" /></g:link>
    </div>
</div>
</body>
</html>
