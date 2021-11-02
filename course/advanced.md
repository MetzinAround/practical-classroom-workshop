---
title: Advanced Applications
nav_order: 5
parent: Introduction
---

# Advanced Applications of Courseware as Code
One of the benefits of Courseware as code is that it is completely flexible. The model can be as simple as hosting a course in GitLab pages with assignments stored in GitLab issues. A complex system can also be built taking advantage of many of the DevOps stages and tools.


## Heriot-Watt University Courseware as Code

Heriot-Watt is a University in Scotland that has built a series of open-source tools and libraries for GitLab.  

>Scaling programming courses across our four global campuses pose significant challenges for assessment and giving effective student feedback. GitLab is integral to the Computer Science learning experience at Heriot-Watt University. It has replaced ad-hoc test scripts with a robust solution, homogenized across our courses.
Our objectives were: 1) test-driven assessment, 2) automating course deployment on GitLab, 3) peer feedback and peer testing and 4) web-based lab helper interaction. GitLab has removed the physical and time-limited constraints of face-to-face labs, with asynchronous web-based feedback.

## Summary of the automation at Heriot-Watt

Tooling that automates GitLab course creation enables scalability: of group hierarchies and group membership allows HW institutes to scale across courses, across year groups and across global campuses.

Rule based API for writing GitLab file hooks
- Programmatic automated rule-based course creation
- Automation: Add students to course groups; Add lab helpers to student forks.
- Compiled and deployed as a file hook on the server
- <a href="https://www.macs.hw.ac.uk/~rs46/posts/2020-06-06-gitlab-system-hooks.html" target="_blank">Blog</a>: “GitLab Automation with Haskell file hooks”


High level programming API for the GitLab API (gitlab-haskell)
- For writing GitLab programs
- For use in an interactive REPL environment
- API: <a href="https://hackage.haskell.org/package/gitlab-haskell" target="_blank">here</a>, open source:   <a href="https://gitlab.com/robstewart57/gitlab-haskell" target="_blank">here</a>.


Command line tool for executing batch GitLab operations (gitlab-tools)
- Generate reports about student projects
- Identifies students lacking engagement
- Plagiarism checks using MOSS
- <a href="https://www.macs.hw.ac.uk/~rs46/posts/2020-02-01-gitlab-tools.html" target="_blank">Blog</a>: “A command line tool for bulk GitLab operations”
- <a href="https://gitlab.com/robstewart57/gitlab-tools" target="_blank">Open source</a>

Read more in the <a href="https://about.gitlab.com/customers/heriot_watt_university/" target="_blank">Heriot-Watt Case Study</a> and view the GitLab Commit 2021 Presentation <a href="https://www.youtube.com/watch?v=1y_RbYqPpDg" target="_blank">GitLab Users in the Making</a>.

[Next Page](https://devops-education.gitlab.io/cwac-workshop/course/create/)
