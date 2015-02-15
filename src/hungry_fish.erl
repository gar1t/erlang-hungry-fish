-module(hungry_fish).

-include("itch.hrl").

init() ->
    #{x => 6,
      y => -72,
      direction => 3,
      costumes => [open_mouth, closed_mouth],
      sounds => [chomp]}.

when_green_flag_clicked() -> hunt_for_fish().

hunt_for_fish() -> open_mouth(), swim().

open_mouth() -> switch_to_costume(open_mouth).

swim() -> wait_until_mouse_moves(), move_toward_mouse(), swim().

wait_until_mouse_moves() -> wait_until(fun mouse_moves/0).

mouse_moves() -> is_greater_than(distance_to(mouse_pointer), 10).

move_toward_mouse() -> point_towards(mouse_pointer), move().

move() -> move(3).

when_i_receive(got_me) -> chomp().

chomp() -> play_sound(chomp), repeat(2, fun snap_jaws/0).

snap_jaws() ->
    switch_to_costume(closed_mouth),
    wait(0.3),
    switch_to_costume(open_mouth).
