#import "@preview/ctheorems:1.1.2": *
#let conf(
  title: [],
  institute: [],
  auther: [],
  class: [],
  doc,
) = [
  #show: thmrules.with(qed-symbol: $square$)
  #set heading(numbering: "A.1.")
  #set text(font: "Source Serif Pro", lang: "zh", region: "cn")

  #set page(
    header: context {
      if counter(page).get().first() > 1 [
        #text(
        font: "New Computer Modern",
        style: "italic",
        class,) - #text(
          font: "New Computer Modern",
          title)
        #h(1fr)
        #counter(page).display()
        #line(
          length: 100%,
          start: (0pt, -10.5pt),
          stroke: 0.4pt,
        )
      ]
    },
    footer: context {
      if counter(page).get().first() > 1 [
        #h(1fr)
        #text(
          font: "New Computer Modern",
          style: "italic",
          auther,
        )
        #line(
          length: 100%,
          start: (0pt, -25pt),
          stroke: 0.4pt,
        )
      ] else [
        #align(center)[#counter(page).display()]
      ]
    },
  )

  #align(center)[
    #text(
      11pt,
      weight: "thin",
      font: "New Computer Modern",
      style: "normal",
      smallcaps(institute),
    )
    #line(
      length: 100%,
      start: (0pt, -5pt),
      stroke: 0.4pt,
    )
    #move(
      dx: 0pt,
      dy: -9pt,
      text(
        17pt,
        weight: "black",
        font: "New Computer Modern",
        style: "normal",
        title,
      ),
    )
    #move(
      dx: 0pt,
      dy: -9pt,
      text(
        11pt,
        weight: "light",
        font: "New Computer Modern",
        style: "italic",
        auther,
      ),
    )
    #line(
      length: 100%,
      start: (0pt, -13pt),
      stroke: 0.4pt,
    )
    #move(
      dx: 0pt,
      dy: -19pt,
      text(
        11pt,
        weight: "thin",
        font: "New Computer Modern",
        style: "normal",
        class,
      ),
    )
  ]
  #doc
]

#let proof = thmproof("proof", "Proof")

#let problem(item,index: "#") ={
  layout(size => [
#let pro = {
    move(
      dx: 0pt,
      dy: -12.5pt,
      block(
        fill: orange.lighten(95%),
        inset: (x: 4pt, y: 4pt),
         stroke: 1pt + orange ,
        height: 15pt,
        radius:4pt,
        "Problem "+ index
        ))+ move(
      dx: 0pt,
      dy: -19pt,
       item,)
  }

  #let orignal = {
   block(
      fill: orange.lighten(90%),
      radius:4pt,
      inset: (x: 8pt, y: 5pt),
      width: 100%,
      height: auto,
      above: 2.2em,
      stroke: 1.5pt + gradient.linear(..color.map.flare),
      breakable: false,
     pro, 
     ) 
  }
  #let (height,) = measure(
    block(width: size.width, orignal),
  )
  #v(10pt)
  
  #block(
      fill: orange.lighten(90%),
      radius:4pt,
      inset: (x: 8pt, y: 5pt),
      width: 100%,
      height: height - 10pt,
      above: 2.2em,
      stroke: 1.5pt + gradient.linear(..color.map.flare),
      breakable: false,
     pro, 
     )
])
 
 }

#let theorem = thmbox(
"theorem", // identifier
"Theorem", // head
)
#let lemma = thmbox(
"theorem", // identifier - same as that of theorem
"Lemma", // head
fill: rgb("#efe6ff")
)
#let example = thmplain(
  "example",
  "Example",
).with(numbering: none)

#let solution = thmplain(
  "theorem",
  "Solution",
).with(numbering: none)
