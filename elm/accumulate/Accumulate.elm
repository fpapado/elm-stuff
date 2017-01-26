module Accumulate exposing (..)


accumulate : (a -> b) -> List a -> List b
accumulate fun items =
    case items of
        [] ->
            []

        head :: tail ->
            (fun head) :: accumulate fun tail
