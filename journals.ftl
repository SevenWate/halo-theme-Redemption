<#include "module/macro.ftl">
    <@layout title="日志 - ${blog_title!}">
        <main>
            <#include "module/header.ftl">
            <div class="journals">
                <div class="name">
                    日志
                </div>
                <ul>
                <#list journals.content as journal>
                    <li id="${journal.id!}">
                        <div class="content">
                            ${journal.content!}
                        </div>
                        <div class="info">
                        <#--  ${user.nickname!}  -->
                        <#assign timeago = (.now?long - journal.createTime?long)>
                        <#if timeago < 60000 >
                            刚刚发表哦 ~
                        <#elseif (timeago >= 60000) && (timeago < 3600000)>
                            于 ${(timeago / 60000)?int} 分钟前发表
                        <#elseif (timeago >= 3600000) && (timeago < 86400000)>
                            于 ${(timeago / 3600000)?int} 小时前发表
                        <#elseif (timeago >= 86400000) && (timeago < 604800000)>
                            于 ${(timeago / 86400000)?int} 天前发表
                        <#elseif (timeago >= 604800000) && (timeago < 3153600000)>
                            于 ${(timeago / 604800000)?int} 周前发表
                        <#elseif (timeago >= 3153600000) && (timeago < 94608000000)>
                            于 ${(timeago / 3153600000)?int} 月前发表
                        <#elseif (timeago >= 94608000000)>
                            发表于很久很久以前 ~
                        </#if>
                            
                        </div>
                    
                    </li>
                </#list>
                </ul>
            </div>

            <#if journals.totalPages gt 1>
                <@paginationTag method="journals" page="${journals.number}" total="${journals.totalPages}" display="1">
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