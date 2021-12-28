<#include "module/macro.ftl">
    <@layout title="${blog_title!}">
        <main>
            <#include "module/header.ftl">
            <#list posts.content as post>
                <div class="post">
                    <h1><a href='${post.fullPath!}'>${post.title!}</a></h1>
                        <#if settings.enable_summary!true>
                            <p>${post.summary!}......</p>
                        </#if>
                        <div class="info">
                            <span class="date">
                                <i class="ri-map-pin-time-line"></i>
                                <span>${post.createTime?string('yyyy.MM.dd')}</span>
                            </span>
                        <#if post.tags?? && post.tags?size gt 0>
                            <span class="tag">
                                <i class="ri-bookmark-3-line"></i>
                                <#list post.tags as tag>
                                <a href="${tag.fullPath!}">${tag.name!}</a>
                                </#list>
                            </span>
                        </#if>
                    </div>
                </div>
            </#list>
            
            <#include "module/pagination.ftl">
        </main>
    </@layout>