<#include "module/macro.ftl">
<@layout title="标签列表 - ${blog_title!}">
    <main>
        <#include "module/header.ftl">
        <div class="tags">
            <ul id="tags">
                <@tagTag method="list">
                    <#if tags?? && tags?size gt 0>
                        <#list tags as tag>
                            <li>
                                <a href="${tag.fullPath!}">
                                    ${tag.name} <span class="count">${tag.postCount!0}</span>
                                </a>
                            </li>
                        </#list>
                    </#if>
                </@tagTag>
            </ul>
        </div>
    </main>
</@layout>
