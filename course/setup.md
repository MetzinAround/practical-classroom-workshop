---
title: Set Up Courseware as Code
nav_order: 3
has_children: true
---
# Courseware as Code site template

This repository contains a template for **Courseware as Code**, which will allow you to easily generate a static website that can be deployed to Gitlab Pages for free.
Its main objective is to make hosting educational content as easy as possible.

This project started out as a fork of the amazing Jekyll template [just-the-docs](https://pmarsceill.github.io/just-the-docs/).
Courseware as Code wouldn't be possible without it.

[See it in action!](https://courseware-as-code.gitlab.io/courseware-tutorial/) #change link to git example

[[_TOC_]]

## Hosting your own Courseware as Code

To start hosting this template on [Gitlab Pages](https://docs.gitlab.com/ee/user/project/pages/), you'll need to:

- Create your own repository based on the template.
- Change the necessary configurations.

After these two steps, you'll have access to your own Courseware website!

### 1) Creating your own repository

#### By forking this repository

[Click here](https://gitlab.com/courseware-as-code/courseware-template/-/forks/new) to fork this repository!
This will create your own personal version of this repository, that you'll be able to modify and add content freely.

1. **IMPORTANT:** Remove the fork relationship.
Go to **Settings (⚙)** > **Edit Project** and click the **"Remove fork relationship"** button.
1. Enable Shared Runners.
Go to **Settings (⚙)** > **Pipelines** and click the **"Enable shared Runners"** button.
1. Rename the repository to match the name you want for your site.
1. Edit your website through GitLab or clone the repository and push your changes.


### 2) Change the necessary configurations

Once you have your own repository with the code for this template, you'll have to modify the `_config.yml`.
After modifying the `title` and `descriptions` fields, you'll be ready to go!

```yaml
title: <NAME OF YOUR COURSE> 
description: <DESCRIPTION OF YOUR COURSE> 
```

This can be changed in GitLab by using the built in WebIDE or the edit button

![gify-test](https://i.imgur.com/BbSxkPE.gif)

After modifying the `_config.yml` file, a Gitlab CI/CD job will automatically launch.
After that's done running (you'll know by the green check next to your latest commit), your site will be ready to go!

![green-mark-deploy](https://i.imgur.com/r7DiXu2.png)

The changes you make to your course will reflect on the website once the pipeline has finished running.
You can also run this locally using an editor of your choosing and other git techniques. 

The URL of your site will contain your user/group that owns your repository and the name of the repository.
For example if you created the repository with the Gitlab user `Diego14` and your repository is called `intro-to-music-theory`, the resulting URL will be: `https://Diego14.gitlab.io/intro-to-music-theory`

