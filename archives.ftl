<#include "module/macro.ftl">
<@layout title="归档 - ${blog_title!}">
    <main>
        <#include "module/header.ftl">
        <div class="archives">
            <#list archives as archive>
                <ul id="${archive.year?c}">
                    <div class="year">
                        ${archive.year?c}
                    </div>
                    <#list archive.posts?sort_by("createTime")?reverse as post>
                        <li id="${post.createTime?string('MM-dd')}">
                            <a href="${post.fullPath!}">${post.title!}</a>
                            <span>${post.createTime?string('MM-dd')}</span>
                        </li>
                    </#list>
                </ul>
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
