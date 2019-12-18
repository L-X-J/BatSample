
![](https://user-gold-cdn.xitu.io/2019/12/17/16f12d3cca62b3e4?w=961&h=478&f=png&s=46004)
# `@`符号
该符号标示不显示修饰命令的内容,如下所示
## 使用`@`符号
```dos
@ ping www.baidu.com >>test@out.txt
```
运行脚本

![](https://user-gold-cdn.xitu.io/2019/12/16/16f0c9b2ae63d8c4?w=977&h=211&f=png&s=5293)
并不显示任何输出。
## 不使用`@`符号
```dos
ping www.baidu.com >>test@out.txt
```
运行脚本
![](https://user-gold-cdn.xitu.io/2019/12/16/16f0c9cff24b6bb0?w=978&h=119&f=png&s=5168)
cmd终端中打印出了命令本身。

# `echo`命令
echo 命令有以下几种用法
- 回显开关
- 打印
- 编辑文本
## 回显开关
有两个状态，打开（on）、关闭（off），打开命令输出开关。示例代码如下：
```dos
echo on
dir >> on_dir.txt
echo off
dir >> off_dir.txt
dir >> off_dir2.txt
echo on 
dir >> on_dir2.txt
```
运行命令显示如下
![](https://user-gold-cdn.xitu.io/2019/12/16/16f0cc6cc327c80a?w=607&h=172&f=png&s=9280)

## 打印
示例代码
```dos
echo hello
```
显示结果

![](https://user-gold-cdn.xitu.io/2019/12/16/16f0d610d5845c8c?w=676&h=100&f=png&s=5958)

## 编辑文本
如下所示代码
```dos
echo nbtstat -A 192.168.0.1 >a.bat
echo nbtstat -A 192.168.0.2 >>a.bat
echo nbtstat -A 192.168.0.3 >>a.bat
```
以上代码执行完毕后，在当前目录会生成一个a.bat的文件，双击可直接运行。
#  `::`注释符号
就类似于java地`/*注释*/`。

# pause 命令
直译过来就是暂停的意思，主要就会为了暂停一下，看一下输出信息。

# `goto`和`:`命令
这是两个命令，但是经常组合到一起用，`:`命令类似锚点，`goto`就是跳转到对应锚点。如下代码：
```dos
@ echo off
echo 请输入
set /p o= 
if "%o%"== "1" (goto p1) else (goto p2)


: p1
echo this is p1
goto end

: p2
echo this is p2
goto end

:end
```
运行脚本后，输入1就会打印`this命令 is p1`,输入2就会打印`this is p2`。
如图所示

![](https://user-gold-cdn.xitu.io/2019/12/16/16f0d954feeb85c4?w=545&h=174&f=png&s=8803)

**注意：** `:`不能和高级语言的方法修饰符混为一谈

# `%`号作用

`%`号可以理解成取值，用法如下
```dos
@ echo off
set /p input=请输入姓名:
echo 你好%input%
```
运行脚本输入张三，显示如下

![](https://user-gold-cdn.xitu.io/2019/12/16/16f0e1227a7ec066?w=661&h=211&f=png&s=7684)

#  `if`的使用
基本使用语法如下
```dos
if 判断条件(
# 如果判断条件为true就走这里
)else(
# 如果判断条件为false就走这里
)
```
示例代码如下
```dos
@ ECHO OFF
SET/P INPUT=请输入您的年龄：
IF %INPUT% GTR 18 (
	ECHO 你成年了
) ELSE (
	ECHO 你未成年
)
```
其中的`GTR`表示大于。
示例代码运行结果如下：

![](https://user-gold-cdn.xitu.io/2019/12/16/16f0e23ff9aff30b?w=524&h=150&f=png&s=9245)
## 扩展一下数字比较关键字
- `EQU` 等于
- `NEQ` 不等于
- `LSS` 小于
- `LEQ` 小于等于
- `GTR` 大于
- `GEQ` 大于等于
## 扩展一下其他比较关键字
- `EXIST` 判断某个文件夹或文件是否存在
- `==` 判断两个字符是否相等
- `NOT`可以理解成取反，比如`IF NOT 1==1`,意思是1不等于1的。

# `CALL`命令
调用其他bat脚本。例如有a.bat、b.bat、c.bat三个bat脚本。我想在c.bat中使用a.bat脚本，可以这样去调用，如下：
```dos
CALL a.bat
```
# `FOR`命令
还不会


