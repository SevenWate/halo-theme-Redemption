<#include "module/macro.ftl">
<@layout title="归档 - ${blog_title!}">
    <main>
        <#include "module/header.ftl">
        <div class="archives">
            <#list archives as archive>
                <div class="year">${archive.year?c}</div>
                <div class="list">
                    <#list archive.posts?sort_by("createTime")?reverse as post>
                        <div class="title">
                            <a href="${post.fullPath!}">${post.title!}</a>
                            <div class="time"><span class="date">${post.createTime?string('MM-dd')}</span></div>
                        </div>
                    </#list>
                </div>
            </#list>
        </div>
        <#include "module/pagination.ftl">
    </main>
</@layout>
