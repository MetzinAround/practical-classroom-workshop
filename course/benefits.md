---
title: Benefits of Courseware as Code
nav_order: 3
parent: Introduction
---
# Courseware as Code is Revolutionary

Courseware as Code is a revolutionary approach to designing, creating, and maintaining course content and all related assets.  According to the Army Cyberschool “Leveraging applicable aspects of the software development lifecycle to courseware facilitates discussions of suggested changes amongst faculty, provides transparency in updates, enables custom workﬂows based on the complexity of course content, and allows faculty, students, and workforce members to identify issues and contribute Content.”

**The content generation process is rife with challenges all and opportunities including:**

- Time to content delivery
- The content becomes immediately obsolete after development
- Collaboration with SMEs for content development is very difficult on existing industry solutions
- Complex toolchains for each part of the content development cycle
- The ability to scale is highly limited with existing toolchains
- Repetition in the process
- Lengthy and difficult feedback process
- No version control
- Manual infrastructure

**Courseware as Code is revolutionary because it brings all of the GitLab values to the process via git, central repositories, versioning, and CI/CD.**

Content generation from storyboard to delivery uses the DevOps lifecycle:
- Markdown for content (text, slides, etc)
- Git for distributed editing, contribution, version control
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
GitLab's six core values are 🤝  Collaboration, 📈 Results , ⏱️ Efficiency, 🌐 Diversity, Inclusion & Belonging, 👣 Iteration, and 👁️ Transparency, and together they spell the CREDIT we give each other by assuming good intent. We react to them with values emoji and they are made actionable below. [Read more here](https://about.gitlab.com/handbook/values/).

Courseware as code is exciting to us because it connects education and our values directly with a DevOps framework. Here are some examples.

| Value| Courseware as Code Examples | Army CyberSchool Data Points- [see pdf ](/uploads/89d95228727035e704d8e21c9917a048/Courseware_as_Code.pdf)|
| ------ | ------ |------- |
| Collaboration| subject matter experts can directly create original content such as exercises and course sections; they can also easily review MRs before new content is added to courses | contributors raised over 140 issues of which over 130 were resolved. |
| Results | Because everyone can contribute, third party tools are not a blocker to scaling. Everyone can author code and contribute.  the CI/CD pipelines automatically build content whenever a change is made and deployed to the LXP/LMS automatically.  | GitLab instance has synchronized over 175 users with an average of 6.7 merge requests submitted per user. Out of these users, over 100 of them are not USACYS faculty. These external users include students and workforce members|
| Efficiency | Feedback can be provided directly from the content in a form of an MR or issue. CI/CD pipelines reduce the need for repetitive work. Content from the handbook and GitLab repos remain in their home location and “includes” are used to directly build in the content from the other location. When the content changes, the course automatically changes. Example - if a figure is updated somewhere, it is automatically updated in the content via CI/CD with no additional work.  Flags can be set for when changes may require additional work. | In just over one year (inaugural) our courseware base had 6,787 commits over 15 projects with an average of 26.5 commits per instructor |
| D&I&B | Because third-party tools are not required to generate content, everyone can access the code.| "We recommend other educational institutions consider DVCS and automated workﬂows to enable transparency in materials and organized synchronization that empowers widespread contribution to further education" |
| Iteration |Git, distributed editing, and version control allow the content to change with the pace of the software. Small changes are easy and simple. The ability to scale increases exponentially. | Went from a 3-year feedback cycle to instant. |
| Transparency | Courseware is open to everyone.  | "The ability to crowdsource courseware development and co-opt distributed experts exponentially increases capacity and capability of curriculum development teams. Additionally, a distributed core of subject matter experts can rapidly review courseware that requires dynamic revisions for a variety of reasons (e.g., advancements in technology, technology obsolescence, the evolution of business practices), further enabling an efﬁcient CI/CD process with rigorous approvals." |

## Courseware as Code Tradeoffs

- Development work by engineers is required to set this up and maintain in (similar to the GitLab Handbook)
- Interactive and design elements standard in the L&D industry is not yet incorporated
- Requires some understanding of DevOps concepts to implement.
