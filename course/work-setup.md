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

Note: The automatic readme has instructions on how to get started.   

[Create an issue](https://docs.gitlab.com/ee/user/project/issues/managing_issues.html#create-an-issue) for the assignment
1. Click on Issues
1. New Issue
1. Add a title `Module 1: Magic 8 Ball Python Assignment `
1. Add a description. Use the example below. 

------
## Overview 

In this assignment you will learn how to create a Magic 8 Ball game in Python. The learning outcomes are:

- Create a python file in a GitLab repository
- Compose a basic python script for a Magic 8 Ball Game in your python file
- Use Git to commit the code to your repository 
- Connect your repository to GitPod
- Run the Magic 8 Ball ame
- Modify the code 
- Use Git to commit the code to your repository 
- Share your code with a classmate 
- Run a classmates code 


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
1. Create a new branch to comit your changes. Click on main from the bottom menu, then create a new branch. Name it `python-example-initials. 
1. Change one of the answers. 
1. Save the file.
1. In the source control tab, click the + sign to stage the change. 
1. Click commit, type a commit message. Then click enter
1. Send the changes to the repo by clicking the sync changes button. The changes will be sent to the repository. 
1. Back in GitLab, you'll see a banner with the option to create a merge request. Click the button and fill out the M




### Sample Magic 8 Ball Game Code 

`
import random
import time
#REMOVE ME
#This section creates a list of all the possible replies and prints out an ASCII 8ball with a pause between each line. This is to indicate that the code has started running. 
answers = ["It is certain", "It is decidedly so", "Without a doubt", "Yes Definitely", "You may rely on it", "As I see it, yes", "Most Likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy, try again", "Ask again later", "Better not tell you now", "Cannot Predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very Doubtful"]
print("  .-'''-.")
time.sleep(.5)
print(" /   _   \\")
time.sleep(.5)
print(" |  (8)  |")
time.sleep(.5)
print(" \   ^   /")
time.sleep(.5)
print("  '-...-'")

#The main function of the 8ball. 
def ask_the_ball():
    #asks the user to input a name and questions. .upper() turns the string into all caps. 
    name = input("What is your name?")
    #capitalizes the name
    cap_name = name.upper()
    question = input("What would you like an answer to?")
    cap_question = question.upper()
    #This uses random to create a random integer between two numbers, in this case 0 and the length of the list minus 1 to account for 0 indexing. 
    get_the_i = random.randint(0, len(answers)-1)
    #this selectes the answer by using the random number as the index from the list
    answer = answers[get_the_i]

    #fun filler to pretend like it's thinking
    print(f"{cap_name}, you asked {cap_question}.")
    print("Pondering the Orb")
    time.sleep(random.randint(1, 5))
    print("🔮 ✨ 🔮")
    time.sleep(1)
    print(f"{answer}")
    ask_again = input("Would you like to ask again? yes/no ")
    #runs play again to check if user wants another round
    play_again(ask_again)

#if the user answers something other than yes or no, this frunction runs with a new input
def wrong_answer(user_answer2):
    play_again(user_answer2)

#play again is the logic for deciding how the player answered about another question
def play_again(user_answer):
    #upper case to account for random capitalization
    more = user_answer.upper()
    #if yes, runs ask_the_ball again
    if more == "YES":
        ask_the_ball()
    #exits program
    elif more == "NO":
        print("Thank you for playing.")
        exit()
    #any answer other than yes or no reminds the user to use an approved answer 
    else:
        wrong = input("Please type 'yes' or 'no'. ")
        wrong_answer(wrong)
        
#runs the game function    
if __name__ == "__main__":
    ask_the_ball()

`









