// =============================================================
// Typst Template for Assignment Report
// Provides page styling, typography, cover page, running headers,
// footers, and automatic per-section figure numbering (A.X).
// =============================================================

// Helper to format datetime as "Month dayth, year" (e.g. November 24th, 2026)
#let format-date(d) = {
  if type(d) == datetime {
    let day = d.day()
    let suffix = if day in (11, 12, 13) {
      "th"
    } else if calc.rem(day, 10) == 1 {
      "st"
    } else if calc.rem(day, 10) == 2 {
      "nd"
    } else if calc.rem(day, 10) == 3 {
      "rd"
    } else {
      "th"
    }
    let month = d.display("[month repr:long]")
    let year = d.display("[year]")
    [#month #day#suffix, #year]
  } else {
    d
  }
}

#let template(
  title: "Assignment 1: Data Visualization",
  subtitle: "",
  author: "Mónica Plancha",
  email: "",
  course-code: "D7055E",
  course-name: "Data Visualization",
  school: "Luleå University of Technology",
  date: auto,
  par-spacing: 1.0em,
  body,
) = {
  let display-date = if date == auto {
    format-date(datetime.today())
  } else if type(date) == datetime {
    format-date(date)
  } else {
    date
  }
  // Document metadata
  set document(
    title: title,
    author: author,
  )

  // Page geometry and running header / footer
  set page(
    paper: "a4",
    margin: (top: 2cm, bottom: 2cm, left: 2cm, right: 2cm),
    header: context {
      // Running header on content pages (pages 2 to 4)
      if counter(page).get().first() > 1 [
        #grid(
          columns: (1fr, auto),
          align: (left, right),
          text(8.5pt)[#if course-code != "" [#course-code: ]#title],
          text(8.5pt)[#author],
        )
        #line(length: 100%, stroke: 0.5pt + luma(200))
      ]
    },
    footer: context {
      // Page number on content pages (pages 2 to 4)
      if counter(page).get().first() > 1 [
        #line(length: 100%, stroke: 0.5pt + luma(200))
        #align(center)[
          #text(8.5pt)[#counter(page).display("1")]
        ]
      ]
    },
  )

  // Typography
  set text(
    font: ("Segoe UI", "Calibri", "Arial"),
    size: 9.5pt,
  )

  // Paragraph styling & consistent inter-paragraph spacing
  set par(
    leading: 0.65em,
    spacing: par-spacing,
  )

  // Section counter for figure numbering: A.X (Section.Figure)
  let section-counter = counter("report-section")

  show heading.where(level: 1): it => context {
    if counter(page).get().first() > 1 {
      section-counter.step()
      counter(figure.where(kind: image)).update(0)
    }
    block(
      above: 0.8em,
      below: 0.5em,
      text(1.3em, weight: "bold")[#it.body],
    )
  }

  show heading.where(level: 2): it => block(
    above: 0.6em,
    below: 0.4em,
    text(1.05em, weight: "bold")[#it.body],
  )

  // Figure numbering per section: A.X
  set figure(numbering: n => context {
    let s = section-counter.get().first()
    [#s.#n]
  })

  show figure.caption: it => [
    #text(8pt)[
      *#it.supplement #context { it.counter.display(it.numbering) }*: #it.body
    ]
  ]

  // =============================================================
  // Cover Page (Page 1)
  // =============================================================

  place(top + center, dy: 1.5cm)[
    #if school != "" [
      #text(11pt, weight: "medium", fill: luma(80))[#school] \
      #v(0.3em)
    ]
    #if course-code != "" or course-name != "" [
      #text(11.5pt, weight: "bold")[
        #course-code #if course-code != "" and course-name != "" [—] #course-name
      ]
      #v(0.8em)
    ]
    #text(26pt, weight: "bold")[#title]
    #if subtitle != "" [
      #v(0.8em)
      #text(13.5pt, weight: "medium")[#subtitle]
    ]
  ]

  place(center + horizon, dy: 0.5cm)[
    #block(width: 80%)[
      #align(left)[
        #outline(title: [Table of Contents], indent: auto)
      ]
    ]
  ]

  place(bottom + center, dy: -2cm)[
    #text(12pt, weight: "bold")[#author] \
    #if email != "" [
      #v(0.4em)
      #text(8.5pt)[#email] \
    ]
    #if display-date != none and display-date != "" [
      #v(0.5em)
      #text(10pt)[#display-date]
    ]
  ]

  pagebreak()

  body
}

// Aliases for convenience
#let assignment = template
#let project = template
