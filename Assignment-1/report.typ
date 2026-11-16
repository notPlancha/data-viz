#import "@preview/callisto:0.3.0"

#set document(
  title: "Assignment 1: Data Visualization",
  author: "Mónica Plancha",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2cm, right: 2cm),
  header: context {
    if counter(page).get().first() > 1 [
      #grid(
        columns: (1fr, auto),
        align: (left, right),
        text(8.5pt, fill: rgb("#718096"))[Assignment 1: Data Visualization],
        text(8.5pt, fill: rgb("#a0aec0"))[Mónica Plancha],
      )
      #line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
    ]
  },
  footer: context {
    line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
    align(center)[
      #text(8.5pt, fill: rgb("#718096"))[#counter(page).display("1")]
    ]
  },
)

#set text(
  font: ("Segoe UI", "Calibri", "Arial"),
  size: 10pt,
  fill: rgb("#2d3748"),
)

#show heading.where(level: 1): it => block(
  above: 1.5em,
  below: 0.8em,
  text(1.35em, weight: "bold", fill: rgb("#1a365d"))[#it.body],
)

#show heading.where(level: 2): it => block(
  above: 1.2em,
  below: 0.6em,
  text(1.15em, weight: "bold", fill: rgb("#2b6cb0"))[#it.body],
)

#show raw: set text(
  font: ("Consolas", "DejaVu Sans Mono"),
  size: 8.5pt,
)

// Dynamic calculation of cell index ranges based on individual source notebooks
#let nb-oil = json("oil/Oil.ipynb")
#let nb-sales = json("sales/sales.ipynb")
#let nb-images = json("images/images.ipynb")

#let oil-count = nb-oil.cells.len()
#let sales-count = nb-sales.cells.len()
#let images-count = nb-images.cells.len()

#let oil-range = range(0, oil-count)
#let sales-range = range(oil-count, oil-count + sales-count)
#let images-range = range(oil-count + sales-count, oil-count + sales-count + images-count)

#let nb-merged = json("Assignment-1.ipynb")

#let render-section(cell-indices) = callisto.render(
  nb: nb-merged,
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
  cell-indices,
)

// -------------------------------------------------------------
// Document Introduction
// -------------------------------------------------------------
#align(center)[
  #v(0.3cm)
  #text(22pt, weight: "bold", fill: rgb("#1a365d"))[Assignment 1: Data Visualization] \
  #v(6pt)
  #text(12pt, fill: rgb("#4a5568"))[Questions 1-7] \
  #v(6pt)
  #text(9.5pt, fill: rgb("#718096"))[Mónica Plancha]
  #v(0.6cm)
]

#block(
  fill: rgb("#f7fafc"),
  stroke: 1pt + rgb("#e2e8f0"),
  inset: 12pt,
  radius: 6pt,
  width: 100%,
  [
    #text(weight: "bold", size: 10.5pt, fill: rgb("#2b6cb0"))[Overview & Structure] \
    #v(4pt)
    This report unifies and presents the visualizations and analytical findings for Assignment 1 across three core domains:
    - *Part 1: Oil Price Analysis (Q1 - Q3)*: Exploration of daily crude oil spot prices for West Texas Intermediate (WTI) and Brent crude from 1992 to 2002, identifying major historical price divergences.
    - *Part 2: Supermarket Sales Analysis (Q4 - Q5)*:  Analysis of supermarket transactional data across cities, analyzing transaction frequencies by product line and assessing the impact of payment methods on unit sales prices.
    - *Part 3: Image Processing & Visualizations (Q6 - Q7)*: Matrix transformation of image data, application of pseudocolor colormaps, and demonstration of multi-stage Pillow image processing filters (brightness, sharpness, blur, grayscale, resize, edges).
  ]
)

#v(0.5cm)

// -------------------------------------------------------------
// Part 1: Oil Price Analysis
// -------------------------------------------------------------
= Part 1: Oil Price Trend Analysis (Q1 - Q3)
#text(fill: rgb("#718096"), size: 9.5pt)[
  Exploration of daily crude oil spot prices for West Texas Intermediate (WTI) and Brent crude from 1992 to 2002, identifying major historical price divergences.
]

#v(0.3cm)
#render-section(oil-range)

#pagebreak()

// -------------------------------------------------------------
// Part 2: Supermarket Sales Analysis
// -------------------------------------------------------------
= Part 2: Supermarket Sales Data Analysis (Q4 - Q5)
#text(fill: rgb("#718096"), size: 9.5pt)[
  Analysis of supermarket transactional data across cities, analyzing transaction frequencies by product line and assessing the impact of payment methods on unit sales prices.
]

#v(0.3cm)
#render-section(sales-range)

#pagebreak()

// -------------------------------------------------------------
// Part 3: Image Processing & Visualizations
// -------------------------------------------------------------
= Part 3: Image Processing & Visualizations (Q6 - Q7)
#text(fill: rgb("#718096"), size: 9.5pt)[
  Matrix transformation of image data, application of pseudocolor colormaps, and demonstration of multi-stage Pillow image processing filters (brightness, sharpness, blur, grayscale, resize, edges).
]

#v(0.3cm)
#render-section(images-range)
