#let conf(subject, locator, doc) = {
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
  set text(
    font: "Linux Libertine",
    size: 12pt,
  )
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
    #lower(smallcaps(it.body))
  ]
  columns(1, doc)
}
