-module(goldfish).

-include("itch.hrl").

init() -> #{costume => goldfish}.

when_green_flag_clicked() -> reset(), swim().

reset() -> show(), point_right().

point_right() -> point(90).

swim() -> move_and_turn(), check_if_eaten().

move_and_turn() -> move(), random_turn(), if_on_edge_bounce().

move() -> move(2).

random_turn() -> turn(pick_random(-20, 20)).

check_if_eaten() -> die_if(in_big_fish_jaws()).

in_big_fish_jaws() -> color_is_touching(red, black).

die_if(true)  -> die(), wait(3), respawn();
die_if(false) -> keep_swimming().

die() -> broadcast(got_me), hide().

respawn() -> goto_spawn_location(), show().

goto_spawn_location() ->
    goto(-200, pick_random(-200, 200)).

keep_swimming() -> swim().
