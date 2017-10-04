<!doctype html>
<html>
    <head>
        <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
        <meta name="section" content="home"/>
        <g:set var="title"><g:message code="admin.bulkLoadUsers.title" /></g:set>
        <title>${title} | ${grailsApplication.config.skin.orgNameLong}</title>
    </head>
    <body>

    <g:render template="/layouts/header" />

        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><a href="${createLink(controller:'admin', action:'index')}"><i class="icon-wrench"></i>&nbsp;<g:message code="admin.bulkLoadUsers.administration" /></a></li>
            </ul>
        </div>

        <g:if test="${flash.message}">
            <div class="alert alert-danger">
                ${flash.message}
            </div>
        </g:if>

        <div class="row-fluid">
            <div class="span12" id="page-body" role="main">
                <h1><g:message code="admin.bulkLoadUsers.title" /></h1>
                <p>
                    <g:message code="admin.bulkLoadUsers.choose_a_csv_file" />
                </p>
                <p>
                    <code>
                    email_address,first_name,surname,roles
                    </code>
                </p>
                <p>
                    <g:message code="admin.bulkLoadUsers.where_roles_is_an_optional" />
                </p>
                <p>
                    <g:message code="admin.bulkLoadUsers.note_if_an_email_already_exists" />
                </p>
            </div>
        </div>
        <g:form action="loadUsersCSV" method="post" enctype="multipart/form-data" class="form-horizontal well well-small">
            <div class="control-group">
                <div class="controls">
                    <input type="file" name="userList" />
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <label class="checkbox">
                        <g:checkBox name="firstRowHasFieldNames"/> <g:message code="admin.bulkLoadUsers.first_row_contains" />
                    </label>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="primaryUsage">
                    <g:message code="admin.bulkLoadUsers.primary_usage" />
                </label>

                <div class="controls">
                    <g:textField name="primaryUsage" />
                </div>
            </div>

            <h4><g:message code="admin.bulkLoadUsers.password_reset_email" /></h4>
            <div class="control-group">
                <g:message code="admin.bulkLoadUsers.an_email_will_be_sent_to_each_user" />
            </div>

            <div class="control-group">
                <label class="control-label" for="emailSubject">
                    <g:message code="admin.bulkLoadUsers.subject" />
                </label>
                <div class="controls">
                    <g:textField name="emailSubject" class="input-xlarge" />
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="emailTitle">
                    <g:message code="admin.bulkLoadUsers.email_title" />
                </label>
                <div class="controls">
                    <g:textField name="emailTitle" class="input-xlarge"/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="emailBody">
                    <g:message code="admin.bulkLoadUsers.body" />
                </label>
                <div class="controls">
                    <g:textArea name="emailBody" class="input-xxlarge" rows="5"/>
                </div>
            </div>

            <div class="control-group">
                <div class="controls">
                    <button class="btn btn-primary"><g:message code="admin.bulkLoadUsers.upload" /></button>
                </div>
            </div>
        </g:form>
    </body>
</html>
