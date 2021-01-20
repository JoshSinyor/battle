# Battle Development Process

This file documents the planning and programming of the Week 3 Paired Programming Project 'Battle'.

1.  [x] Identifying User Stories, and sorting them into Objects and their Attributes, and the Messages to be sent between them.
2.  [x] Identifying Features
3.  [ ] Creating individual files for each Class.
4.  [ ] Creating individual RSpec files for each Class.
5.  [ ] Write RSpec Unit tests for each individual feature.

## User Stories

```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first
```

## Objects, Variables & Methods

- `Game`
  - `#start_game`
  - `#confirm_move`
  - `#switch_turns`
  - `#end_game`
    - `@outcome`
- `Player`
  - `@player_name`
  - `@hit_points`
    - `#see_hit_points`
- `Move`
  - `#attack`
  - `#paralyse`
  - `#poison`
  - `#sleep`
  - `#heal`
  - `#remove_hit_points`
  - `#add_hit_points`

##
