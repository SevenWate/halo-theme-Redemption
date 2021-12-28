<#if posts.totalPages gt 1>
    <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
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