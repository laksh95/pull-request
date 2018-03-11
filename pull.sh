ref=$(git symbolic-ref HEAD | cut -d'/' -f3)
repo=`git config --get remote.origin.url | sed "s/git@github.com://" | sed "s/\.git//"`
echo opening pull request for $ref on $repo
branch=""
if [ $1 ]; then
	branch="$1...$ref"
else
	branch="develop...$ref"
fi
echo $branch
echo $repo
#open -a /Applications/Firefox\ 2.app http://github.com/$repo/compare/$branch?expand=1
open -a /Applications/Google\ Chrome.app http://github.com/$repo/compare/$branch?expand=1 
