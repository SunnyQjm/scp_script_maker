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

cat << EOF >> ${target_dir}${fileName}
if [ \$# = 3 ]; then
    if [ \$1 = "-r" ]; then
        mscp -h ${host} -s \$2 -d \$3 -n ${username} -r
    elif [ \$2 = "-r" ]; then
        mscp -h ${host} -s \$1 -d \$3 -n ${username} -r
    else
        mscp -h ${host} -s \$1 -d \$2 -n ${username} -r
    fi
elif [ \$# = 2 ]; then
    mscp -h ${host} -s \$1 -d \$2 -n ${username} 
else
    echo "wrong arguments"
fi
EOF

chmod +x ${target_dir}${fileName}
