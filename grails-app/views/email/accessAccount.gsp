<%@ page contentType="text/html"%>
<html>
  <head><title><g:message code="email.accessAcount.title" /></title></head>
  <body>
    <h1>><g:message code="email.accessAcount.title" /></h1>
    <p>
        ><g:message code="email.accessAcount.below_is_a_generated_password" />
    </p>
    <p>
      ${generatedPassword}
    </p>
    <p>
        <g:message code="email.accessAcount.click_here" args="${[link]}" />

    </p>
  </body>
</html>