Template for using [revealjs](https://github.com/hakimel/reveal.js)
with a custom DATEV-SCC theme.

# Idea

- Clone this repo
- Run the install script
- You have a clean new start for your presentation

# Prerequisites

Only tested with Linux. YMMV dependent on your OS.

- wget
- tar

Using RevealJs obviously requires NodeJs. This setup does not require NodeJs.

# Initial setup 

After cloning this repo:

- Run `./setup.sh`. It will remove the `.git` folder so you can start from scratch.

That's it!

# Project structure

- `slides`: the revealjs presentation. Copy it somewhere to generate an own
  git project.

# And Windows?

Pull requests are welcome! PowerShell or BAT Hackers, where are you?

Or use the minimal bash shell included with Git-for-windows. Or the Full-Linux Support with Windows10. Or Cygwin. Or...

# Showcases

- [x] Background images with markdown
- [x] Change highlighting of code samples (step by step)
- [x] slide customizations using `data-*` attributes in markdown
- [x] company logo on each slide
