This repo is created using .sh script. This is for experimenting git commands

**Follow the steps below**

### Execute with chmod +x <filename.sh>

### Step 1 : Local project folder path
echo "What is your local project path?"
read PROJECT_PATH
### Step 4 : Go to project path
cd ${PROJECT_PATH}
### Step 5 : initialize the repo locally, add file
git init
touch README.md
git add README.md
### Step 6 : Commit the file
git commit -m "initial commit -setup with .sh script"
### Step 7 : Get the remote repo name
echo "What is your repo name?"
read REPO_NAME
### Step 8 : Get the remote repo description
echo "What is your repo decription name?"
read DESCRIPTION
### Step 9 : Get the username
echo "What is your username?"
read USERNAME
### Step 10: Create a remote repo by API
curl -u ${USERNAME} https://api.github.com/user/repos -d "{\"name\":\"${REPO_NAME}\", \"description\":\"${DESCRIPTION}\"}"
### Step 11 : Push the files to remote repo
git remote add origin https://github.com/${USERNAME}/${REPO_NAME}.git
git push --set-upstream origin master
### step 12 Change to your project's root directory.
cd "$PROJECT_PATH"
### Step 13 : Now you can check the repo
echo "Done. Go to https://github.com/$USERNAME/$REPO_NAME to see." 
echo " *** You're now in your project root. Thank you ***"

