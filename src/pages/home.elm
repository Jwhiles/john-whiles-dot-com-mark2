module Main exposing (..)

import Style
import Markdown
import Element exposing (el, text)
import Element.Attributes exposing (..)


type MyStyles
    = Title
    | None


stylesheet =
    Style.styleSheet []


main =
    Element.layout stylesheet <|
        el None [ center, width (px 800) ] <|
            Element.column None
                [ center, spacing 20 ]
                [ title
                , Element.row None [ spread ] [ navStuff, picture ]
                , Element.html cv
                ]


navStuff =
    Element.column None [ center, spacing 20 ] [ title, title, title ]


picture =
    el None [] (text "image here")


title =
    el None [] (text "title")



-- cv : Html msg


cv =
    Markdown.toHtml [] """

# John Whiles - CV
## Profile
A full stack JavaScript developer based in London.

I care about improving diversity and accessibility in tech. I value simplicity
in
    design and enjoy using functional techniques to write comprehensible and
    testable
    code.


## Tech Experience
### Technologies used professionally
__Node.js__,
__Webpack__,
__React__,
__Redux__,
__Jest__,
__TypeScript__,
__Elm__,

### JavaScript Engineer - Just Giving
__March 2017 - Present__

Creating great user experiences for charities and their supporters using the
best of the modern JavaScript ecosystem. As part of a cross functional team I
work closely with C# developers and web designers using agile methodologies to
deliver consistent development whilst ensuring end-user satisfaction.
Very involved in maintaining a library of reusable code which includes user
interface components, a comprehensive style guide, and server side utilities.

### Developer - Founders and Coders
__October 2016 - February 2017__

During this highly selective, intensive web development bootcamp I learnt the
fundamentals of working as a software developer by creating a series of projects
as part
of agile teams. Working across the stack from front ends to SQL databases I
created  applications ranging from search auto-completes, to minimal viable
products for charity partners.

## Formal Education
### Royal Holloway, University of London, *2010 - 2013*
BA Politics with Philosophy (2:1)

### Bosworth Community College, *2008 - 2010*
A-Level Chemistry, Mathematics, and English (A, A, B)

## Other Experience
### Graduate Merchandiser, Next, *2016*

### Press Officer, Citizen's Advice Bureau, *2014 to 2015*

### Model, Premium Models, *2013 to 2015*

"""
