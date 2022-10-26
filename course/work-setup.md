---
title: GitLab Setup
nav_order: 1
parent: Workshop Instructions 
---

# GitLab Classroom Set up 

Pre-requisites:
- You must have a GitLab.com account set up 
- You must have GitPod enabled
- {note to self - we may need to enable runners here with cc}

## Steps

[Create a Group](https://docs.gitlab.com/ee/user/group/manage.html#create-a-group)
1. From the `main menu` go to `Groups`. 
1. Click on New group to create a group, then Create group. 
1. Name the Group `Example Class`. Choose the following settings:
    1. Visibility Level: Private
    1. Role: Software Developer
    1. Who will be using the Group: My company or team
    1. For What: I want to store my code
    1. Do not invite members at this time. 
    1. Save

[Create a Project](https://docs.gitlab.com/ee/user/project/working_with_projects.html#create-a-project)
1. Create a new project 
1. Create blank project
1. Name the project `Module 1`
1. Accept the defaults

Note: A readme file is automatically created with some basic instructions on how to use a GitLab project. 

[Create an issue](https://docs.gitlab.com/ee/user/project/issues/managing_issues.html#create-an-issue) for the assignment
1. Click on Issues
1. New Issue
1. Add a title `Module 1: Magic 8 Ball Python Assignment `
1. Add a description and step by step directions for each learning objective. Use the example text below and [this issue](https://gitlab.com/devops-education/workshops/practical-classroom-workshop/-/issues/1). 

Complete the assignment
1. Work through the example issue as if you were a student in your class. 

------
## Overview 

In this assignment, you will learn how to create a Magic 8 Ball game in Python. The learning outcomes are:

- Create a python file in a GitLab repository
- Compose a basic python script for a Magic 8 Ball Game in your python file
- Use Git to commit the code to your repository 
- Connect your repository to GitPod
- Run the Magic 8 Ball ame
- Modify the code 
- Use Git to commit the code to your repository in both GitPod and the WebIDE
- Share your code with a classmate 
- Run a classmate's code 


##  Create a python file in a GitLab repository
1. From your GitLab project, go to the repository. 
1. At the top click on the + sign to add a new file to the repository
1. Name the file `magic_8ball.py, and Commit the changes
1. View the Files in the repository ot see the new .py file. 

##  Compose a basic python script for a Magic 8 Ball Game in your python file and make a Commit 
1. Review the sample Magic 8 ball python code below. 
1. Copy the code
1. Open the magic_8ball.py file in the GitLab Web IDE from the repository
1. Commit the code to the main branch
1. View the code 

## Connect your repository to GitPod 
1. From the file in the repository, pull the Open in WebIDE menu down and open the file in GitPod
1. GitPod will open, continue with GitLab 
1. Choose the editor of your preference for opening workspaces - for this example we'll use VS Code Browser.
1. VS Code will open in your browser inside GitPod.
1. Install the recommended extensions for Python by clicking install.
1. The Python extension for Visual Studio Code will install.
1. You can close the Get Started Tabs. 

## Run the Magic 8 Ball python code in GitPod
1. Run the magic_8ball.py code in your GitPod browser `run magic_8ball.py`
1. Play the Magic 8 Ball game by answering it's questions. 


## Modify the code and commit the code to a new branch
1. Create a new branch to commit your changes. Click on main from the bottom menu, then create a new branch. Name it `python-example-initials. 
1. Change one of the answers. 
1. Save the file.
1. In the source control tab, click the + sign to stage the change. 
1. Click commit, and type a commit message. Then click enter
1. Send the changes to the repo by clicking the sync changes button. The changes will be sent to the repository. 
1. Back in GitLab, you'll see a banner with the option to [create a merge request](https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html). Click the button and fill out the Merge request. You can accept most of the defaults. 
1. Click the `Merge` button on the MR to merge the changes from your branch into the main branch. 
1. Back in GitPod, we'll need to update our main branch to reflect the changes we merged. Switch back to the main branch. 
1. Click the synchronize changes button on the bottom menu to pull the changes to our main branch. 


## Share your code with a classmate and make an MR to a classmate's python file. 
1. In GitLab, from your Example Class\Module 1 project, go to Project Information and Members. Invite one of your classmates to the Project with the Developer Role. [Learn more about roles](https://docs.gitlab.com/ee/user/permissions.html). 
1. You should also have been added to a classmate's Project. The Group and Project will appear in your lists of Projects. 
1. Navigate to the shared Project. 
1. Open the file the classmate's magic_8ball.py file in WebIDE. 
1. Edit one of the answers. 
1. Use the WebIDE to Commit the change on a new branch (accept the defaults). Type a commit message, create a new merge request, and commit the change. 
1. Fill out the Merge Request with some details. Assign it back to your classmate. 
1. You should have a merge request assigned to you as well. Review the changes and merge. 

## Artifacts
[ ] Link both MRs to this issue
[ ] Add a screen shot of the results of the Magic 8 ball game as a comment in the issue. 


### Sample Magic 8 Ball Game Code 
[sample_code.txt](https://gitlab.com/devops-education/workshops/practical-classroom-workshop/-/blob/main/sample_code.txt)
