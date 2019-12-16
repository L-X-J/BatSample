# `@`符号
该符号标示不显示修饰命令的内容,如下所示
## 使用`@`符号
```bat
@ ping www.baidu.com >>test@out.txt
```
运行脚本

![](https://user-gold-cdn.xitu.io/2019/12/16/16f0c9b2ae63d8c4?w=977&h=211&f=png&s=5293)
并不显示任何输出。
## 不使用`@`符号
```
ping www.baidu.com >>test@out.txt
```
运行脚本
![](https://user-gold-cdn.xitu.io/2019/12/16/16f0c9cff24b6bb0?w=978&h=119&f=png&s=5168)
cmd终端中打印出了命令本身。
