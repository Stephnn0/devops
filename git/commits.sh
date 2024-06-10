// ============================================ MERGE 

# Checkout your branch
git checkout your-branch

# Fetch the latest changes from the remote repository
git fetch origin staging

# Merge the staging branch into your branch
git merge origin/staging



// ============================================ REBASE 

# Checkout your branch
git checkout your-branch

# Fetch the latest changes from the remote repository
git fetch origin staging

# Rebase your branch onto the latest staging branch
git rebase origin/staging

# ==================== After resolving conflicts
git rebase --continue


// ============================================= PULL 

# Checkout your branch
git checkout your-branch

# Pull the latest changes from the staging branch and merge them into your branch
git pull origin staging
