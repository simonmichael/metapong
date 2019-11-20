     __  __ _____ _____  _       ____   ___  _   _  ____ 
    |  \/  | ____|_   _|/ \     |  _ \ / _ \| \ | |/ ___|
    | |\/| |  _|   | | / _ \    | |_) | | | |  \| | |  _ 
    | |  | | |___  | |/ ___ \   |  __/| |_| | |\  | |_| |
    |_|  |_|_____| |_/_/   \_\  |_|    \___/|_| \_|\____|


*I didn't have time to build a decent pong game,
so I started building a pong game building machine.*

## Introduction to META PONG

Meta Pong is a pong-like video game, built with Haskell,
and an experiment in efficient free software development.
It is owned by its player-contributors.

The game began on 2019-11-18, and new player-contributors are welcome.
Would you like to get involved right now ?
You can play at any of these levels:

- **Gamer**: - 
Install and enjoy the game.
<!-- [How to install and play](#how-to-install-and-play) -->

- **Playtester** - 
Play alternate versions of the game, vote on them, provide testing & feedback.
<!-- [How to playtest](#how-to-playtest) -->

- **Developer** - 
Improve the game, propose new versions of the game, following the Process.
<!-- [How to develop](#how-to-develop) -->

- **Maintainer** - 
Package and deliver the game, maintain the project, define/improve the Process.
<!-- [How to maintain](#how-to-maintain) -->

- **Haskeller** - 
Improve the haskell games ecosystem (in ways relating to this project).

<!-- And of course only the Emperor can play this role: -->

<!-- - **Emperor** -  -->
<!-- Provide infrastructure and judgements. -->

This evolving document defines our Process and serves as the Rules of Play.

Meta Pong's goals include:

- rapid production and delivery of wholesome FUN (and some KNOWHOW and EDUCATION)
- efficient collaboration, decision making, and engagement
- minimisation of toil, single-dev burnout and unhelpful STRESS
- advancement of the Haskell games scene

Our techniques/principles include:

- crowd-sourced playtesting and maintenance
- evolutionary product and process development
- Nomic style meta-gaming
- FUN, RESPECT and PERSISTENCE

The project's scope is limited to:
"pong-like games". There shall be a bouncing ball.

For practical reasons, infrastructure, broom-pushing and judgements are provided by the EMP:

     _____                                              __ 
    | ____|_ __ ___  _ __   ___ _ __ ___  _ __    ___  / _|
    |  _| | '_ ` _ \| '_ \ / _ \ '__/ _ \| '__|  / _ \| |_ 
    | |___| | | | | | |_) |  __/ | | (_) | |    | (_) |  _|
    |_____|_| |_| |_| .__/ \___|_|  \___/|_|     \___/|_|  
                    |_|                                    
         __  __      _          ____                   
        |  \/  | ___| |_ __ _  |  _ \ ___  _ __   __ _ 
        | |\/| |/ _ \ __/ _` | | |_) / _ \| '_ \ / _` |
        | |  | |  __/ || (_| | |  __/ (_) | | | | (_| |
        |_|  |_|\___|\__\__,_| |_|   \___/|_| |_|\__, |
                                                 |___/ 

By imperial decree this day Monday the 18th of November, 2019 CE., 
the EMP is (unless deposed.. but how..?):

Simon Michael <simon@joyful.com> (sm@Freenode, simonmic:matrix.org)

And the game of Meta Pong is declared open.

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

## Maintainers: How to maintain

Use #haskell-game to coordinate.

Get some PRs accepted as a developer.

Send PRs changing process docs (README.md..).
Help out with maintainer tasks (changelogs, packaging, install testing, support..).
