# Set the repository information
$branchName = "main"
$commitMessage = "Update new files"
$filePath = "C:\WebApp"

# Set the authentication token (optional if the repository is public)
$authToken = ""

# Set the Git remote URL
$remoteUrl = "https://github.com/edwinkullu/WebApp.git"

# Configure Git user
git config --global user.name "edwin kullu"
git config --global user.email "edwinkullu94@gmail.com"

# Stage the changes
git add $filePath

# Commit the changes
git commit -m $commitMessage

# Push the changes to the remote repository
if ($authToken) {
    $remoteUrl = $remoteUrl -replace "^https://", "https://$($authToken)@"
}
git push $remoteUrl $branchName
