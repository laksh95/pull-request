ref=$(git symbolic-ref --short -q HEAD)
repo=`git config --get remote.origin.url | sed "s/git@github.com://" | sed "s/\.git//"`
echo opening pull request for $ref on $repo
branch=""
if [ $1 ]; then
	branch="$1...$ref"
else
	branch="develop...$ref"
fi
echo $branch 
open http://github.com/$repo/compare/$branch
