 |--cache_verify/        目录，Cache模块级验证环境。
 |  |--rtl/              目录，包含Cache模块以及验证顶层的设计源码。
 |  |  |--cache_top.v    Cache模块级验证的顶层文件。
 |  |  |--cache.v        Cache模块的实现文件。
 |  |--testbench/        目录，包含功能仿真验证源码。
 |  |  |--testbench.v    仿真顶层。
 |  |--run_vivado/       Vivado工程的运行目录。
 |  |  |--constraints/   Vivado工程的设计约束。
 |  |  |--cache_prj/     Vivado工程文件所在目录。

本实验环境中推荐使用tcl创建Vivado工程，下面介绍一种利用tcl创建Vivado工程的步骤：
步骤1：启动Vivado后，如图D.8所示点击最下方的“Tcl Console”标签。
步骤2：在打开的Tcl Console中输入命令，cd 到待使用 create_project.tcl 文件所在目录
步骤3：继续在Tcl Console中输入命令“source ./create_project.tcl”。接下来Vivado将根据create_project.tcl的内容创建工程。

本实验开发环境是在Vivado 2019.2中创建的，如果使用更高版本的Vivado打开，需要对IP核进行升级。注意：Vivado不支持向前兼容，也就是低版本Vivado无法使用高版本Vivado创建的工程和IP核，若您遇到这种情况，请升级Vivado的版本。
高版本Vivado打开低版本的工程，升级IP核的方法如下：
在Sources窗口中找到要升级的IP，右键后点击“Upgrade IP…”


在配置好实验环境后，请参考下列步骤完成本实践任务：
1. 利用该目录下的 create_project.tcl 文件创建工程。如需要，请进行IP核升级。
2. 完成Cache模块的设计和RTL编写，记为cache.v，该模块名需要命名为“cache”，除时钟输入clk和低电平有效复位输入resetn以外的输入/输出端口参见如下定义。Cache模块的设计规格要求：2路组相连，每路大小4KB，LRU或伪随机替换算法，推荐硬件初始化。将cache.v文件放入 rtl 目录下。
3. 在验证Cache模块的工程中运行仿真（进入仿真界面后，直接点击run all），进行功能验证与调试，直至仿真测试通过。
4. 在验证Cache模块的工程中综合实现后生成bit流文件，进行上板验证。