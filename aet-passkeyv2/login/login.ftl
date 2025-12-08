<#import "template.ftl" as layout>
<#import "passkeys.ftl" as passkeys>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        Sign in to ${realm.displayName!''}
    <#elseif section = "form">
        <div class="box-container">
        <#if realm.password>
            <div>
               <form id="kc-form-login" class="form" action="${url.loginAction}" method="post">
                    <div class="input-container">
                        <label for="username">Username</label>
                        <input id="username" class="login-field" placeholder="e.g. go42tum / example@tum.de" type="text" name="username" tabindex="1">
                    </div>
                    <div class="input-container">
                        <label for="password">Password</label>
                        <input id="password" class="login-field" placeholder="Password" type="password" name="password" tabindex="2">
                    </div>
                    <input class="submit" type="submit" value="Sign in" tabindex="3">
                </form>
                <div class="submit">
                    <@passkeys.conditionalUIData />
               </div>

                <div class="help-link">
                    <a href="https://www.it.tum.de/en/it/faq/account-login-tum-id-mwnid-tumcard/" 
                               target="_blank">Where can I find my TUM ID?</a>
                </div>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>
