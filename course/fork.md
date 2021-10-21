---
title: Fork the Courseware as Code Template
nav_order: 1
parent: Set Up Courseware as Code 
---

### Creating your own repository

#### By forking this repository

[Click here](https://gitlab.com/courseware-as-code/courseware-template/-/forks/new) to fork this repository!
This will create your own personal version of this repository, that you'll be able to modify and add content freely.

1. **IMPORTANT:** Remove the fork relationship.
Go to **Settings (⚙)** > **Edit Project** and click the **"Remove fork relationship"** button.
1. Enable Shared Runners.
Go to **Settings (⚙)** > **CI/CD** and make sure the **"Enable shared Runners"** button is on.


### Change the necessary configurations

Once you have your own repository with the code for this template, you'll have to modify the `title` and `descriptions` fields in `_config.yml`.


```yaml
title: <NAME OF YOUR COURSE> 
description: <DESCRIPTION OF YOUR COURSE> 
```

This can be changed in GitLab by using the built in WebIDE or the edit button.

![gify-test](https://i.imgur.com/BbSxkPE.gif)

After modifying the `_config.yml` file, a Gitlab CI/CD job will automatically launch.
After that's done running (you'll know by the green check next to your latest commit or check the CI/CD page), your site will be ready to go!

![green-mark-deploy](https://i.imgur.com/r7DiXu2.png)

The changes you make to your course will reflect on the website once the pipeline has finished running.
You can also run this locally using an editor of your choosing and git commands. 

The URL of your site will contain your user/group that owns your repository and the name of the repository.
For example if you created the repository with the Gitlab user `Diego14` and your repository is called `intro-to-music-theory`, the resulting URL will be: `https://Diego14.gitlab.io/intro-to-music-theory`

