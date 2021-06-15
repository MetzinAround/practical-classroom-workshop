# Courseware as Code site template

This repository contains a template for **Courseware as Code**, which will allow you to easily generate a static website that can be deployed to Gitlab Pages for free.
Its main objective is to make hosting educational content as easy as possible.

This project started out as a fork of the amazing Jekyll template [just-the-docs](https://pmarsceill.github.io/just-the-docs/).
Courseware as Code wouldn't be possible without it.

[See it in action!](https://courseware-as-code.gitlab.io/courseware-template/)

[[_TOC_]]

## Hosting your own Courseware as Code

To start hosting this template on [Gitlab Pages](https://docs.gitlab.com/ee/user/project/pages/), you'll need to:

- Create your own repository based on the template.
- Change the necessary configurations.

After these two steps, you'll have access to your own Courseware website!

### 1) Creating your own repository

There two ways to create your own repository with the Courseware template.

- Using the Gitlab template
- By forking this repository

#### Using the Gitlab template

Coming soon!

#### By forking this repository

[Click here](https://gitlab.com/courseware-as-code/courseware-template/-/forks/new) to fork this repository!
This will create your own personal version of this repository, that you'll be able to modify and add content freely.

Remember that you can change the name of your project by clicking on **Settings**!

### 2) Change the necessary configurations

Once you have your own repository with the code for this template, you'll have to modify the `_config.yml`.
After modifying the `title` and `descriptions` fields, you'll be ready to go!

```yaml
title: Courseware as Code # The name you want your course to have
description: A Jekyll theme for education # A short description of your course
```

If you are already know how to use `git`, feel free to modify these fields, commit and push them.

If you are not yet familiar with using `git` through your Command-Line, no problem!
Click on the `_config.yml` file, and then you can click on **Edit** to modify it in your own browser.

![gify-test](https://i.imgur.com/BbSxkPE.gif)

After modifying the `_config.yml`, a Gitlab CI/CD job will launch.
After that's done running (you'll know by the green check next to your latest commit), your site will be ready to go!

![green-mark-deploy](https://i.imgur.com/r7DiXu2.png)

The URL of your site will contain your user/group that owns your repository and the name of the repository.
For example if you created the repository with the Gitlab user `Diego14` and your repository is called `intro-to-music-theory`, the resulting URL will be: `https://Diego14.gitlab.io/intro-to-music-theory`

## Adding your own content

Now that you've finished with the project configuration, follow our [step-by-step tutorial](https://courseware-as-code.gitlab.io/courseware-template/) for adding content tou your own course!

## Proposing changes

## Local development

### Using Ruby + Bundle

### Using Docker

Coming soon!

