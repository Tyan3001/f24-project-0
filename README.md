# CSCI 561: Project 0

The purpose of the project is to familiarize you with functional programming and the Common Lisp development environment.

## Instructions

1. Form groups of 2-4 to work on this project.
    * "Groups" of one are not allowed.
        * The era of "cowboy coding" ended decades ago, all software engineering is a team effort.
        * You will receive a **-25% penalty** if you do not join a group.

1. From the github.com interface for this repo, click `Use this
   template` to import the starter code.  Create a new, **private** repo
   for your team.

1. Give all team members access to your new repo.

1. Clone the repo.

1. Complete the function stubs in `project-0.lisp`.

1. Answer the questions in `project-0-report.pdf`.
    * You **must** typeset your answers
    * ...and are *highly* recommended to use the provided `.tex` file

### Fine Print
This project has you implement several functions which CommonLisp supports in the standard library. Thus, you are **not allowed**, for this project only, to use any standard library functions which make the project trivial.

For example, the following solution to merge sort is unacceptable and would receive a zero:
```Lisp
(defun merge-sort (list predicate)
    (sort list predicate))
```

If you are even remotely concerned whether you are in violation of this rule, ask on Ed. 
* Zeros will be given for *all* functions which violate this rule, with no second chances given.



## Submission

### Code
Submit `project-0.lisp` (and *only* that file) to [Project 0 - Code]() on Gradescope before the due date.

* Make sure to add your teammates to the submission.

Keep the same function names as given in the starter code. The grading scripts test your code based on these function names, and if you change them, your code will not pass the tests.

### Report
Submit `project-0-report.pdf` to [Project 0 - Report]() on Gradescope before the due date.

Make sure to add your teammates to the submission.

### Grading

Your code will be run for grading using (approximately) the following procedure:

```sh
sbcl --load project-0.lisp --load testcases.lisp
```

Your code needs to produce the correct result to receive credit for each testcase. Make sure your code loads cleanly without compilation errors, extra I/O, or other side effects.