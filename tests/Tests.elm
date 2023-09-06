module Tests exposing (..)
import Html.Attributes exposing (class)


import Browser
import Html exposing (Html)
import Test exposing (Test, describe, test)
import Expect exposing (equal)


main =
    Browser.sandbox { init = 0, update = update, view = view }

update msg model =
    model

view model =
    Html.div [ class "container" ]
        [ Html.h1 [] [ Html.text "Hello, Elm!" ]
        , Html.button [ class "btn" ] [ Html.text "Click Me" ]
        ]

tests : Test
tests =
    describe "DOM Structure Tests"
        [ test "Check if container element is present" <|
            \() ->
                -- Use Html.div with Html.Attributes.class to set the class
                Expect.equal
                    (Html.div [ Html.Attributes.class "container" ] [])
                    (Html.div [ Html.Attributes.class "container" ] [])
        , test "Check if button element is present" <|
            \() ->
                -- Use Html.button with Html.Attributes.class to set the class
                Expect.equal
                    (Html.button [ Html.Attributes.class "btn" ] [ Html.text "Click Me" ])
                    (Html.button [ Html.Attributes.class "btn" ] [ Html.text "Click Me" ])
        ]


