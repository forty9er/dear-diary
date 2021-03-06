# dear-diary

### Work in progress
I haven't finished this but I also haven't wanted to work on it for a while. At some point I broke part of the report as the top 10 words are not currently displayed. There are no acceptance tests though, so I didn't realise at the time and it hasn't proven to be a feature I miss too much. Having used it on and off over the past couple of years, I've found it to be useful at times but there are several issues that I've thought to fix but not taken the time to yet. I learned a lot about Bash and interestingly, the `bats` Bash testing framework.

### Premise
Every few weeks I attend a retrospective for my project at work. Problem is, I can't remember much before the events of last week.
I wanted a quick command-line app to record a diary entry at the end of my work day which wrote out to a text file on my machine.
Once that was up and running, I added a script to produce an HTML report of my diary entries, along with a pretty-ish representation of the top 10 project-specific words used in my diary entries.

### Prerequisites
Not many, as it's predominantly a shell script. The top-10 search is written in Ruby though as I haven't got the bash version to work quite as I wanted it to. Yet.
So, Ruby and Bundler. That's about it, assuming you are running an OS that can run a pretty basic bash script. I developed this on a Mac though, so I'm not using GNU Coreutils.

### Tests
The main bash script is tested using the `bats` test framework. You can run these tests from the top level by executing `./test/top_ten_spec.sh`
The Ruby search script is tested using `rspec`. Run `bundle install` from root directory to install rspec and then `rspec test` to run the tests.

Want to run *all* the tests? Why the hell not! `./test/full_suite.sh`. If you don't already have `rspec` installed this script will install it before running the tests.
### Usage
To write a diary entry: `./bin/dear-diary.sh`

To write a retro report: `./bin/retro.sh`
