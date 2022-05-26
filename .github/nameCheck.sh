branch_original_name=$1  #recieve name parameter
branchName=$(echo $branch_original_name | cut -d '/' -f 2)  #get branchName without feature/ string
branchNameUntil30Chars=${branchName:0:30} #trim name
heroku_name="bt-events-"$branchNameUntil30Chars
echo "CUSTOM_NAME=$heroku_name" >> $GITHUB_ENV