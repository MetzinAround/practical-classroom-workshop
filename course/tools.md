---
title: Set up Courseware as Code Tools repository
nav_order: 5
---
# Courseware as Code tools

This project contains tools to help you create and share assignments with your students using **Gitlab repositories** and **Gitlab issues**, letting your students pick up useful knowledge about source control and code reviews.

After running this tool each of your students will have their own individual repository with developer permissions, while the educators will be added with admin permissions.
## Reminder: Namespaces, Groups, Projects
COMING SOON

## How to create assignments

### Create a Group and invite your students

Assignments will be shared to the people you add to a **Gitlab Group**.
To create your **Gitlab Group**, click on **Menu -> Create group**

![group-creation](https://i.imgur.com/nujGwo7.png)

Make sure that if you want your assignments to be seen only by you and your students, make the group private!
If it's an open course, feel free to make it public. 

### Create a project for your assignement under your group

Create a project in your group. This project will contain the repository, issues, and materials you want your students to have access to. The `coursware-tools` CI/CD will automatically create a copy of each project for each student, private to them so other students cannot see it. The instructor or instructors will be defined ahead of time and will have access to all the projects. When you create a project, you'll be able to choose the group it's a member of.

![group-choosing](https://i.imgur.com/Nhh9bne.png)

- Add the code you want to share with your students to this new project.
  Everything you add to this project will be shared with your students.
  If you have sample code or files you want to share with them, add it to the repository!
- Create questions as issues
  Issues created in this repository will also be shared with your students. Use this as an opportunity to write your **questions** or **tasks** from your assignments as issues, and discuss with your students back and forth in them!
    
### Fork or clone this project

Once you have created a new project with the materials, issues, etc you want your students to have, feel free to **fork** [this](https://gitlab.com/courseware-as-code/courseware-tools/-/forks/new) project or create your own project and copy all of the contents from [this one](https://gitlab.com/courseware-as-code/courseware-tools).

### Modify the `assignments.yaml` file

You'll see that this project (`courseware-tools`) contains a file called `assignments.yaml`.
That's where you'll define which projects you want to share with your students.

Let's explain each of its fields:
```yaml
course1: # leave this part blank
  template_name: <PROJECT_NAME> # the name of the project you want to share with your students
  group_name: <GROUP_NAME> # the name of the group in which you created your assignments
  educators: # the gitlab handles of your educators
    - <GITLAB_HANDLE>
```

For example, if we wanted to create an assignment for a project called `graph-algorithms-exam` created in the `intro-to-algorithms-class` group with `turing123` and `E-Dijkstra` as educators we'd have the following `assignments.yaml` file:

```yaml
course1: # leave this blank
  template_name: graph-algorithms-exam # the name of the project you want to share with your students
  group_name: intro-to-algorithms-class # the name of the group in which you created your assignments
  educators: # the gitlab handles of your educators
    - turing123
    - E-Dijkstra
```

### Run your code!

To run this code, you'll need to create an **access token** with permissions to the Gitlab API.
To do so, click on **Preferences -> Access Tokens** and create a token with only `api` permissions.
This `.gif` shows you how to do that:

![api-token-steps](https://i.imgur.com/x9pvr97.gif)

Be aware that this will allow our code to run some **Gitlab** actions such as project creation, edition and assignment with **your account**!
Make sure you are OK with that before moving further.
Feel free to check all of the calls to the **Gitlab API** we make in our code (mostly in the `tools.rb` file inside the `lib` folder).

Make sure to copy the token you just obtained.

### Running with Gitlab CI/CD

Using Gitlab CI/CD you'll be able to run this code without installing anything, just by running a **Gitlab pipeline**.

But first, you'll need to define a **Variable** for the token you created in the fork of `courseware-tools`.

Click on **Settings -> CI/CD -> Variables** in your project and create a **Variable**. This **variable** should have a key called `API_TOKEN` and the token you just created as a value.

![token-assign-key](https://i.imgur.com/RnudAdi.gif)

You can now click on **CI/CD -> Run pipeline**.
This will automatically create and share the assignments with all of your students!

## Frequently Asked Questions

- What happens if I re-run this code multiple times?

If the assignment has been created and shared with a student before, it will be skipped.
If not (for example if the student just joined the group) it will be shared as normal.
Nothing will be deleted.
