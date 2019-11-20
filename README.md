     __  __ _____ _____  _       ____   ___  _   _  ____ 
    |  \/  | ____|_   _|/ \     |  _ \ / _ \| \ | |/ ___|
    | |\/| |  _|   | | / _ \    | |_) | | | |  \| | |  _ 
    | |  | | |___  | |/ ___ \   |  __/| |_| | |\  | |_| |
    |_|  |_|_____| |_/_/   \_\  |_|    \___/|_| \_|\____|


*I didn't have time to build a decent pong game, so I started building a pong game building machine.*
<!-- *No-one has time to build a decent pong game, so let's build a pong game building machine.* -->

## Introduction to Meta Pong

Meta Pong is a pong-like video game, built with Haskell,
and an experiment in efficient free software development.
It is owned and directed by its Player-Contributors,
with an ever-evolving Process.

The game was declared open on the 18th of November 2019,
and new Player-Contributors are welcome!
Would you like to get involved right now ?
You can play at any of these levels:

- **[Gamer](#gamers-how-to-install-and-play)** - 
Install and enjoy the game.

- **[Playtester](#playtesters-how-to-playtest)** - 
Play alternate versions of the game, vote on them, provide testing & feedback.

- **[Developer](#developers-how-to-develop)** - 
Improve the game, propose new versions of the game.

- **[Haskeller](#haskellers-how-to-grow-the-ecosystem)** - 
Improve the haskell games ecosystem and state of the art (in ways relating to this project).

- **[Maintainer](#maintainers-how-to-maintain)** - 
Package and deliver the game, maintain the project, define/improve the Process.

- **Emperor** -
Ha! Ha! Only the Emperor can be the Emperor, naturally.
The Emperor provides infrastructure, guidance and judgements.

**Meta Pong's goals include:**

- rapid production and delivery of wholesome Fun
- and some Knowhow and Education
- efficient collaboration, decision making, and onboarding/uplevelling
- minimisation of toil, single-developer burnout and unhelpful Stress
- advancement of the Haskell games scene

**Our techniques/principles include:**

- crowd-sourced playtesting and maintenance
- evolutionary product and process development
- Nomic style meta-gaming
- Fun, Respect, Persistence and Restraint.

**The Process:**

- This document defines our Process.
- The Process serves as the Rules of Play, which we strive to follow.
- Its purpose is to maximise Fun, the prime directive of this project.
- It may at times seem arbitrary or irritating, but the Process helps us to be effective and avoid timewasting.
- The Process evolves.

**The scope of this project is limited to:**

- "pong-like games". There shall be a bouncing ball.

**The scope for 201911 is strictly limited to:**

- a TUI approximation of classic pong.

**We discuss and co-ordinate at:**

- the [#haskell-game](https://kiwiirc.com/nextclient/#ircs://irc.freenode.net/#haskell-game) channel on Freenode
  ([#freenode_#haskell-game:matrix.org](https://matrix.to/#/#freenode_#haskell-game:matrix.org) on Matrix)


The Emperor, of course, is

> Simon Michael, <simon@joyful.com>, sm@Freenode, simonmic:matrix.org
>
>      _____                                              __ 
>     | ____|_ __ ___  _ __   ___ _ __ ___  _ __    ___  / _|
>     |  _| | '_ ` _ \| '_ \ / _ \ '__/ _ \| '__|  / _ \| |_ 
>     | |___| | | | | | |_) |  __/ | | (_) | |    | (_) |  _|
>     |_____|_| |_| |_| .__/ \___|_|  \___/|_|     \___/|_|  
>                     |_|                                    
>          __  __      _          ____                   
>         |  \/  | ___| |_ __ _  |  _ \ ___  _ __   __ _ 
>         | |\/| |/ _ \ __/ _` | | |_) / _ \| '_ \ / _` |
>         | |  | |  __/ || (_| | |  __/ (_) | | | | (_| |
>         |_|  |_|\___|\__\__,_| |_|   \___/|_| |_|\__, |
>                                                  |___/ 

*(unless deposed.. but how?..)*
 
## Gamers: How to install and play

```
$ git clone https://github.com/simonmichael/metapong.git
$ cd metapong
$ stack update && stack run
```
or
```
cabal update && cabal run metapong
```

## Playtesters: How to playtest

Install as above. 
Test what can be tested (docs, installation, game..)

Join #haskell-game on Freenode, send feedback to sm.

## Developers: How to develop

Use #haskell-game for help and coordination.

Fork the repo on github. Clone to your local machine. 

`make rerun` to install deps and run repeatedly (press q or ctrl-c to rebuild).

Make changes to 
source files (metapong.hs..),
packaging files (package.yaml, stack.yaml..),
or game docs (README.md..).

Commit changes in the style of past changes.
(Small, atomic, a clear sentence describing the change..)

Push changes to your repo. Submit a pull request. Follow up until the PR is resolved.

## Haskellers: How to grow the ecosystem

Use #haskell-game to coordinate.

Look for opportunities to import code, tools and techniques from the Haskell ecosystem to this project,
and vice versa.


## Maintainers: How to maintain

Use #haskell-game to coordinate.

Get some PRs accepted as a developer.

Send PRs changing process docs (README.md..).
Help out with maintainer tasks (changelogs, packaging, install testing, support..).
