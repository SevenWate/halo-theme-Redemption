<#include "module/macro.ftl">
<@layout title="友情链接 - ${blog_title!}">
    <main>
        <#include "module/header.ftl">
        <div class="links">
            <ul>
                <div class="friend">
                    老友们
                </div>
                <@linkTag method="list">
                    <#list links as link>
                        <li id="${link.name!}"> 
                            <a href="${link.url!}" target="_blank">
                                ${link.name!} - 
                                <small>
                                    ${link.description!}
                                </small>
                            </a>
                        </li>
                    </#list>
                </@linkTag>
            </ul>
        </div>
    </main>
</@layout>
