#import "template.typ": *

#let conf(subject, locator, section, title, doc) = {
  set page(
    paper: "a4",
    header: align(right, lower(smallcaps(subject)) + [ ] + lower(smallcaps(locator))),
    margin: (
      left: 7.6em,
      right: 7.6em,
    ),
    numbering: "1 of 1",
    number-align: right,
  )
  set par(justify: true)
  show heading.where(
    level: 1
  ): it => block(width: 100%)[
    #set align(left)
    #set text(14pt, weight: "semibold", bottom-edge: "descender", top-edge: "ascender")
    #smallcaps(it.body)
  ]
  show heading.where(
    level: 2
  ): it => block(width: 100%)[
    #set align(left)
    #set text(13pt, weight: "regular", bottom-edge: "descender", top-edge: "ascender")
    #smallcaps(it.body)
  ]
  show heading.where(
    level: 6
  ): it => block(width: 100%)[
    #set align(left)
    #set text(13pt, weight: "semibold")
    #smallcaps(it.body)
  ]
  align(left, text(18pt)[
    ====== metaphysics of mind
  ])
  align(left, text(18pt)[
  *Substance dualism*
])
  set text(
      font: "Linux Libertine",
      size: 12pt,
    )
  columns(1, doc)
}

#show: doc => conf(
  [Philosophy], // Subject
  [*iv ii i*], // Locator
  [Metaphysics of Mind], // Section
  [Substance dualism], // Title
  doc,
)

#lorem(60)

#lorem(70)

= This is a title

#lorem(65)

$A+B->C$

== This is a second-level title

#lorem(60)

#lorem(70)

#lorem(65)

#lorem(60)

#lorem(70)

#lorem(65)