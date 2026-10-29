[200~# Git Commands Used

| Command | Purpose |
|---|---|
| git init -b main | Create a new repository with the main branch |
| git add FILE | Stage a file for the next commit |
| git commit -m "message" | Save the staged changes with a message |
| git status | Show changed, staged and untracked files |
| git log --oneline --graph --all | Show commit history across all branches |
| git switch -c NAME | Create a new branch and move to it |
| git switch NAME | Move to an existing branch |
| git merge NAME | Bring another branch into the current branch |
| git remote add origin URL | Link the local repository to GitHub |
| git remote -v | Show the linked remote URL |
| git push -u origin BRANCH | Upload a branch to GitHub |
| git pull origin main | Download and update the local main branch |
| git branch -d NAME | Delete a merged local branch |
| git branch -vv | Show branches and which remote branch they track |

## Merge conflict (Exercise 3)

In exercise-03, I made the first branch change mode.txt to "Lab mode: classroom".
A second branch (feature/mode-online) changed the same line to "Lab mode: online".
When I ran git merge feature/mode-online, Git stopped and showed a conflict in
exercise-03/mode.txt. The file had the markers <<<<<<<, ======= and >>>>>>>
around the two versions. I saved this view in conflict-markers.txt.

To resolve it, I removed the markers and wrote one agreed line, "Lab mode: hybrid".
Then I ran git add and git commit to finish the merge, and opened pull request #6.
## More commands used

| Command | Purpose |
|---|---|
| git config user.name "NAME" | Set the commit author name for one repository |
| git diff / git diff --staged / git diff HEAD | Compare unstaged, staged and all changes |
| git check-ignore -v FILE | Show which .gitignore rule ignores a file |
| git restore --staged FILE | Unstage a file but keep the edit |
| git restore FILE | Discard an unstaged edit |
| git revert --no-edit HEAD | Undo the last commit with a new commit |
| git stash push / git stash pop | Save unfinished work aside and bring it back |
| git clone URL | Copy a remote repository to the computer |
| git fetch origin | Download remote changes without merging |
| git pull --ff-only origin main | Update main only by fast-forward |
| git merge --no-ff NAME | Merge with a visible merge commit |
| git reset --hard origin/main | Make local main match GitHub (used once to undo a local amend) |
| git tag -a v1.0 -m "msg" | Create an annotated release tag |
| git push origin v1.0 | Publish a tag to GitHub |

## Push rejection (Exercise 19)

In a disposable repository, two clones each made their own commit. The push from the second clone was rejected because the remote had commits that clone did not have. I fetched, merged with --allow-unrelated-histories (both clones started from different first commits), resolved the add/add conflict in shared.txt by keeping both lines, and pushed without force.
EOf
