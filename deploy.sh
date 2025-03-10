#deploy.sh
#!/usr/bin/env sh

# 當發生錯誤時終止腳本運行
set -e

echo "Run deploy.sh"
# 打包
yarn build

# 移動至到打包後的dist目錄 
cd dist

echo "Initialize git repository"
git init #因為dist資料夾預設是被ignore的，因此在進入dist資料夾後初始化git
git branch -m gh-pages

git config --local user.email "black00731@gmail.com"
git config --local user.name "BlaChalk"

export GIT_COMMITTER_NAME="BlaChalk"
export GIT_COMMITTER_EMAIL="black00731@gmail.com"
export GIT_AUTHOR_NAME="BlaChalk"
export GIT_AUTHOR_EMAIL="black00731@gmail.com"

echo "Commit deploy"
git add -A
git commit -m 'deploy'

echo "Push to Github"
# 部署到 https://github.com/BlaChalk/WeatherForecast.git 分支為 gh-pages
git push -f https://https://x-access-token:${PUSH_TOKEN}github.com/BlaChalk/WeatherForecast.git gh-pages
#將dist資料夾中的內容推送至遠端的gh-pages分支中，並強制無條件將舊有的內容取代成目前的內容（指令 git push -f)

echo "Deploy Successfully!"

cd ..