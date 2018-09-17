> ## 介绍

这是一个scp脚本制作器，制作的脚本会被放在 `~/.local/bin` 目录下，制作成功之后当前用户可访问该脚本。这个生成的脚本功能简单，只是对linux自带的 `scp` 命令做了一层封装，使得使用的时候不用反复输入对端IP和用户名

> ## 使用

``` bash
# 先拉取安装器
git clone https://github.com/SunnyQjm/scp_script_maker.git
# 进入安装器根目录
cd scp_script_maker
# 执行安装器
./install
```
![安装器运行界面](https://raw.githubusercontent.com/SunnyQjm/scp_script_maker/master/pic1.png)

**按上图所示分别输入对端IP（host），登陆用户名（username），生成的脚本的名字（script name）**

> ## Example

假设我们的输入如下
``` bash
host: 123.234.345.456
username: ubuntu
script name: test_script
```

则安装器执行完毕之后，当前用户就得到一个新的命令 `test_script`，用法如下：
``` bash
test_script [src] [dest]
```

举个栗子：
``` bash
test_script ./test.c "~"
```

等效与执行下面的 `scp` 命令
``` bash
scp ./test.c ubuntu@123.234.345.456:~
```
