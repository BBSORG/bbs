<#include "macro-head.ftl">
<#include "macro-list.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${symphonyLabel}">
        <meta name="description" content="${symDescriptionLabel}"/>
        </@head>
    </head>
    <body>
        <#include "header.ftl">
        <div class="main">
            <div class="wrapper">
                <div class='domains-count'>
                    Domains: <b>${domainCnt}</b><br/>
                    Tags: <b>${tagCnt}</b>
                </div>
                <div class="content fn-clear">
                    <#list domains as domain>
                    <div class="module">
                        <div class="module-header">
                            <h2>${domain.domainTitle}</h2>
                            <a class="ft-gray fn-right" rel="nofollow" href="${servePath}/domain/${domain.domainURI}">${domain.domainTags?size} Tags</a>
                        </div>
                        <div class="module-panel">
                            <ul class="tags fn-clear">
                                <#list domain.domainTags as tag>
                                <li>
                                    <a class="tag" rel="nofollow" href="${servePath}/tag/${tag.tagURI}">${tag.tagTitle}</a>
                                </li>
                                </#list>
                            </ul>
                        </div>
                    </div>
                    </#list>
                </div>
                <div class="side">
                    <#if ADLabel!="">
                    <div class="module">
                        <div class="module-header">
                            <h2>
                                ${sponsorLabel} 
                                <a href="https://hacpai.com/article/1460083956075" class="fn-right ft-13 ft-gray" target="_blank">${wantPutOnLabel}</a>
                            </h2>
                        </div>
                        <div class="module-panel ad fn-clear">
                            ${ADLabel}
                        </div>
                    </div>
                    </#if>
                    <div class="module">
                        <div class="module-header">
                            <h2>开源项目</h2>
                        </div>
                        <div class="module-panel">
                            <ul class="module-list open-source">
                                <li>
                                    <a target="_blank" href="https://github.com/xingdong015"><b class="ft-red slogan">【Git】</b></a>
                                    <a class="title" target="_blank" href="https://github.com/xingdong015">我的github</a>
                                </li>
                                <li>
                                    <a target="_blank" href="http://116.196.99.65:9000/archives"><b class="ft-blue slogan">【博客】</b></a>
                                    <a class="title" target="_blank" href="http://116.196.99.65:9000/archives">我的博客 </a>
                                </li>
                                <li class="last">
                                    <a target="_blank" href="https://chengzz.vip"> <b class="ft-green slogan">【空间】</b></a>
                                    <a class="title" target="_blank" href="https://chengzz.vip"> 我的空间</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <#include "footer.ftl">
        <@listScript/>
    </body>
</html>
