#!/bin/bash

echo -e "\033[32m <<<<<<<<<\n正在拉取远程代码...\n>>>>>>>>> \033[0m"
git pull

echo -e "\033[32m <<<<<<<<<\n正在添加文件...\n>>>>>>>>> \033[0m"
git add .

git commit -am "提交token"

echo -e "\033[32m <<<<<<<<<\n正在提交代码...\n>>>>>>>>> \033[0m"
git push

git checkout main
git pull

# echo -e "\033[32m <<<<<<<<<\n合并dev代码中...\n>>>>>>>>> \033[0m"
# git merge dev

echo -e "\033[32m <<<<<<<<<\n推送成功,等待构建...\n>>>>>>>>> \033[0m"
git push

# git checkout dev

exit
