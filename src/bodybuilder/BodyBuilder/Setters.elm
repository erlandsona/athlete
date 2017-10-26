module BodyBuilder.Setters exposing (..)


setBox : b -> { a | box : List b } -> { a | box : List b }
setBox =
    flip setBoxIn


setBoxIn : { a | box : List b } -> b -> { a | box : List b }
setBoxIn ({ box } as record) boxAttribute =
    { record | box = boxAttribute :: box }


setBlock : b -> { a | block : List b } -> { a | block : List b }
setBlock =
    flip setBlockIn


setBlockIn : { a | block : List b } -> b -> { a | block : List b }
setBlockIn ({ block } as record) blockAttribute =
    { record | block = blockAttribute :: block }


setMaybeBlock : b -> { a | block : Maybe (List b) } -> { a | block : Maybe (List b) }
setMaybeBlock =
    flip setMaybeBlockIn


setMaybeBlockIn : { a | block : Maybe (List b) } -> b -> { a | block : Maybe (List b) }
setMaybeBlockIn ({ block } as record) blockAttribute =
    { record
        | block =
            case block of
                Nothing ->
                    Just [ blockAttribute ]

                Just modifiers ->
                    Just (blockAttribute :: modifiers)
    }


setFlexContainerProperties : c -> { b | flexContainerProperties : List c } -> { b | flexContainerProperties : List c }
setFlexContainerProperties =
    flip setFlexContainerPropertiesIn


setFlexContainerPropertiesIn : { b | flexContainerProperties : List c } -> c -> { b | flexContainerProperties : List c }
setFlexContainerPropertiesIn ({ flexContainerProperties } as record) flexContainerAttribute =
    { record | flexContainerProperties = flexContainerAttribute :: flexContainerProperties }


setFlexItemProperties : c -> { b | flexItemProperties : List c } -> { b | flexItemProperties : List c }
setFlexItemProperties =
    flip setFlexItemPropertiesIn


setFlexItemPropertiesIn : { b | flexItemProperties : List c } -> c -> { b | flexItemProperties : List c }
setFlexItemPropertiesIn ({ flexItemProperties } as record) flexItemAttribute =
    { record | flexItemProperties = flexItemAttribute :: flexItemProperties }


setGridContainerProperties : c -> { b | gridContainerProperties : List c } -> { b | gridContainerProperties : List c }
setGridContainerProperties =
    flip setGridContainerPropertiesIn


setGridContainerPropertiesIn : { b | gridContainerProperties : List c } -> c -> { b | gridContainerProperties : List c }
setGridContainerPropertiesIn ({ gridContainerProperties } as record) gridContainerAttribute =
    { record | gridContainerProperties = gridContainerAttribute :: gridContainerProperties }


setGridItemProperties : c -> { b | gridItemProperties : List c } -> { b | gridItemProperties : List c }
setGridItemProperties =
    flip setGridItemPropertiesIn


setGridItemPropertiesIn : { b | gridItemProperties : List c } -> c -> { b | gridItemProperties : List c }
setGridItemPropertiesIn ({ gridItemProperties } as record) gridItemAttribute =
    { record | gridItemProperties = gridItemAttribute :: gridItemProperties }


setStyleIn : { a | style : b } -> b -> { a | style : b }
setStyleIn record styleAttribute =
    { record | style = styleAttribute }


setClick : b -> { a | click : Maybe b } -> { a | click : Maybe b }
setClick click record =
    { record | click = Just click }


setDoubleClick : b -> { a | doubleClick : Maybe b } -> { a | doubleClick : Maybe b }
setDoubleClick click record =
    { record | doubleClick = Just click }


setOnMouseUp : b -> { a | mouseUp : Maybe b } -> { a | mouseUp : Maybe b }
setOnMouseUp mouseUp record =
    { record | mouseUp = Just mouseUp }


setOnMouseOut : b -> { a | mouseOut : Maybe b } -> { a | mouseOut : Maybe b }
setOnMouseOut mouseOut record =
    { record | mouseOut = Just mouseOut }


setOnMouseOver : b -> { a | mouseOver : Maybe b } -> { a | mouseOver : Maybe b }
setOnMouseOver mouseOver record =
    { record | mouseOver = Just mouseOver }


setOnMouseDown : b -> { a | mouseDown : Maybe b } -> { a | mouseDown : Maybe b }
setOnMouseDown mouseDown record =
    { record | mouseDown = Just mouseDown }


setOnMouseLeave : b -> { a | mouseLeave : Maybe b } -> { a | mouseLeave : Maybe b }
setOnMouseLeave mouseLeave record =
    { record | mouseLeave = Just mouseLeave }


setOnMouseEnter : b -> { a | mouseEnter : Maybe b } -> { a | mouseEnter : Maybe b }
setOnMouseEnter mouseEnter record =
    { record | mouseEnter = Just mouseEnter }


setOnMouseEventsIn : { a | onMouseEvents : Maybe b } -> b -> { a | onMouseEvents : Maybe b }
setOnMouseEventsIn record onMouseEvents =
    { record | onMouseEvents = Just onMouseEvents }


setFlexContainer : a -> { b | flexContainer : Maybe a } -> { b | flexContainer : Maybe a }
setFlexContainer modifiers ({ flexContainer } as record) =
    { record | flexContainer = Just modifiers }


setFlexItem : a -> { b | flexItem : Maybe a } -> { b | flexItem : Maybe a }
setFlexItem modifiers ({ flexItem } as record) =
    { record | flexItem = Just modifiers }


setGridContainer : a -> { b | gridContainer : Maybe a } -> { b | gridContainer : Maybe a }
setGridContainer modifiers ({ gridContainer } as record) =
    { record | gridContainer = Just modifiers }


setGridItem : a -> { b | gridItem : Maybe a } -> { b | gridItem : Maybe a }
setGridItem modifiers ({ gridItem } as record) =
    { record | gridItem = Just modifiers }


setMediaBlock : a -> { b | block : Maybe a } -> { b | block : Maybe a }
setMediaBlock modifiers ({ block } as record) =
    { record | block = Just modifiers }


setMediaBox : a -> { b | box : Maybe a } -> { b | box : Maybe a }
setMediaBox modifiers ({ box } as record) =
    { record | box = Just modifiers }
