## Tracking Changes Reflection

- How does tracking and adding changes make developers' lives easier?
- What is a commit?
- What are the best practices for commit messages?
- What does the HEAD^ argument mean?
- What are the 3 stages of a git change and how do you move a file from one stage to the other?
- Write a handy cheatsheet of the commands you need to commit your changes?
- What is a pull request and how do you create and merge one?
- Why are pull requests preferred when working with teams?

<!-- Add your reflection here. Remove the comment markers -->

Tracking and adding changes make developers' lives easier because each commit gives them a save point to go back to if sometime down the line they discover that they took a wrong turn. It saves having to go back all the way to the beginning and starting over. A commit is a snapshot of their work, a saved version as they continue to add changes.
Commit messages help developers find out exactly what changes were implemented when, so it's important that these messages are written clearly. A commit message starts with a subject line. This should be a short, capitalized summary of the change(s) in the commit. After the subject line comes a blank line which may be followed by a body of text explaining the change in further detail. It's a good idea to keep the message in lines of 72 characters, to make it easy to read in an 80 column terminal. Also use imperitive present tense.
The HEAD^ tag indicates the last commit made.
A git change can be viewed in three stages. First, when changes have been made but not yet saved. Use the command "git add" to move them to the second stage and group them together for your commit. Third, use the command "git commit" to save your changes.

Once you have forked a repository, cloned it to your computer and made your changes to it, you can push it to github. Once it's been pushed, it appears on the repository page on github. Click the button to the right that says "Compare & pull request". Make sure the base fork is "your-username/your-repository" and the base is "master". Add any comments you want to make, click "Create pull request". This gets sent to the people working on the repository, who can then review your changes and decide whether or not to merge them. Pull requests allow developers working in teams to review each other's work and helps keep everything out in the open so everyone is on the same page.