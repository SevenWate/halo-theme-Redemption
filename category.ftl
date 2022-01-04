<#include "module/macro.ftl">
<@layout title="分类 - ${category.name} - ${blog_title!}">
    <main>
        <#include "module/header.ftl">
        <div class="category">
            <ul id="${category.slug}">
                <div class="name">${category.name}</div>
                <#list posts.content as post>
                    <li>
                        <a href="${post.fullPath!}">${post.title!}</a>
                        <span>${post.createTime?string('yyyy-MM-dd')}</span>
                    </li>
                </#list>     
            </ul>
        </div>
            <#if posts.totalPages gt 1>
                <@paginationTag method="categoryPosts" page="${posts.number}" total="${posts.totalPages}" display="3">
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
