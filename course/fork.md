---
title: Fork the Courseware as Code Template
nav_order: 1
parent: Set Up Courseware as Code
---

### Creating your own repository

#### By forking this project

[Click here](https://gitlab.com/e1171/edsigcon-courseware-template/-/forks/new) to fork this project!
This will create your own personal version of this project inclduing the repository, that you'll be able to modify and make your own.

On the [**Fork Project**](https://docs.gitlab.com/ee/user/project/repository/forking_workflow.html#project-forking-workflow) page   You can change the name of the project, the namespace and the and set the Project slug. The slug will be used in the URL of your GitLab Pages website or Wiki. The namespace is a unique name and URL for a user, a group, or subgroup.
![fork_template.png]({{site.baseurl}}/attached_files/images/fork_template.png)

Steps:
 1. Modify the name of the project if you wish.
 2. Select your namespace. You will likely only have one.
 3. Modify the slug if you wish.
 4. Add a description.
 5. Choose a visibility level.
 6. Click Fork.

 Note: You will not be able to pull or push repositories until you [add an SSH key](https://docs.gitlab.com/ee/administration/get_started.html#authentication) to your profile. We won't work locally in this workshop so you don't need to do this now.

 Next:
1. **IMPORTANT:** Remove the fork relationship.
Go to **Settings (⚙)** > **Advanced Setting** and click the **"Remove fork relationship"** button.
1. You'll be asked to re-type the project name to verify that you want to remove the fork.
1. Enable Shared Runners.
Go to **Settings (⚙)** > **CI/CD** and next to **Runners** click the **"Expand"** button.
1. Scroll down and make sure **Enable shared runners for this project** is checked.


### Change the necessary configurations

Now that have your own repository, you'll have to modify the `title` and `descriptions` fields in `_config.yml`.

1. Go to the repository.
2. Click on Files.
3. Find the `_config.yml`. Click on it.
4. Edit it with  in GitLab by using the built in WebIDE or the edit button. In both cases, once you make the edit you can commit the changes by entering a commit message and clicking **Commit changes**. Use the target branch as `main`.

1. Go to the repository.
2. Click on Files.
3. Find the `_config.yml`. Click on it.
4. Edit it with  in GitLab by using the built in WebIDE or the edit button. In both cases, once you make the edit you can commit the changes by entering a commit message and clicking **Commit changes**. Use the target branch as `main`.


```yaml
title: <NAME OF YOUR COURSE>
description: <DESCRIPTION OF YOUR COURSE>
```

![gify-test](https://i.imgur.com/BbSxkPE.gif)

After modifying the `_config.yml` file, a Gitlab CI/CD job will automatically launch.

You can see the pipeline running from the main repository page.
![pipeline.png]({{site.baseurl}}/attached_files/images/pipeline.png)


After that's done running (you'll know by the green check next to your latest commit or check the CI/CD page), your site will be ready to go!

![green-mark-deploy](https://i.imgur.com/r7DiXu2.png)

The changes you make to your course will reflect on the website once the pipeline has finished running.
You can also run this locally using an editor of your choosing and git commands.

### Preview your pages

The URL of your site will contain your user/group that owns your repository and the name of the repository.
For example if you created the repository with the Gitlab user `Diego14` and your repository is called `intro-to-music-theory`, the resulting URL will be: `https://Diego14.gitlab.io/intro-to-music-theory`

You can also find the URL:
1. Go to **Settings**, **Pages**.
1. Scroll down to until you see the URL under Access page. Click on the link to open your page.

[Next Page](https://devops-education.gitlab.io/cwac-workshop/course/content/)
