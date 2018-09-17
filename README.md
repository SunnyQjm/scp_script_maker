> ## 介绍

这是一个scp脚本制作器，制作的脚本会被放在 `~/.local/bin` 目录下，制作成功之后当前用户可访问该脚本。这个生成的脚本功能简单，只是对linux自带的 `scp` 命令做了一层封装，使得使用的时候不用反复输入对端IP和用户名

> ## 使用

``` bash
# 先拉取安装器
git clone https://github.com/SunnyQjm/scp_script_maker.git
cd scp_script_maker
./install
```
