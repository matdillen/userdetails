<!doctype html>
<html>
    <head>
        <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
        <meta name="section" content="home"/>
        <g:set var="title"><g:message code="admin.loadUserResults.title" /></g:set>
        <title>${title}</title>
    </head>
    <body>
        <div class="inner row-fluid">
            <div id="breadcrumb" class="span12">
                <ol class="breadcrumb">
                    <li><a href="${grailsApplication.config.homeUrl}"><g:message code="admin.loadUserResults.home" /></a> <span class=" icon icon-arrow-right"></span></li>
                    <li><a href="${createLink(controller:'admin', action:'index')}"><g:message code="admin.loadUserResults.user_details_administration" /></a> <span class=" icon icon-arrow-right"></span></li>
                    <li class="active">${title}</li>
                </ol>
            </div>
        </div>

        <g:if test="${flash.message}">
            <div class="alert alert-danger">
                ${flash.message}
            </div>
        </g:if>

        <div class="row-fluid">
            <div class="span12" id="page-body" role="main">
                <h1><g:message code="admin.loadUserResults.bulk_load_user" /></h1>
                <p>
                    <g:if test="${results.success}">
                        <g:message code="admin.loadUserResults.success" />
                        <g:if test="${results.failedRecords}">
                            <g:message code="admin.loadUserResults.although_some_rows_where_rejected" />
                        </g:if>
                    </g:if>
                    <g:else>
                        <g:message code="admin.loadUserResults.failed" /> - ${results.message}
                    </g:else>
                </p>
                <h3><g:message code="admin.loadUserResults.upload_results" /></h3>
                <div class="row-fluid">
                    <div class="span4">
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <td><g:message code="admin.loadUserResults.user_accounts_created" /></td>
                                    <td><g:message code="admin.loadUserResults.x_with_x_warnings" args="${[results.userAccountsCreated,results.warnings?.size() ?: 0]}" /></td>
                                </tr>
                                <tr>
                                    <td><g:message code="admin.loadUserResults.rows_rejected" /></td>
                                    <td>${results.failedRecords?.size() ?: 0}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <g:each in="${[[title:message(code:'admin.loadUserResults.users_not_created'), collection: results.failedRecords], [title:message(code:'admin.loadUserResults.warnings'), collection:results.warnings]]}" var="messageCollection">
                    <g:if test="${messageCollection.collection}">
                        <h3>${messageCollection.title}</h3>
                        <table class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th><g:message code="admin.loadUserResults.line" /></th>
                                    <th><g:message code="admin.loadUserResults.row" /></th>
                                    <th><g:message code="admin.loadUserResults.message" /></th>
                                </tr>
                            </thead>
                            <tbody>
                                <g:each in="${messageCollection.collection}" var="errorRow" status="rowIndex">
                                    <tr>
                                        <td>${errorRow.lineNumber}</td>
                                        <td>${errorRow.tokens?.join(",")}</td>
                                        <td>${errorRow.reason}</td>
                                    </tr>
                                </g:each>
                            </tbody>
                        </table>
                    </g:if>
                </g:each>
            </div>
        </div>
    </body>
</html>
