---
title: Set up Courseware as Code Tools repository
nav_order: 5
---
# Courseware as Code tools

The Courseware as Code Tools project contains tools to help you create and share assignments with your students using **Gitlab repositories** and **Gitlab issues**.

After running CwaC tools each of your students will have their own individual repository copied from a designated project you've already created. You, the educator, will have admin permissions on the project and students will have developer permissions. Learn more about permissions in the [docs](https://docs.gitlab.com/ee/user/permissions.html#project-members-permissions).

An overview of the process:
1. Create a Groups
1. Invite your students
1. Create a project under your Groups
1. Add the content you want to share to the project. Content can include issues (assignments), code samples, and more.  
1. Fork or copy the Courseware as Code Tools project to your group.
1. Modify the .yaml file to set up the tool.
1. Run the code!

Next, we'll walk through this step by step.


## Reminder: Namespaces, Groups, Projects
A namespace contains the groups, subgroups, projects, and epics belonging to a single user. The Group is where you'll add students as a `guest` level access. The project is an individual week worth of assignments, single assignment, or homework.

## How to create assignments

### Create a Group and invite your students

Assignments will be shared to the people you add to a **Gitlab Group**.

**Steps:**
1. From your namespace, create your **Gitlab Group**, by clicking on **Menu -> Create group**.
![group-creation](https://i.imgur.com/nujGwo7.png)
1. Set the privacy to Public or Private.

Make sure that if you want your assignments to be seen only by you and your students, make the group private! If it's an open course, feel free to make it public.
1. Choose **My Company or Team** for who will be using the group.
1. Invite members by adding their email.
1. Then create the group.
1. Then go to Members.
1. Under account, set the member permission accordingly.

When inviting your students to the group, you should give them the accessibility level of `guest` in order to prevent them from seeing projects the belong to other students. For the individual projects, the courseware tool will automatically give student users a higher accessibility level of `developer` so they are able to make changes to the code and use merge requests.

### Create a project for your assignment under your group

Next, create a project in your group. This project will contain the repository, issues, and materials you want your students to have access to. The `coursware-tools` CI/CD, when run, will automatically create a copy of each project for each student, private to them so other students cannot see it. The instructor or instructors will be defined ahead of time and will have access to all the projects. When you create a project, you'll be able to choose the group it's a member of.

**Steps:**
1.  From the group, click **New Project**. Fill out the options accordingly.

![group-choosing](https://i.imgur.com/Nhh9bne.png)

 - Now you can add any code you want to share with your students to this new project. Everything you add to this project will be shared with your students.If you have sample code or files you want to share with them, add it to the repository!
- Create questions as issues
  Issues created in this repository will also be shared with your students. Use this as an opportunity to write your **questions** or **tasks** from your assignments as issues, and discuss with your students back and forth in them!

For the purposes of the workshop, we'll create an [issue](https://docs.gitlab.com/ee/user/project/issues/#issues).
2. From Issues, click **New Issue**.
3. Add a title and short description. You can also set a weight or due date.
![issue.png]({{site.baseurl}}/attached_files/images/issue.png)

### Fork or clone this project
1. **Fork** the [Courseware as Code Tools Project](https://gitlab.com/courseware-as-code/courseware-tools/-/forks/new) project to your group or create your own project and copy all of the contents from it to yours. The project contains the code we need.
- Remember to choose your new namespace.

The Courseware as Code Tools project should now be in your namespace.


### Modify the `assignments.yaml` file

You'll see that this project (`courseware-tools`) contains a file called `assignments.yaml`. That's where you'll define which projects you want to share with your students.


Let's explain each of its fields:
```yaml
course1: # leave this part blank
  template_name: <PROJECT_NAME> # the name of the project you want to share with your students
  group_id: <GROUP_ID> # the id number of the group in which you created your assignments
  educators: # the gitlab handles of your educators
    - <GITLAB_HANDLE>
```

For example, if we wanted to create an assignment for a project called `graph-algorithms-exam` created in the `intro-to-algorithms-class` group with `turing123` and `E-Dijkstra` as educators we'd have the following `assignments.yaml` file:

```yaml
course1: # leave this blank
  template_name: graph-algorithms-exam # the name of the project you want to share with your students
  group_id: 1234567 # the name of the group in which you created your assignments
  educators: # the gitlab handles of your educators
    - turing123
    - E-Dijkstra
```

**Steps:**
1. Edit the assignments.yaml with the WebIDE or by clicking edit.
2. Modify the three fields.
3. Commit the changes.


### Run your code!

To run this code, you'll need to create an **access token** with permissions to the Gitlab API.

**Steps:**
1. To do so, click on **Preferences** from the dropdown menu next to your user icon on the upper right.
1. Then click on **Access Tokens**.
1. Name the token and choose an expiration date.
1. Check only `api` permissions. Then create the token.
1. When the token is created copy it to the clipboard.
This `.gif` shows you how to do that:

![api-token-steps](https://i.imgur.com/x9pvr97.gif)

Be aware that this will allow our code to run some **Gitlab** actions such as project creation, edition and assignment with **your account**!
Make sure you are OK with that before moving further.
Feel free to check all of the calls to the **Gitlab API** we make in our code (mostly in the `tools.rb` file inside the `lib` folder).

Make sure to copy the token you just obtained.

### Running with Gitlab CI/CD

Using Gitlab CI/CD you'll be able to run this code without installing anything, just by running a **Gitlab pipeline**.

But first, you'll need to define a **Variable** for the token you created in the fork of `courseware-tools`.

**Steps:**
1. Back at the Courseware as Code Tools project (the one you forked into your own group), Click on **Settings -> CI/CD -> Variables** in your project and create a **Variable** by clicking **Add variable**. Name this **variable** key `API_TOKEN` and the token you just created as a value. Check `Protect variable`.
1. Click add variable.

![token-assign-key](https://i.imgur.com/RnudAdi.gif)

1. You can now click on **CI/CD ->Pipeline** and **Run Pipeline**.
1. Enter the name of API_TOKEN and click run.
This will automatically create and share the assignments with all of your students!

Your students will now have a copy of the project in their namespace. 

## Frequently Asked Questions

- What happens if I re-run this code multiple times?

If the assignment has been created and shared with a student before, it will be skipped.
If not (for example if the student just joined the group) it will be shared as normal.
Nothing will be deleted.
