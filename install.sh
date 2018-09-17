#!/bin/bash

target_dir=${HOME}"/.local/bin/"
echo $target_dir

echo -n "host: "
read host
echo -n "username: "
read username
echo -n "script name: "
read fileName

touch ${target_dir}${fileName}
# 先将mscp函数输出
cat ./mscp > ${target_dir}${fileName}

# 再输出函数调用
echo "mscp -h ${host} -s \$1 -d \$2 -n ${username}" >> ${target_dir}${fileName}

chmod +x ${target_dir}${fileName}
