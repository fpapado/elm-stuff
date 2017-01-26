module Raindrops exposing (..)


raindrops : Int -> String
raindrops num =
    let
        raindrop_string =
            stringIfFactor "Pling" 3 num
                ++ stringIfFactor "Plang" 5 num
                ++ stringIfFactor "Plong" 7 num
    in
        if raindrop_string == "" then
            toString num
        else
            raindrop_string


stringIfFactor : String -> Int -> Int -> String
stringIfFactor str fac num =
    if num % fac == 0 then
        str
    else
        ""
