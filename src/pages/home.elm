module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , subscriptions = always Sub.none
        , update = update
        }


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( Model, Cmd.none )


type Msg
    = Default


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Default ->
            ( model, Cmd.none )


view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ h1 [] [ text "John Whiles Dot Com" ]
        , description
        , ul []
            [ li []
                [ a [ href "//johnwhiles.bandcamp.com" ]
                    [ text "Music"
                    ]
                ]
            , li [] [ a [ href "//github.com/jwhiles" ] [ text "Github profile" ] ]
            ]
        ]


description : Html Msg
description =
    div [] [ text "hello I am john" ]
