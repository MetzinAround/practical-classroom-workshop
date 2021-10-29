---
title: Benefits of Courseware as Code
nav_order: 3
parent: Introduction
---
# Courseware as Code is Revolutionary

Courseware as Code is a revolutionary approach to designing, creating, and maintaining course content and all related assets.  According to the Army Cyberschool
>Leveraging applicable aspects of the software development lifecycle to courseware facilitates discussions of suggested changes amongst faculty, provides transparency in updates, enables custom workﬂows based on the complexity of course content, and allows faculty, students, and workforce members to identify issues and contribute content.

The traditional method of creating content both for University curriculum and professional training is rife with challenges and opportunities.

**Challenges to the traditional method of content creation include:**

- It takes time to generate content.
- The time from creating the content to actually delivering the content is long enough that the content may need to be updated or maybe obsolete.
- Collaboration with subject matter experts and experts for content development is very difficult with existing solutions.
- Many faculty create content in non-cloud native files. Files are stored on hard drives and not versioned. Material is often lost.
- Content is moved from hard drive to learning management system. Often tools are need in between for formatting. Changes such a simple due date require the entire process to be repeated.
- The ability to scale content generation is highly limited with existing systems.
- Repetition in the process
- Lengthy and difficult feedback process
- No version control
- Manual infrastructure
- Collaboration is difficult.

**Courseware as Code is revolutionary because it brings all of the DevOps and GitLab values to the process via git, central repositories, versioning, and CI/CD.**

Content generation from storyboard to delivery uses the DevOps lifecycle:
- Markdown for content (text, slides, etc)
- Git for distributed editing, contribution, and version control
- Pipelines for building content
- Infrastructure as Code for all coursework related materials
- Containerized training environments
- GitLab CI Automated deployment to LMS/LXP
- HEAT templates and cloud-init scripts
- Range deployment
- Interactive DevOps tests
- Versioning can be used to manage content for air-gapped environments that may be behind in releases
- Future directions: gamification of DevOps scenarios, badges on repos, etc.


## Courseware as Code and GitLab Values
GitLab's six core values are 🤝  Collaboration, 📈 Results , ⏱️ Efficiency, 🌐 Diversity, Inclusion & Belonging, 👣 Iteration, and 👁️ Transparency, and together they spell CREDIT.  [Read more here](https://about.gitlab.com/handbook/values/).

Courseware as code is exciting to us because it connects education and our values directly with a DevOps framework. Here are some examples.

| Value| Courseware as Code Examples | Army CyberSchool Data Points- [see pdf ](/uploads/89d95228727035e704d8e21c9917a048/Courseware_as_Code.pdf)|
| ------ | ------ |------- |
| Collaboration| subject matter experts can directly create original content such as exercises and course sections; they can also easily review MRs before new content is added to courses | contributors raised over 140 issues of which over 130 were resolved. |
| Results | Because everyone can contribute, third party tools are not a blocker to scaling. Everyone can author code and contribute.  CI/CD pipelines automatically build content whenever a change is made and deployed to the LXP/LMS automatically.  | GitLab instance has synchronized over 175 users with an average of 6.7 merge requests submitted per user. Out of these users, over 100 of them are not USACYS faculty. These external users include students and workforce members|
| Efficiency | Feedback can be provided directly from the content in a form of an MR or issue. CI/CD pipelines reduce the need for repetitive work. Content from the handbook and GitLab repos remain in their home location and “includes” are used to directly build in the content from the other location. When the content changes, the course automatically changes. Example - if a figure is updated somewhere, it is automatically updated in the content via CI/CD with no additional work.  Flags can be set for when changes may require additional work. | In just over one year (inaugural) our courseware base had 6,787 commits over 15 projects with an average of 26.5 commits per instructor |
| D&I&B | Because third-party tools are not required to generate content, everyone can access the code.| "We recommend other educational institutions consider Distributed Version Control System (DVCS) and automated workﬂows to enable transparency in materials and organized synchronization that empowers widespread contribution to further education" |
| Iteration |Git, distributed editing, and version control allow the content to change with the pace of the software. Small changes are easy and simple. The ability to scale increases exponentially. | Went from a 3-year feedback cycle to instant. |
| Transparency | Courseware is open to everyone.  | "The ability to crowdsource courseware development and co-opt distributed experts exponentially increases capacity and capability of curriculum development teams. Additionally, a distributed core of subject matter experts can rapidly review courseware that requires dynamic revisions for a variety of reasons (e.g., advancements in technology, technology obsolescence, the evolution of business practices), further enabling an efﬁcient CI/CD process with rigorous approvals." |

## Courseware as Code Tradeoffs

- Development work by engineers is required to set this up and maintain in (similar to the GitLab Handbook)
- Interactive and design elements standard in the L&D industry is not yet incorporated
- Requires some understanding of DevOps concepts to implement.

[Next Page](https://devops-education.gitlab.io/cwac-workshop/course/gitlab_overview/)
