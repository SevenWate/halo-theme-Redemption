<#include "module/macro.ftl">
<@layout title="分类列表 - ${blog_title!}">
    <main>
        <#include "module/header.ftl">
        <div class="categories">
            <ul id="categories">
                <@categoryTag method="list">
                    <#if categories?? && categories?size gt 0>
                        <#list categories as category>
                        <li>
                            <a href="${category.fullPath!}">
                                ${category.name!} <span class="count">${category.postCount!0}</span>
                            </a>
                        </li>
                        </#list>
                    </#if>
                </@categoryTag>
            </ul>
        </div>
    </main>
</@layout>
