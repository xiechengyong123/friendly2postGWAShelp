# friendly2postGWAShelp

## 简介：

friendly2postGWAShelp是一个R包，专门用来辅助安装friendly2postGWAS包。

## 安装和加载：

```R
if (!requireNamespace("remotes", quietly = TRUE))install.packages("remotes")
if (!requireNamespace("friendly2postGWAShelp", quietly = TRUE))remotes::install_github("xiechengyong123/friendly2postGWAShelp")
library(friendly2postGWAShelp)
```

## 函数功能：

| 函数                        | 功能                                                  |
| :-------------------------- | :---------------------------------------------------- |
| chat_with_me                | friendly2postGWAS包作者的联系方式                     |
| install_postGWAS_dependence | 安装friendly2postGWAS的相关依赖                       |
| install_postGWAS_R          | 安装friendly2postGWAS包                               |
| postGWAS_update_plans       | friendly2postGWAS包的后续更新计划                     |
| show_demo_gwas              | friendly2postGWAS包中作为输入文件的GWAS数据格式和表头 |

## 欢迎联系交流：

微信：shengxinxiedaoren
