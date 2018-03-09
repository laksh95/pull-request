ref=$(git symbolic-ref HEAD | cut -d'/' -f3)
echo opening pull request for $ref
branch=""
if [ $1 ]; then
	branch="$1...$ref"
else
	branch="develop...$ref"
fi
echo $branch
open -a /Applications/Firefox\ 2.app http://github.com/springrole/attestation-system/compare/$branch?expand=1
