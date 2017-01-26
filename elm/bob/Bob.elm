module Bob exposing (..)

import String
import Regex


hey : String -> String
hey message =
    categorise message


categorise : String -> String
categorise message =
    if (isShouting message) then
        "Whoa, chill out!"
    else if (isQuestion message) then
        "Sure."
    else if (isSilence message) then
        "Fine. Be that way!"
    else
        "Whatever."


isShouting : String -> Bool
isShouting utt =
    if ((String.toUpper utt) == utt && hasLetters utt) then
        True
    else
        False


isQuestion : String -> Bool
isQuestion utt =
    let
        punctuation =
            String.right 1 utt
    in
        if (punctuation == "?") then
            True
        else
            False


isSilence : String -> Bool
isSilence utt =
    if (String.isEmpty (String.trim utt)) then
        True
    else
        False


hasLetters : String -> Bool
hasLetters utt =
    Regex.contains (Regex.regex "[ABCDEFGHIJKLMNOPQRSTUVWXYZ]") (String.toUpper utt)
