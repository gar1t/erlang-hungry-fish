-module(fish).

init() ->
    #{backdrop => stage,
      sprites => [goldfish(), hungry_fish, instructions]}.

goldfish() ->
    [{goldfish, #{x => -185, y => -84, direction => 93}},
     {goldfish, #{x =>  -27, y =>  17, direction => 66}},
     {goldfish, #{x =>   10, y => -49, direction => 163}}].
