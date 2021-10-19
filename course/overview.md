---
title: Overview of Courseware as Code
nav_order: 1
parent: Introduction
---

# Introduction to Courseware as Code

**Courseware as Code** (CwaC) is a revolutionary approach to designing, creating, and maintaining course content and all related assets based on a foundation of DevOps and continuous integration (CI) and continuous development (CD) philosophies. CwaC extends the process, tools, and culture of DevOps designing, creating, and maintaining education content and assets of all types.

**DevOps** is a set of practices and tools that combines software development and information technology operations. DevOps is also a cultural transformation; it improves collaboration between developers and operations team members by implementing a mindset that promotes feedback loops, continuous improvement, loosely coupled architecture teams.  


The DevOps process starts with a problem and moves through each stage starting with plan and moving through in a continuous cycle to monitor and then back to plan. The 7 stages are described in [detail here](https://about.gitlab.com/stages-devops-lifecycle/).

![devops_process]({{site.baseurl}}/attached_files/images/devops_process.png)

The tools and functions available in each stage.

![stages]({{site.baseurl}}/attached_files/images/stages.png)

## DevOps Stages and Tools used in Courseware as Code
Courseware as Code is similar to DevOps in that users can use only the tools they need at their time and then expand to more stages and more tools as their needs grows. Since this is an introductory workshop only a few tools are used. In the additional applications section below, we explain more advanced uses.


| Stage| Tools and Functions | CwaC Usage | CwaC Tools |
|------|---------------------|------------|------------|
| Plan | [Issues](https://docs.gitlab.com/ee/user/project/issues/#issues) | Issues store course assignments or tasks.| CwaC tools can make a copy of every issue in a course project and assign it to all course participants. Issues can have due dates, assignees, and milestones. They can also be organized with labels.|
| Create |[Repository](https://docs.gitlab.com/ee/user/project/repository/#repository) | A repository is where you store your code and make changes to it. Your changes are tracked with version control. Each project contains a repository | CwaC tools can make a separate project for each student in your class. The project contains a private repository where on the enrolled student and instructor can access the code. The repository stores code as submissions to issues (assignments). Git controls the versioning of the code.|
| Plan, Create, and Verify | [GitLab Pages](https://docs.gitlab.com/ee/user/project/pages/) | GitLab pages is used to publish a static website directly from a repository in GitLab.| CwaC uses GitLab pages to host content for the course in the form of a webage. The content is stored in markdown files in your course's home repository. GitLab CI/CD tools are used to build your site and publish to the GitLab Pages server. |
| Verify | [GitLab CI/CD](https://docs.gitlab.com/ee/ci/index.html)| CI/CD is a tool for software development using the continuous methodologies of Continuous Integration, Continuous Delivery and Continuous Deployment. GitLab CI/CD can automatically build, test, deploy and monitor applications. | GitLab CI/CD is used to build the course website. CI/CD pipelines can also be configured to check and grade code turned in by students into their central repository.|  



# Courseware as Code Origins

## U.S. Army Cyberschool

The exact origin of CwaC in action is unknown to us. We do know that many open-source projects and open-core companies have used this approach to maintain their documentation and handbook type content for many years.

The U.S. Army Cyberschool, a GitLab customer, officially coined the term Courseware as Code in their publication `Courseware as code setting a new bar for transparency and collaboration` published in the IEEE Frontiers in Education Conference in 2018^1 and subsequent publication in `Courseware as Code: Instituting Agile Courseware Collaboration` in IEEE Security & Privacy in 2020^2. According the authors....

>Using a foundation of DevOps and Continuous Integration/Continuous Delivery (CI/CD) philosophies, our idea for Courseware as Code extends the idea of ”Everything as Code” to educational content. Leveraging applicable aspects of the software development lifecycle to courseware facilitates discussions of suggested changes amongst faculty, provides transparency in updates, enables custom workflows based on the complexity of course content, and allows faculty, students, and workforce members to identify issues and contribute content.

In the CwaC model, traditional documents such as slide presentations, word documents, spreadsheets, and other files, with markup language formats. CI pipelines are used to create PDFs, html5 slide decks, and more for distribution.

>These non-binary formats allow for text parsing and comparisons via change logs for review, discussion, and approval. This fine-grained control promotes trust in the integrity of the material and enables instructors to track every content change.

Read more about the Army's Cyberschool's Courseware as Code implementation in this GitLab Case Study: [How the U.S. Army Cyberschool created Courseware as Code with GitLab](https://about.gitlab.com/customers/us_army_cyber_school/) and related [GitLab Commit 2020 Presentation](https://www.youtube.com/watch?v=L4zf_QIr4jQ).

## Google Summer of Code 2021

In the summer of 2021, GitLab was awarded a Google Summer of Code (GsoC) Intern for developing a [Courseware as Code template](https://summerofcode.withgoogle.com/archive/2021/projects/4787041501446144/) Alejandro Rusi, a Masters student in Computer Science Buenos Aires, Argentina, accepted and built a template and additional tools. Here is Alejandro's repository with the results.

### Related Resources
**Repositories and Merge Requests**

- [courseware-template](https://gitlab.com/courseware-as-code/courseware-template): A project for easily setting up your Gitlab Pages, with plugins for easily building educational content (slides, quizzes, and others).
- [courseware-tools](https://gitlab.com/courseware-as-code/courseware-tools):  A project for sharing coding assignments with your students. Automatically assigns them badges, which can be later be automatically updated using Webhooks.
- [courseware-bot](https://gitlab.com/courseware-as-code/courseware-bot): A project for handling incoming Webhooks and updating the badges of the students.

**Blog Posts, videos and more**

[Blogpost introducing Courseware as code](https://alejandro-rusi.gitlab.io/2021/05/31/toward-courseware)
[Techy Tanuki Twitch Video Recording](https://youtu.be/qgQQ4MgnKR4) talking with PJ talking about Courseware as Code
[End of project slides](https://docs.google.com/presentation/d/1rydx63ZojP6aLdeXfvAX1UOX4lRAP41y_nAp8rdjlZs/edit?usp=sharing)
[Security issue for badges original proposal](https://docs.google.com/presentation/d/11PMVMZbev3_NOZrNbkjgyEjO7EoNqR3uiUrUCMEnhgk/edit?usp=sharing)

**Challenges and future work**

- The main obstacle we had with this project was the security issue that our original proposal had in regards to badges. We originally planned to add an API_TOKEN to each student repository, but that could have disastrous effects if they found out how to use that API TOKEN! More about this in the slides [link].

- Currently Courseware as Code still requires some technical knowledge to spin it up: modify some config files, wait for the CI/CD pipeline to run, change the name of the repository, etc, etc. Maybe a script could be made to automate this even more, even better if it has an UI!



# Footnotes
1. Rodriguez, Julianna, et al. "Courseware as code setting a new bar for transparency and collaboration." 2018 IEEE Frontiers in Education Conference (FIE). IEEE, 2018.
2. Rodriguez, Julianna M., et al. "Courseware as Code: Instituting Agile Courseware Collaboration." IEEE Security & Privacy 18.6 (2020): 59-62.
