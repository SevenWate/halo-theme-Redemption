<#macro layout title>
<!DOCTYPE html>
<html lang="zh">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
        <title>${title}</title>
        <meta name="keywords" content="${meta_keywords!}"/>
        <meta name="description" content="${meta_description!}" />
        <@global.head />


        <#--  公共样式表  -->
        <link rel="stylesheet" href="${theme_base!}/source/plugins/normalize.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/plugins/animate.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/plugins/remixicon/remixicon.css"/>
        <#--  <link rel="stylesheet" href="${theme_base!}/source/plugins/typo.css"/>  -->
        <#--  <link rel="stylesheet" href="${theme_base!}/source/plugins/han.css"/>  -->
        <link rel="stylesheet" href="//unpkg.com/heti/umd/heti.min.css">
        <link rel="stylesheet" href="${theme_base!}/source/css/color.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/css/markdown.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/css/redemption.css"/>

        


    </head>
    <body>
            <#--  菜单  -->
        <#include "menu.ftl">
        <div class="container animate__animated animate__fadeInDown">

        
        <#--  主体  -->
        <#nested >



        <#-- 脚注   -->
        <footer>
            <div class="copyright">
                <a href="https://zeuk.me">Designed by Zeuk,</a>
                <a href="https://halo.run">Proudly published with Halo</a>
            </div>
            <@global.footer />
        </footer>
            
        </div>
        <#--  公共JS代码  -->
        <script src="//unpkg.com/heti/umd/heti-addon.min.js"></script>
        <script>
        const heti = new Heti('.heti');
        heti.autoSpacing();
        </script>

    </body>

</html>
</#macro>

