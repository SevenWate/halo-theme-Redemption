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
                        <div class="option">

                        <i class="ri-thumb-up-line"></i>
                        <i class="ri-chat-3-line"></i>
                        <i class="ri-share-forward-line"></i>

                        </div>
                        <#--  <div class="info">
                        ${user.nickname!}
                        <#assign timeago = (.now?long - journal.createTime?long)>
                        <#if timeago < 60000 >
                            刚刚发表哦 ~
                        <#elseif (timeago >= 60000) && (timeago < 3600000)>
                            发表于 ${(timeago / 60000)?int} 分钟前
                        <#elseif (timeago >= 3600000) && (timeago < 86400000)>
                            发表于 ${(timeago / 3600000)?int} 小时前
                        <#elseif (timeago >= 86400000) && (timeago < 604800000)>
                            发表于 ${(timeago / 86400000)?int} 天前
                        <#elseif (timeago >= 604800000) && (timeago < 3153600000)>
                            发表于 ${(timeago / 604800000)?int} 周前
                        <#elseif (timeago >= 3153600000) && (timeago < 94608000000)>
                            发表于 ${(timeago / 3153600000)?int} 年前
                        <#elseif (timeago >= 94608000000)>
                            发表于很久很久以前 ~
                        </#if>
                            
                        </div>  -->
                    
                    </li>
                </#list>
                </ul>
            </div>

            <#if journals.totalPages gt 1>
                <@paginationTag method="journals" page="${journals.number}" total="${journals.totalPages}" display="1">
                    <div class="pagenav">
                    <#if pagination.hasPrev>
                        <a href="${pagination.prevPageFullPath!}" class="pre">
                            返回上页
                        </a>
                    </#if>
                    <#if pagination.hasNext>
                        <a href="${pagination.nextPageFullPath!}" class="next">
                            更多日志
                        </a>
                    </#if>
                    </div>
                </@paginationTag>
            </#if>
        </main>
    </@layout>