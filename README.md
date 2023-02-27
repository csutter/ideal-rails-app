# "Ideal" Rails app
A place to experiment with my approach to best practices in Rails applications

## Motivation
As a consultant, I get to work on a seemingly endless amount of Rails applications. Something I find
myself doing very often is referring back to notes or source code from previous projects to remind
myself of how I have solved specific issues around configuration (e.g. devcontainer setup or the
ever-changing Rails asset story) in the past.

This is my attempt to build some of that knowledge into an example application that I can refer back
to, and also share what my own current view of "good" looks like.

## Obligatory disclaimer
There is no such thing as a perfect application - as much as people would like to tell you
otherwise, building software is a craft as much as an engineering discipline. This application
contains patterns and "best practices" that *I personally* have found useful - but your mileage may
(and very much will) vary. It is also a work in progress and will never be finished, and what I
consider "good" today will likely change over time as well.

## Changes over "default" Rails configuration
- Avoid using Rails credentials management (prefer configuration as environment variables)
