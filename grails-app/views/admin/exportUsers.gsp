<!doctype html>
<html>
    <head>
        <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
        <meta name="section" content="home"/>
        <g:set var="title"><g:message code="admin.exportUsers.title" /></g:set>
        <title>${title} | ${grailsApplication.config.skin.orgNameLong}</title>
    </head>
    <body>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><a href="${createLink(controller:'admin', action:'index')}"><i class="icon-wrench"></i>&nbsp;<g:message code="admin.exportUsers.administration" /></a></li>
            </ul>
        </div>

        <g:if test="${flash.message}">
            <div class="alert alert-danger">
                ${flash.message}
            </div>
        </g:if>

        <div class="row-fluid">
            <div class="span12" id="page-body" role="main">
                <h1><g:message code="admin.exportUsers.title" /></h1>
                <p>
                    <g:message code="admin.exportUsers.choose_the_options_for_exporting" />
                </p>
                <p>
                    <code>
                    primaryfield1,...,primaryfieldn[,extrafield1,..,extrafieldm][,roles]
                    </code>
                </p>
                <p>
                    <g:message code="admin.exportUsers.where_primary_fields_are_x" args="${[primaryFields]}" />

                </p>
                <p>
                    <g:message code="admin.exportUsers.extra_fields_are_x" args="${[extraFields]}" />

                </p>
                <p>
                    <g:message code="admin.exportUsers.and_roles_is_an_optional" />

                </p>

                <p>
                    <g:message code="admin.exportUsers.note_the_first_row_will_contain_the_name" />

                </p>
            </div>
        </div>
        <g:form name="exportUsersForm" action="downloadUsersCsvFile" method="post"  class="form-horizontal well well-small">
            <div class="control-group">
            </div>
            <div class="control-group">
                <div class="controls">
                    <label class="checkbox">
                        <g:checkBox name="includeInactiveUsers"/> <g:message code="admin.exportUsers.include_inactive_users" />
                    </label>
                </div>
                <div class="controls">
                    <label class="checkbox">
                        <g:checkBox name="includeExtraFields"/> <g:message code="admin.exportUsers.include_extra_data_fields" />
                    </label>
                </div>
                <div class="controls">
                    <label class="checkbox">
                        <g:checkBox name="includeRoles"/> <g:message code="admin.exportUsers.include_roles_field" />
                    </label>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="primaryUsage">
                    <g:message code="admin.exportUsers.only_users_in_selected_roles" />

                </label>
                <div class="controls">
                    <g:select size="10" name="selectedRoles" from="${roles}"  multiple="true"/>
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <button id="downloadFileButton" class="btn btn-primary"><g:message code="admin.exportUsers.download_csv_file" /></button>
                </div>
            </div>
        </g:form>
    </body>
    <r:script>
        $(function(){
            $("#downloadFileButton").click(function(e) {
                $("#downloadFileButton").attr('disabled','disabled');
                var valid = confirm("${message(code: 'default.button.admin.export.users.confirm.message', default: "Your download will start shortly after clicking accept/OK. You will need to refresh the page if you want to download a file with different parameters.")}");
                if (valid) {
                    $("form[name='exportUsersForm']").submit();
                } else {
                    $('#downloadFileButton').removeAttr('disabled');
                    e.preventDefault();
                }
            });
        });
    </r:script>
</html>
