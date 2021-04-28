#! /bin/bash
# path= $1
# files= $2
# url= $3
# cd ${path}
# echo "git init" 
# git init
# git remote add origin ${origin}
# git status
# echo ${files} >> ".gitignore"
# git add .
# git commit -m ${commitmes}
git pull origin main --allow-unrelated-histories
git branch -m main
git push origin main