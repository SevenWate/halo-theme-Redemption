<#include "module/macro.ftl">
<@layout title="${sheet.title!} - ${blog_title!}">
    <main>
        <div class="post">
            <div class="title">
                <h1>
                    <a href='${sheet.fullPath!}'>${sheet.title!}</a>
                </h1>
                <div class="info">
                    <span>
                        <i class="ri-quill-pen-line"></i>
                        ${user.nickname!}
                        <#assign timeago = (.now?long - post.createTime?long)>

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
                    </span>
                    <span>
                    <i class="ri-article-line"></i>
                        共 ${post.wordCount!} 字、阅读约 
                        <#if (post.wordCount! / 300)?int == 0>
                            1
                        <#else>
                            ${(post.wordCount! / 300)?int}
                        </#if>
                        分钟
                    </span>
                </div>
            </div>
            <div class="heti">
                ${sheet.formatContent!}
            </div>
        </div>
        <div class="commentButton">
            <a href="${blog_url!}">
                退回首页
            </a>
            <a href="">
                留下一言
            </a>
        </div>
    </main>
    <#include "module/comment.ftl">
    <@comment post=sheet type="sheet" />
</@layout>
