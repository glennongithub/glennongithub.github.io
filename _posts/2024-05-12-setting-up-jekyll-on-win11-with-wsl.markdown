---
layout: post
title:  "Setting up local dev-env with jekyll for this gh-pages repo on win11 with WSL"
date:   2024-05-12 17:34:00 +0100
categories: jekyll win11 wsl
---
Resource. 

Decided to also test and verify the experience to use gh pages with jekyll when working on win11 with wsl

WSL installation was already done for my other work-projecy with a Ubuntu installation as my default WSL.
Ad in this WSL instance my .ssh keys was already set up for gh so no need to reconfigure that. 

Then I just started that from VS-code

In my Dev folder, where I keep all the dev-projects, i ran  
`git clone git@github.com:glennongithub/glennongithub.github.io.git`

`cd glennongithub.github.io/`

Then I followed the instructions from jekyll installation docs here: https://jekyllrb.com/docs/installation/ubuntu/
```bash
sudo apt-get install ruby-full build-essential zlib1g-dev
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
gem install jekyll bundler
bundle install
```

Then finally run
`bundle exec jekyll serve`

That should be it

For some reason the generation of posts seam to not work properly.
Found that the reason was that the date in the filename did not exactly match the date in the top metadata block at the top 