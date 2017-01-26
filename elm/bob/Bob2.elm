module Bob exposing (..)

import String
import Regex


hey : String -> String
hey message =
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
    String.toUpper utt
        == utt
        && hasLetters utt


isQuestion : String -> Bool
isQuestion utt =
    String.endsWith "?" utt


isSilence : String -> Bool
isSilence utt =
    String.isEmpty (String.trim utt)


hasLetters : String -> Bool
hasLetters utt =
    Regex.contains (Regex.regex "[ABCDEFGHIJKLMNOPQRSTUVWXYZ]") (String.toUpper utt)
