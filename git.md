```sh  
git init  
git status  
git add . #add file to be commited  
git commit -a  
  
git revert [jmeno commitu/ hash/ HEAD]  
git reset #revert last change  
  
vi  
i - text mod  
esc  
:wq  
  
git branch #list of brances, actual branch with *  
git branch [name] #create  
git checkout [name] [-w instantni prechod] #zmena vetve  
git merge [name] #merge branches  
  
git log [--oneline]//historie  
gitk #gui history  
  
git diff --- #changes in commit since last change  
  
git show -commit- //info  
  
git clone --- #download repo  
git remote add origin https://github.com/user/repo.git  
# Set a new remote  
git remote -v  
# Verify new remote  
origin  https://github.com/user/repo.git (fetch)  
origin  https://github.com/user/repo.git (push)  
  
git push origin master  
# Pushes the changes in your local repository up to the remote repository you specified as the origin  
  
  git config --global user.email "you@example.com"  
  git config --global user.name "Your Name"  
git checkout -- . # revert all uncommited changes  
git checkout -- <path> # revert concrete uncommited change  
  
git reset --soft HEAD~1 #remove last commit

#pretty print of commits
git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
git log -n 5 # show last 5 commits
git log --name-status HEAD^..HEAD # show last commit
git show --stat # show last commit
git log -5 --stat # show last 5 commits with details


```
