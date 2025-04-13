#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
# change a commit comment
# git commit --amend -m "more info"
# git push --force origin
git add --all .

# Give a comment to the commit if you want
#echo "####################################"
#echo "Write your commit comment!"
#echo "####################################"

input="update"

# Committing to the local repository with a message containing the time details and commit text

git commit -m "$input"

# Push the local files to github

git push origin main


echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"