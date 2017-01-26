module Triangle exposing (..)


version : Int
version =
    2


type Kind
    = Equilateral
    | Isosceles
    | Scalene


type alias Triangle =
    { a : number
    , b : number
    , c : number
    , valid : Bool
    , message : String
    }


triangleKind : number -> number -> number -> Result String Kind
triangleKind a b c =
    case validate a b c of
        Ok a b c ->
            Ok Equilateral

        Err message ->
            Err message


validate : number -> number -> number -> Result String number number number
validate a b c =
    isValid


isValid : number -> number -> number -> Bool
isValid a b c =
    (a <= b + c) && (b <= a + c) && (c <= a + b)
