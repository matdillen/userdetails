<!doctype html>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="section" content="home"/>
    <title><g:message code="email.flickSuccess.title" /></title>
</head>
<body>
<div class="row">
    <h1><g:message code="email.flickSuccess.success" /></h1>
    <table class="table">
        <tr>
            <td><g:message code="email.flickSuccess.userid" /></td>
            <td><a href="http://www.flickr.com/photos/${user_nsid}">${user_nsid}</a>    </td>
        </tr>
        <tr>
            <td><g:message code="email.flickSuccess.images" /></td>
            <td>http://www.flickr.com/photos/${user_nsid}</td>
        </tr>
        <tr>
            <td><g:message code="email.flickSuccess.username" /></td>
            <td>${username}</td>
        </tr>
    </table>
</div>
</body>
</html>
