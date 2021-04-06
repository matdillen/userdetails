<!doctype html>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="section" content="home"/>
    <g:if test="${!alreadyRegistered && edit}">
        <g:set var="title"><g:message code="registration.createAccount.edit_your_account" /></g:set>
    </g:if>
    <g:else>
        <g:set var="title"><g:message code="registration.createAccount.create_your_account" /></g:set>
    </g:else>
    <title>${title}</title>
    <asset:stylesheet src="createAccount.css" />
</head>
<body>

<g:render template="/layouts/header" />
<div class="container" id="main">
<div class="inner row-fluid">
    <div id="breadcrumb" class="span12">
        <ol class="breadcrumb">
            <li><a href="${grailsApplication.config.homeUrl}"><g:message code="registration.createAccount.home" /></a> <span class=" icon icon-arrow-right"></span></li>
            <g:if test="${edit}">
                <li><g:link controller="profile"><g:message code="registration.createAccount.my_profile" /></g:link> <span class=" icon icon-arrow-right"></span></li>
            </g:if>
            <li class="active">${title}</li>
        </ol>
    </div>
</div>

<div class="row-fluid">
    <h1>${title}</h1>
    <g:if test="${inactiveUser}">
        <div class="row-fluid warning well">
            <p class="text-error"><g:message code="registration.createAccount.a_user_is_already_registered_but_disabled" args="${[params.email]}"/></p>

            <p>
                <g:message code="registration.createAccount.if_you_think_this_is_an_error" args="${[grailsApplication.config.supportEmail]}"/>
            </p>
        </div>
    </g:if>
    <g:elseif test="${alreadyRegistered}">
        <div class="row-fluid warning well">
            <p class="text-error"><g:message code="registration.createAccount.a_user_is_already_registered" args="${params.email}" /></p>

            <p>
                <g:message code="registration.createAccount.to_login_with_this_username" args="${[grailsApplication.config.security.cas.loginUrl]}"/><br/>
                <g:message code="registration.createAccount.to_start_the_process_of_resetting_your_password" /><g:link controller="registration" action="forgottenPassword" params="${[email: params.email]}"><g:message code="registration.createAccount.to_start_the_process_of_resetting_your_password.click_here" /></g:link>.
            </p>
        </div>
    </g:elseif>

    <div class="row-fluid">
        <div class="span4">
            <div>
            <g:form name="updateAccountForm" method="POST" action="${edit ? 'update' : 'register'}" controller="registration" useToken="true" onsubmit="updateAccountSubmit.disabled = true; return true;">

                    <label for="firstName"><g:message code="registration.createAccount.first_name" /></label>
                    <input id="firstName" name="firstName" type="text" class="input-xlarge" value="${user?.firstName}"
                           data-validation-engine="validate[required]"
                           data-errormessage-value-missing="${message(code: "registration.createAccount.mandatory_field")}"
                    />

                    <label for="lastName"><g:message code="registration.createAccount.last_name" /></label>
                    <input id="lastName" name="lastName" type="text" class="input-xlarge" value="${user?.lastName}"
                           data-validation-engine="validate[required]"
                           data-errormessage-value-missing="${message(code: "registration.createAccount.mandatory_field")}"
                    />


                    <label for="email"><g:message code="registration.createAccount.email_address" /></label>
                    <input id="email" name="email" type="text" class="input-xlarge" value="${user?.email}"
                           data-validation-engine="validate[required,custom[email]]"
                           data-errormessage-value-missing="${message(code: "registration.createAccount.email_is_required")}"
                    />

                    <g:if test="${!edit}">
                    <label for="password"><g:message code="registration.createAccount.password" /></label>
                    <input id="password"
                           name="password"
                           class="input-xlarge"
                           value=""
                           data-validation-engine="validate[required, minSize[8]]"
                           data-errormessage-value-missing="${message(code: "registration.createAccount.password_is_required")}"
                           type="password"
                    />

                    <label for="reenteredPassword"><g:message code="registration.createAccount.reentered_password" /></label>
                    <input id="reenteredPassword"
                           name="reenteredPassword"
                           class="input-xlarge"
                           value=""
                           data-validation-engine="validate[required, minSize[8]]"
                           data-errormessage-value-missing="${message(code: "registration.createAccount.password_is_required")}"
                           type="password"
                    />
                    </g:if>

                    <label for="organisation"><g:message code="registration.createAccount.organisation" /></label>
                    <input id="organisation" name="organisation" type="text" class="input-xlarge" value="${props?.organisation}"/>

                    <label for="city"><g:message code="registration.createAccount.city" /></label>
                    <input id="city" name="city" type="text" class="input-xlarge" value="${props?.city}" />
