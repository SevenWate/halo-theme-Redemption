<#include "module/macro.ftl">
    <@layout title="${blog_title!}">
        <main>
            <#include "module/header.ftl">
            <#list posts.content as post>
                <div class="index">
                    <h1><a href='${post.fullPath!}'>${post.title!}</a></h1>
                        <#if settings.enable_summary!true>
                            <p>${post.summary!}......</p>
                        </#if>
                        <div class="info">
                            <span class="date">
                                <i class="ri-map-pin-time-line"></i>
                                <a href="${archives_url!}">${post.createTime?string('yyyy.MM.dd')}</a>
                            </span>
                        <#if post.tags?? && post.tags?size gt 0>
                            <span class="tag">
                                <i class="ri-bookmark-3-line"></i>
                                <#list post.tags as tag>
                                <a href="${tags_url!}">${tag.name!}</a>
                                </#list>
                            </span>
                        </#if>
                    </div>
                </div>
            </#list>
            <#if posts.totalPages gt 1>
                <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="10">
                    <div class="pagenav">
                    <#if pagination.hasPrev>
                        <a href="${pagination.prevPageFullPath!}" class="pre">
                            退回上页
                        </a>
                    </#if>
                    <#if pagination.hasNext>
                        <a href="${pagination.nextPageFullPath!}" class="next">
                            阅览更多
                        </a>
                    </#if>
                    </div>
                </@paginationTag>
            </#if>
        </main>
    </@layout>