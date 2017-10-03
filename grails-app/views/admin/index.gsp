<!doctype html>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="section" content="home"/>
    <title><g:message code="admin.index.title" /></title>
</head>
<body>
    <div class="row">
        <div class="col-md-12" id="page-body" role="main">
            <h1><g:message code="admin.index.title" /></h1>
            <ul>
                <li><g:link controller="user"><g:message code="admin.index.find_a_user" /></g:link></li>
                <li><g:link controller="admin" action="resetPasswordForUser"><g:message code="admin.index.reset_your_password" /></g:link></li>
                <li><g:link controller="role"><g:message code="admin.index.roles" /></g:link></li>
                <li><g:link controller="authorisedSystem"><g:message code="admin.index.authorized_systems" /></g:link></li>
                <li><g:link controller="admin" action="bulkUploadUsers"><g:message code="admin.index.bulk_create_user_accounts" /></g:link></li>
                <li><g:link controller="admin" action="exportUsers"><g:message code="admin.index.export_users_to_csv" /></g:link></li>
                <li><g:link controller="alaAdmin" action="index"><g:message code="admin.index.ala_admin_page" /></g:link></li>
            </ul>

            <h2><g:message code="admin.index.web_services_post" /></h2>
            <ul>
                <li>${createLink(controller:'userDetails', action: 'getUserDetails')}?userName=&lt;email_or_userid&gt;[&amp;includeProps=true] - <g:message code="admin.index.return_a_json_object_containing_id_email_name" /></li>
                <li>${createLink(controller:'userDetails', action: 'getUserList')} - <g:message code="admin.index.return_a_json_map_of_user_email_address_to_display_name" /></li>
                <li>${createLink(controller:'userDetails', action: 'getUserListWithIds')} - <g:message code="admin.index.return_json_map_of_user_ids_to_name" /></li>
                <li>${createLink(controller:'userDetails', action: 'getUserListFull')} - <g:message code="admin.index.return_all_users_as_json" /></li>
                <li>${createLink(controller:'userDetails', action: 'getUserDetailsFromIdList')} - <g:message code="admin.index.return_the_details_for_a_list_of_userids" />
                    <pre>{
  "userIds": ["1","2"], // list of numeric user ids to retrieve
  "includeProps": true // optional, set to true to include organisation, primary usage, etc
}</pre>
                    <g:message code="admin.index.this_will_return_a_json_like_this" />
                    <pre>{
  "users": {
    "1":{
      "userId":"1",
      "userName":"user@email.address",
      "firstName":"User Given Name",
      "lastName":"User Surname",
      "email":"user@email.address",
      "props":{
        "secondaryUserType":"Citizen scientist",
        "organisation":"User Organisation",
        "telephone":"555-123456",
        "city":"User City",
        "state":"User State",
        "primaryUserType":"IT specialist"
      }
    }
  },
  "invalidIds":[2],
  "success":true
}</pre>
                </li>
            </ul>
            <h2><g:message code="admin.index.web_services" /></h2>
            <ul>
                <li><a href="${createLink(uri:'/ws/getUserStats')}">${createLink(uri:'/ws/getUserStats')}</a> - <g:message code="admin.index.a_public_web_service_that_returns_a_json_object" /></li>
            </ul>
        </div>
    </div>
</body>
</html>
