---
title: Overview of GitLab Group and Project Structure
nav_order: 3
parent: Introduction
---
# Overview of GitLab Group and Project Structure

In order to understand the set up process for Courseware as Code, we will first provide an overview of how GitLab features are used to organizing your course, store the content, and store the student's work.

GitLab contains contains various tools and functions that are useful from a CwaC perspective. We won't use all of them in this workshop. We'll highlight a few of the fundamentals below to get us started. These images will help you to visualize the possibilities.

## Organizing the Course

![organizing]({{site.baseurl}}/attached_files/images/organizing.png)

This structure relates to Courseware as Code as follows:
-  The **Group** is the course. Each student is invited to the group.
-  The **Project** stores content.


## Defining the Course

![defining]({{site.baseurl}}/attached_files/images/defining.png)
This structure relates to Courseware as Code as follows:
- Epics could store projects or course modules
- Child epics may contain a week of assignments
- Issues store specific assignments and tasks


## Doing the Course


![doing]({{site.baseurl}}/attached_files/images/doing.png)

This structure relates to Courseware as Code as follows:
- Repository stores the code
- Code reviews are conducted by instructors or peers
- Instructors can approve drafts or various stages of completion
- Merge requests can be used for collaboration on group projects
- CI/CD pipelines can build content, grade code, and many other things.

## Courseware as Code structure

In summary, this figure illustrates the CwaC structure implemented in this workshop.

![cwac_structure.png]({{site.baseurl}}/attached_files/images/cwac_structure.png)


[Next Page](https://devops-education.gitlab.io/cwac-workshop/course/advanced/)