<%--
                    <label for="state"><g:message code="registration.createAccount.state" /></label>
                    <g:select id="state" name="state"
                              value="${props?.state}"
                              keys="['N/A', 'ACT', 'NSW', 'WA', 'VIC', 'SA', 'TAS', 'NT', 'QLD']"
                              from="['N/A', 'Australian Capital Territory', 'New South Wales',
                                      'Western Australia', 'Victoria', 'South Australia', 'Tasmania',
                                      'Northern Territory', 'Queensland']"
                    />--%>

                    <label for="telephone"><g:message code="registration.createAccount.telephone" /></label>
                    <input id="telephone" name="telephone" type="text" class="input-xlarge" value="${props?.telephone}" />

                <%--
                    <label for="primaryUserType"><g:message code="registration.createAccount.primary_usage" /></label>
                    <input id="primaryUserType" name="primaryUserType" type="text" class="input-xlarge usageAuto"
                           value="${props?.primaryUserType?:''}"
                           data-validation-engine="validate[required]"
                    />

                    <label for="secondaryUserType"><g:message code="registration.createAccount.secondary_usage" /></label>
                    <input id="secondaryUserType" name="secondaryUserType" type="text"  class="input-xlarge usageAuto"
                           value="${props?.secondaryUserType?:''}"
                           data-validation-engine="validate[required]"
                    />--%>

                <label for="sum" id="sumLabel"><g:message code="registration.createAccount.sum"/></label>
                <input id="sum" name="sum" type="text" class="input-xlarge" value=""/>

                <br/>
                <g:if test="${edit}">
                    <button id="updateAccountSubmit" class="btn btn-ala"><g:message code="registration.createAccount.update_account" /></button>
                    <button id="disableAccountSubmit" class="btn btn-ala delete"><g:message code="registration.createAccount.disable_account" /></button>
                </g:if>
                <g:else>
                    <button id="updateAccountSubmit" class="btn btn-ala"><g:message code="registration.createAccount.create_account" /></button>
                </g:else>
            </g:form>
            </div>
            <g:if test="${flash.invalidToken}">
                <g:message code="registration.createAccount.please_dont_click_twice" />
            </g:if>
        </div>
        <div class="span8 well">
            <g:if test="${!edit}">
                <p>
                    <g:message code="registration.createAccount.to_create_your_new_account_fill_in_the_fields" />
                </p>
            </g:if>
            <p><g:message code="registration.createAccount.in_the_primary_and_secondary_usage_fields_you_can" />

            </p>
            <p><g:message code="registration.createAccount.for_the_atlas_policy_on_the_collection" args="${[grailsApplication.config.privacyPolicy]}"/>
            </p>
            <p>
                <g:message code="registration.createAccount.your_email_address_will_be_your_login" />
                <g:if test="${!edit}">
                    <g:message code="registration.createAccount.an_account_activation_link_will_be_emailed" />
                </g:if>
            </p>
        </div>
   </div>
</div>
</div>
</body>
<asset:javascript src="createAccount.js" asset-defer="" />
<asset:script type="text/javascript">
    $(function(){

        //$('.typeahead').typeahead();
        var usageOptions = [
            "Amateur naturalist","Amateur photographer","Biodiversity Research","Biogeographer",
            "Biologist","Botanist","Bush Regenerator","BushCare leader","Citizen scientist","Collection manager",
            "Collection technician","Communications","Conservation Planner","Consultant","Data manager",
            "Database Manager","Eco Tourism","Ecologist","Education","Education programs developer","Entomologist",
            "Environmental Officer","Environmental Scientist","Farming","Field Researcher","Forester","Geochemist",
            "GIS visualisation","Identification","IT specialist","Land manager","Land owner","Librarian","Mycologist",
            "Naturalist","Observer","Park Ranger","Pest control","Pest Identification","PhD Student","Policy developer",
            "Predicting distribution","Researcher","Science communicator","Scientific Illustrator","Scientist",
            "Student","Taxonomist","Teacher","Veterinary Pathologist","Volunteer","Volunteer Digitizer","Writer",
            "Zoologist"
        ];

        var num1 = Math.floor(Math.random() * 10);
        var num2 = Math.floor(Math.random() * 10);
        var sum = num1 + num2

        $("#sumLabel").append(" ", num1, " + ", num2);

        $(".usageAuto").autocomplete(usageOptions, {});
        $('#updateAccountForm').validationEngine('attach', { scroll: false });
        $("#updateAccountSubmit").click(function(e) {

            $("#updateAccountSubmit").attr('disabled','disabled');

            var sumCheck = Number($('#sum').val()) === sum
            if(!sumCheck){
                alert("${message(code: "registration.createAccount.sum_check_not_correct")}");
            }

            var pm = $('#password').val() == $('#reenteredPassword').val();
            if(!pm){
                alert("${message(code: "registration.createAccount.the_supplied_password_do_not_match")}");
            }

            var valid = $('#updateAccountForm').validationEngine('validate');

            if (valid && pm && sumCheck) {
                $("form[name='updateAccountForm']").submit();
            } else {
                $('#updateAccountSubmit').removeAttr('disabled');
                e.preventDefault();
            }
        });

        $("#disableAccountSubmit").click(function(e) {

            $("#disableAccountSubmit").attr('disabled','disabled');

            var valid = confirm("${message(code: 'default.button.delete.user.confirm.message', default: "Are you sure want to disable your account? You won't be able to login again. You will have to contact support@ala.org.au in the future if you want to reactivate your account.")}");

            if (valid) {
                $('#updateAccountForm').validationEngine('detach');
                $("form[name='updateAccountForm']").attr('action','disableAccount');
                $("form[name='updateAccountForm']").submit();
            } else {
                $('#disableAccountSubmit').removeAttr('disabled');
                e.preventDefault();
            }
        });



    });
</asset:script>
</html>
