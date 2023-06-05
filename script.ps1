

git config --global user.name "edwinkullu"
git config --global user.email "edwinkullu94@gmail.com"

$repoPath = "C:\WebApp"
$commitMessage = ".Net web application "
$branchName = "main"  # Replace with your desired branch name




# Change directory to the repository path
Set-Location -Path $repoPath

# Stage all changes
git add .

# Commit the changes with the specified commit message
git commit -m $commitMessage

# Push the changes to the remote repository

git push origin $branchName
