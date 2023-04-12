#' 安装friendly2postGWAS的相关依赖
#'
#' @export install_postGWAS_dependence
#' @return  安装friendly2postGWAS的相关依赖包
#' @examples    install_postGWAS_dependence()
install_postGWAS_dependence=function(){
    #列出可以CRAN安装的R包
    packages <- c("devtools", "remotes", "data.table", "do", "dplyr","tidyr","stringr","BiocManager", "epigraphdb")

    #循环安装CRAN库的R包
    for (i in 1:length(packages)) {
        if (!packages[i] %in% installed.packages()[,"Package"]) {
        install.packages(packages[i], dependencies = TRUE, quiet = TRUE, keep_outputs=TRUE)
        }
    }

    #从github上下载R包
    if (!"ieugwasr" %in% installed.packages()[,"Package"]) {
        devtools::install_github("mrcieu/ieugwasr",upgrade=c("never"), quiet=TRUE)
    }
    if (!"TwoSampleMR" %in% installed.packages()[,"Package"]) {
        devtools::install_github("MRCIEU/TwoSampleMR",upgrade=c("never"), quiet=TRUE)
    }

    if (!"phenoscanner" %in% installed.packages()[,"Package"]) {
        devtools::install_github("phenoscanner/phenoscanner",upgrade=c("never"), quiet=TRUE)
    }

    if (!"plinkbinr" %in% installed.packages()[,"Package"]) {
    devtools::install_github("explodecomputer/plinkbinr",upgrade=c("never"), quiet=TRUE)
    }

    if (!"gwasglue" %in% installed.packages()[,"Package"]) {
        devtools::install_github("mrcieu/gwasglue",upgrade=c("never"), quiet=TRUE)
    }

    if (!"gwasvcf" %in% installed.packages()[,"Package"]) {
        devtools::install_github("MRCIEU/gwasvcf",upgrade=c("never"), quiet=TRUE)
    }

    #从BiocManager安装VariantAnnotation
    if (!"VariantAnnotation" %in% installed.packages()[,"Package"]) {
        BiocManager::install( "VariantAnnotation")
    }
}



#' 安装friendly2postGWAS包
#'
#' @export
#' @return  安装好friendly2postGWAS包
#' @examples    install_postGWAS_R()
install_postGWAS_R=function(){ 
    
}



#' friendly2postGWAS包的后续更新计划
#'
#' @export
#' @return  列出后续的friendly2postGWAS更新计划
#' @examples    postGWAS_update_plans()
postGWAS_update_plans=function(){
    message("模块：特色功能:")
    message("\t1. 支持查看本地和IEU数据库中的gwasvcf文件，并可转换为TwosampleMR格式的文件（gwasvcf2TwosampleMR）")
    message("\t2. 支持多个GWAS数据的meta分析")
    message("\t3. 支持孟德尔随机化分析结果的meta分析")
    message("\t4. 支持多种TwoSampleMR分析方法")
    message("\t5. 支持MR-PRESSO检查水平多效性结果输出")
    message("\t6. 支持查找工具变量相关的混杂因素")
    message("\t7. 支持计算单个SNP的R2和F值")
    message("\t8. 支持计算总的R2和F值")
    message("\t9. 支持查询一个暴露对多个结局的初筛阳性结果")
    message("\t10. 支持查询多个暴露对一个结局的初筛阳性结果")
    message("\t11.支持本地进行clump")
    message("\t12. 支持补齐本地数据中缺失的chr pos (染色体号 位点位置)")
    message("\t13. 支持补齐数据中缺失的eaf (效应基因频率)")
    message("\t14. 支持power的计算")
    message("\t15. 支持GWAS数据中SNP进行不同版本iftOver位置转换")
    message("\t16. 支持增加了每一个步骤的数据检查")
    message("\t17. 支持检索gene基因的信息（gene、ensembl_id、chr、start、end）")
    message("\t18. 支持检索SNP的信息")
    message("\t19. 支持ukbb中的GWAS数据的注释（chrpos2rsID）")
    message("\t20. 支持FinnGen数据库中的数据处理")
    message("\t21. 支持单变量孟德尔随机化（TwoSampleMR）结果中森林图的重新绘制")
    message("\t22. 支持单变量孟德尔随机化（TwoSampleMR）结果中散点图的重新绘制")
    message("\t23. 支持单变量孟德尔随机化（TwoSampleMR）结果中漏斗图的重新绘制")
    message("\t24. 支持单变量孟德尔随机化（TwoSampleMR）结果中留一法图的重新绘制")
    message("\t25. 支持单变量孟德尔随机化（TwoSampleMR）分析结果（OR/beta）的绘制")
    message("\t26. 增加chr pos_start pos_end eaf_thershol gene build_version   用于更为严格的挑选snp数据(可以用于药物靶点的mr分析) ")
    message("模块：双样本单变量的MR分析（一键生成）")
    message("模块：双样本多变量的MR分析（一键生成）")
    message("模块：双向因果效应（一键生成）")
    message("模块：中介MR（一键生成）")
    message("模块：共定位")
    message("模块：计算PRS")
    message("模块：GSMR分析功能")
    message("模块：药物靶点的孟德尔分析（SMR）")
    message("模块：SMR结合QTL分析")
    message("模块：添加TWAS（FUSION）分析功能")
    message("其他可根据用户反馈意见进行增删")
}


#' friendly2postGWAS包中作为输入文件的GWAS数据格式和表头
#' @export
#' @return  输入文件的GWAS数据格式和表头
#' @examples    show_demo_gwas()
show_demo_gwas=function(){
    #列出示例文件的位置
    filename=system.file("data","demo.RData",package = "friendly2postGWAShelp")
    #读入示例数据
    load(filename)
    #显示示例文件表头和前六行
    head(demo)
}


#' friendly2postGWAS包作者的联系方式
#' @export
#' @return  输入文件的GWAS数据格式和表头
#' @examples    chat_with_me()
chat_with_me=function(){
    message("====================分割线==========================")
    message(tmcn::toUTF8("感谢您使用friendly2postGWAS\n想要获得完整包的体验请您联系我！"))
    message("如果您有关于该包的任何意见和建议请毫不犹豫的联系我！")
    message("1.邮箱：", "xiechengyong@yeah.net")
    message("2.b站：", "https://space.bilibili.com/397473016?spm_id_from=..0.0")
    message("3.微信号：", "shengxinxiedaoren")
    message("4.公众号：", "生信蟹道人")
    message("5.简书：","生信蟹道人")
    message("====================分割线==========================")
}

