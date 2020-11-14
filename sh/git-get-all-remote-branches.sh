# Source: https://stackoverflow.com/questions/40310932/git-hub-clone-all-branches-at-once/42172410

for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master`; do
   git branch --track ${branch#remotes/origin/} ${branch}
done

