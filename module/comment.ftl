<#macro comment target,type>
    <#if !post.disallowComment!false>
    <div id="comment" class="comment close">
        <script src="${theme_base!}/source/plugins/comment/vue.min.js"></script>
        <script src="${theme_base!}/source/plugins/comment/halo-comment.min.js"></script>
        <script src="${options.comment_internal_plugin_js!'//cdn.jsdelivr.net/gh/halo-dev/halo-comment@latest/dist/halo-comment.min.js'}"></script>
        <halo-comment id="${target.id?c}" type="${type}""/>
    </div>
    </#if>
</#macro>
