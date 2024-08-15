# Patch
**使用前请先观看[make_release_final.bat使用说明](https://github.com/daicx0904/ADOFAI_Mod_Patch/?tab=readme-ov-file#make_release_finalbat%E4%BD%BF%E7%94%A8%E8%AF%B4%E6%98%8E)**
本项目基于 [AdofaiModTemplate](https://github.com/PizzaLovers007/AdofaiModTemplate) 制作,为该模板的补丁

主要修复
1. `Make_release.bat` 中Linux指令和Windows cmd混用的bug
2. 给与基本的绘制GUI方法(TODO)

# make_release_final.bat使用说明
在模板目录下新建两个文本文件 分别为`ADOFAIPath.txt`与`MODNAME.txt`
`ADOFAIPath.txt`的内容为冰与火之舞安装目录(如 `C:\Steam\steamapps\common\A Dance of Fire and Ice` ) 不需要加引号及转义
`MODNAME.txt`的内容为mod的名称(如 `MyAdofaiMod` ) 同样不需要加任何东西
更改模板目录下的`VERSION.txt`为mod版本
双击运行`make_release_final.bat`
模板目录下会生成已经打包好的mod文件 同时最新版的mod也会同步安装至冰与火之舞

## 特别感谢
[SamXU1322 (B站主页)](https://space.bilibili.com/512479134)
