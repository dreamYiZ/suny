#!/usr/bin/env bash


# 创建一个新的分支
git checkout --orphan newBranchNeverUse

# 添加所有文件到新的分支
git add -A

# 提交更改
git commit -am "Initial commit"

# 删除旧的主分支
git branch -D main

# 将新的分支重命名为主分支
git branch -m main

# 强制更新你的远程仓库
git push -f origin main