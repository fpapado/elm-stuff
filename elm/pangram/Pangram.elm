module Pangram exposing (..)

import String exposing (contains, split, toLower)
import List exposing (filter, length, map)


isPangram : String -> Bool
isPangram str =
    let
        all_letters =
            split "" "abcdefghijklmnopqrstuvwxyz"

        normal =
            toLower str

        chars_contained =
            filter (\x -> contains x normal) all_letters
    in
        chars_contained == all_letters
