#import "@preview/callisto:0.3.0"

#set document(
  title: "Assignment 1: Data Visualization",
  author: "Mónica Plancha",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2cm, right: 2cm),
  header: align(right)[
    #text(8.5pt, fill: rgb("#718096"))[Assignment 1: Data Visualization]
  ],
  footer: context [
    #text(8.5pt, fill: rgb("#718096"))[
      #grid(
        columns: (1fr, auto),
        [Mónica Plancha],
        [#counter(page).display("1")],
      )
    ]
  ],
)

#set text(
  font: ("Segoe UI", "Calibri", "Arial"),
  size: 10pt,
)

#show raw: set text(
  font: ("Consolas", "DejaVu Sans Mono"),
  size: 8.5pt,
)

// Render joined notebook using Callisto with clean format precedence
#callisto.render(
  nb: json("Assignment-1.ipynb"),
  theme: "neat",
  format: (
    "text/vnd.typst",
    "image/svg+xml",
    "image/png",
    "image/jpeg",
    "text/markdown",
    "text/latex",
    "text/plain",
  ),
)
