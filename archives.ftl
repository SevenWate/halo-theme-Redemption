<#include "module/macro.ftl">
<@layout title="归档 - ${blog_title!}">
    <main>
        <#include "module/header.ftl">
        <div class="archives">
            <#list archives as archive>
                <div class="title">${archive.year?c}</div>
                <div class="list">
                    <#list archive.posts?sort_by("createTime")?reverse as post>
                        <div class="post-title">
                            <a href="${post.fullPath!}">${post.title!}</a>
                            <div class="time"><span class="date">${post.createTime?string('MM-dd')}</span></div>
                        </div>
                    </#list>
                </div>
            </#list>
        </div>
            <#if posts.totalPages gt 1>
                <@paginationTag method="archives" page="${posts.number}" total="${posts.totalPages}" display="3">
                    <div class="pagenav">
                    <#if pagination.hasPrev>
                        <a href="${pagination.prevPageFullPath!}" class="pre">
                            返回上页
                        </a>
                    </#if>
                    <#if pagination.hasNext>
                        <a href="${pagination.nextPageFullPath!}" class="next">
                            更多文章
                        </a>
                    </#if>
                    </div>
                </@paginationTag>
            </#if>
    </main>
</@layout>
