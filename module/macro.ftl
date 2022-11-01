<#macro layout title>
<!DOCTYPE html>
<#--  <html lang="zh-CN" data-font="sans">  -->
<html lang="zh-CN">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
        <title>${title}</title>
        <meta name="keywords" content="${meta_keywords!}"/>
        <meta name="description" content="${meta_description!}" />
        <@global.head />
        <#if is_index??>
        <#--  加速样式表  -->
        <link rel="stylesheet" href="${theme_base!}/source/css/index.min.css"/>
        <#else>
        <#--  公共样式表  -->
        <link rel="stylesheet" href="${theme_base!}/source/plugins/normalize.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/plugins/animate.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/plugins/remixicon/remixicon.css"/>
        <#--  自定义样式表  -->
        <link rel="stylesheet" href="${theme_base!}/source/css/Redemption.css"/>
        </#if>
    </head>
    <body>
        <div class="container  animate__animated animate__fadeInDown">
            <#--  主体  -->
            <#nested >
            <#-- 脚注   -->
            <footer>
                <div class="copyright">
                    <a href="https://www.foreverblog.cn/" target="_blank" > 
                        <img src="${theme_base!}/source/images/logo_en_default.png" alt="" style="width:auto;height:1.25rem;"> 
                    </a>
                    <a href="https://halo.run">Designed by 7Wate . Proudly published with Halo</a>
                    <@global.footer />
                </div>
            </footer>
        </div>
    </body>
</html>
</#macro>

