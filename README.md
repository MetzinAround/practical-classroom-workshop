# Courseware as Code site template

This repository contains a template for **Courseware as Code**, which will allow you to easily generate a static website that can be deployed to Gitlab Pages for free.
Its main objective is to make hosting educational content as easy as possible.

This project started out as a fork of the amazing Jekyll template [just-the-docs](https://pmarsceill.github.io/just-the-docs/).
Courseware as Code wouldn't be possible without it.

[See it in action!](https://courseware-as-code.gitlab.io/courseware-tutorial/)

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

The changes you make to your course will reflect on the website once the pipeline has finished running.
If you want to speed up your development process, we recommend trying out our [Local Development](#local-development) options.

The URL of your site will contain your user/group that owns your repository and the name of the repository.
For example if you created the repository with the Gitlab user `Diego14` and your repository is called `intro-to-music-theory`, the resulting URL will be: `https://Diego14.gitlab.io/intro-to-music-theory`

## Adding your own content

Now that you've finished with the project configuration, follow our [step-by-step tutorial](https://courseware-as-code.gitlab.io/courseware-tutorial/) for adding content to your own course!

## Proposing changes and fixes

Thanks to using `git` for Version Control anyone can propose changes and fixes in Courseware as Code!
Both students and educators are encouraged to do this.

The process is quite simple: every page of the course has a **"Contribute to this page using Gitlab"** link at the bottom.

![contribute-with-gitlab-link](https://i.imgur.com/2lGG6uL.png)

Click on it, and it'll take you to the `markdown` file that represents that page.
Don't be afraid to click on the **Edit** button!
Your changes won't be automatically applied to the course, you'll have to send a **Merge Request** first.
Creating a **Merge Request** is not as complicated as it sounds, and you won't even need to use your Command-Line to do this.
Click on the **Fork** button, and that will create your own personal copy of the course.

![create-fork](https://i.imgur.com/FRsJmve.png)

Once you make your changes, click on **Commit**.
Make sure to add a meaningful **Commit Message** describing your changes!

![create-commit](https://i.imgur.com/pOZGOo2.png)

Now it's time to send out the **Merge Request** to the owners of the course.
Once you click on **Create merge request**, they'll receive your *proposed* changes and will be able to review them.
We're sure they'll be thankful for collaborating with their course!

![send-merge-request](https://i.imgur.com/5LujB5Q.png)

## Local development

If you have access to a local development environment, we recommend setting up the course locally.
This will help you check how your changes will reflect on the site inmediatly (instead of waiting for the **CI/CD** pipeline that might take a few minutes).

### Using Ruby + Bundler

It's likely that your system already has Ruby installed.

You can make sure you have Ruby installed by running the following command in your Command-Line:

```bash
ruby -v
```

This should output some information on the installed Ruby version.

If it doesn't, [follow the official Ruby installation guide](https://www.ruby-lang.org/en/documentation/installation/) or install `rvm` (the Ruby Version Manager) that will let you easily switch between Ruby versions by following their [installation steps](https://rvm.io).

After that you'll need to install the `bundler` gem:
```bash
gem install bundler
bundle install
```

Now you'll be able to run `bundle exec jekyll build` in your course directory, and serve the course locally with `bundle exec jekyll serve --incremental`.
Now you'll be able to open your course in the http://127.0.0.1:4000/$CI_PROJECT_NAME address.

Make sure to run `bundle exec jekyll build` each time you add a new page!
Or else it won't reflect in your site when you run `bundle exec jekyll serve --incremental`.

### Using Docker

To spin up your site locally using **Docker**, you'll need to [install it](https://docs.docker.com/get-docker/).
You'll also need to have `docker-compose` installed (if you don't have it already, install it for your respective Operating System by following [these steps](https://docs.docker.com/compose/install/)).

Once you have those two installed, run `docker-compose up` in your project directory.
