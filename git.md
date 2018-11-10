```sh
git init
git status
git add . #pro nový soubor
git commit -a

git revert [jmeno commitu/ hash/ HEAD]
git reset #poslední zmìna

vi
i - text mod
esc
:wq

git branch #list - aktualni s *
git branch [name] #create
git checkout [name] [-w instantni prechod] #zmena vetve
git merge [name] #spoji vetve

git log [--oneline]//historie
gitk #gui historie

git diff --- #zeny v souboru od posledniho commitu

git show -commit- //info

git clone --- #stahne repo

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
