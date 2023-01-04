---
layout: post
title: Installing Jekyll on macOS Ventura
category: guides
---

I have been following [this tutorial](https://sboots.ca/2021/07/20/installing-jekyll-locally-on-macos-big-sur/) by Sean Boots on how to install Jekyll on previous versions of macOS. It worked really well and provided a smooth installation process. However, since the latest version of macOS (Ventura) still ships with Ruby 2.6, some Gems started to complain about that. So, I found a new method that uses the excellent [rbenv](https://github.com/rbenv/rbenv) project to install a newer version of Ruby.

1. Install rbenv with Homebrew.

```
brew install rbenv ruby-build
```

Add this to `~/.zshrc` if you are using zsh:

```
eval "$(rbenv init - zsh)"
```

2. Change to your Jekyll blog's work directory, and install a newer version of Ruby:

```
rbenv install 3.1.3
```

3. Activate it for your Jekyll:

```
rbenv local 3.1.3
```

Check if you have got the desired version:

```
ruby -v
```

It should output something like this:

```
ruby 3.1.3p185 (2022-11-24 revision 1a6b16756e) [arm64-darwin22]
```

If you see an older version like this:

```
ruby 2.6.10p210 (2022-04-12 revision 67958) [universal.arm64e-darwin22]
```

Check previous steps.

4. Install the two essential gems:

```
gem install bundler jekyll
```

5. Configure bundle to use a local folder inside your website:

```
bundle config set --local path 'vendor/bundle'
```

6. Install the rest gems:

```
bundle install
```

If you encounter any issues with any Gems, try deleting the Gemfile.lock and running the command again.

7. Exclude the vendor folder in your Jekyll config file, for example:

```
exclude:
- .ruby-gemset
- .ruby-version
- Gemfile
- Gemfile.lock
- Makefile
- README.md
- vendor/
```

You will also need to add the following lines into `.gitignore`:

```
vendor/
.bundle/
```

8. Your Jekyll installation is now set up and ready to use. To launch a live preview, try running the following command:

```
bundle exec jekyll serve --watch
```

I hope you are enjoying the ride. However, that is also part of the reason I started working on [Planetable.xyz](https://planetable.xyz), a static site generator with a graphical interface and built-in IPFS node. With the Planet app, you don't need any command line knowledge to start blogging and self-hosting on your Mac.
