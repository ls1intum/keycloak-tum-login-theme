<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title><#nested "title"></title>
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
            <link href="${url.resourcesPath}/favicon32x32.ico" rel="icon"/>
        </#list>
    </#if>
</head>

	<body>
        <#nested "header">
        <div class="login-content" style="background-color: white;">
                <div class="box">
                    <div>
                        <div class="logo-container">
                            <img class="tum-logo" src="${url.resourcesPath}/img/tum_logo.svg" alt="TUM Logo">
                        </div>
                        <h2>Applied Education Technologies</h2>
                    </div>
                <#if displayMessage && message?has_content>
                    <div class="alert alert-${message.type}">
                        <span class="message-text">${message.summary?no_esc}</span>
                    </div>
                </#if>

                <#nested "form">
                
                <div class="footer-links">
                    <a href="https://aet.cit.tum.de/impressum/">Imprint</a> |
                    <a href="https://aet.cit.tum.de/datenschutz/">Privacy Statement</a> |
                    <a href="https://aet.cit.tum.de/">Applied Education Technologies</a> 
                </div>
            </div> 
        </div>
	</body>
</html>
</#macro>
