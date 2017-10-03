<%@ page contentType="text/html"%>
<html>
  <head><title>${emailTitle}</title></head>
  <body>
    <h1>${emailTitle}</h1>
    <p>
        ${emailBody}
    </p>
    <g:if test="${password}">
        <g:message code="email.resetPassword.your_password_is" args="${[password]}" />
    </g:if>
    <p>
       <a href="${link}">${link}</a>
    </p>
  </body>
</html>