#set document(
  title: "Assignment 1: Data Visualization",
  author: "Mónica Plancha",
)

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 2cm, right: 2cm),
  header: context {
    // Only show running header on content pages (pages 2 to 4)
    if counter(page).get().first() > 1 [
      #grid(
        columns: (1fr, auto),
        align: (left, right),
        text(8.5pt)[Assignment 1: Data Visualization],
        text(8.5pt)[Mónica Plancha],
      )
      #line(length: 100%, stroke: 0.5pt + luma(200))
    ]
  },
  footer: context {
    // Only show page number on content pages (pages 2 to 4)
    if counter(page).get().first() > 1 [
      #line(length: 100%, stroke: 0.5pt + luma(200))
      #align(center)[
        #text(8.5pt)[#counter(page).display("1")]
      ]
    ]
  },
)

#set text(
  font: ("Segoe UI", "Calibri", "Arial"),
  size: 9.5pt,
)

#show heading.where(level: 1): it => block(
  above: 0.8em,
  below: 0.5em,
  text(1.3em, weight: "bold")[#it.body],
)

#show heading.where(level: 2): it => block(
  above: 0.6em,
  below: 0.4em,
  text(1.05em, weight: "bold")[#it.body],
)

#show figure.caption: it => [
  #text(8pt)[
    *#it.supplement #context { it.counter.display(it.numbering) }*: #it.body
  ]
]

// =============================================================
// PAGE 1: Cover Page
// =============================================================

#place(top + center, dy: 2cm)[
  #text(26pt, weight: "bold")[Assignment 1: Data Visualization]
  
  #v(0.8em)
  #text(13.5pt, weight: "medium")[Exploratory Analysis, Price Divergences, and Image Processing]
]

#place(center + horizon, dy: 0.5cm)[
  #block(width: 80%)[
    #align(left)[
      #outline(title: [Table of Contents], indent: auto)
    ]
  ]
]

#place(bottom + center, dy: -2cm)[
  #text(12pt, weight: "bold")[Mónica Plancha] \
  #v(0.4em)
  #text(8.5pt)[31565873+notPlancha\@users.noreply.github.com] \
  #v(0.5em)
  #text(10pt)[November 24th, 2026]
]

#pagebreak()

// =============================================================
// PAGE 2: Part 1 - Oil Price Trend Analysis (Q1 - Q3)
// =============================================================
#set figure(numbering: n => [1.#n])
#counter(figure.where(kind: image)).update(0)

= Part 1: Oil Price Trend Analysis (Q1–Q3)

#v(0.3cm)

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  [
    #figure(
      image("figures/oil/oil_wti_price_trend.png", width: 100%),
      caption: [WTI Crude Daily Price Trend (1992–2002).],
    )
  ],
  [
    #figure(
      image("figures/oil/oil_brent_price_trend.png", width: 100%),
      caption: [Brent Crude Daily Price Trend (1992–2002).],
    )
  ],
  [
    #figure(
      image("figures/oil/oil_comparative_trend_divergence.png", width: 100%),
      caption: [Comparative Price Trend & Top Divergence Spans.],
    )
  ],
  [
    #figure(
      image("figures/oil/oil_price_difference_spread.png", width: 100%),
      caption: [Daily Price Difference & Divergence Tiers.],
    )
  ],
)

#v(0.4cm)

[Placeholder: Insert your reflection and analysis for Part 1 here. Discuss the comparative trends of WTI and Brent daily spot prices from 1992 through 2002, detailing periods of tight alignment versus substantial historical divergence. Highlight the primary economic or geopolitical drivers behind major price shifts during this decade.]

#v(0.3em)

[Placeholder: Insert second paragraph of analysis here. Address the divergence metrics, the observed peak spreads identified through marker thresholds, and how the spread distribution illustrates the volatility dynamics between the two crude oil benchmarks.]

#pagebreak()

// =============================================================
// PAGE 3: Part 2 - Supermarket Sales Data Analysis (Q4 - Q5)
// =============================================================
#set figure(numbering: n => [2.#n])
#counter(figure.where(kind: image)).update(0)

= Part 2: Supermarket Sales Data Analysis (Q4–Q5)

#v(0.25cm)

#grid(
  columns: (1fr, 1fr),
  gutter: 8pt,
  align: center + horizon,
  [
    #figure(
      image("figures/sales/sales_transaction_volume_by_city.png", width: 100%),
      caption: [Transaction Volume by City.],
    )
  ],
  [
    #figure(
      image("figures/sales/sales_product_line_distribution_by_city.png", width: 100%),
      caption: [Product Line Distribution Across Cities.],
    )
  ],
  [
    #figure(
      image("figures/sales/sales_payment_method_frequency.png", width: 100%),
      caption: [Transaction Frequency by Payment Method.],
    )
  ],
  grid.cell(rowspan: 2)[
    #figure(
      image("figures/sales/sales_unit_price_density_by_payment.png", width: 100%),
      caption: [Unit Price Density Distribution (KDE).],
    )
  ],
  [
    #figure(
      image("figures/sales/sales_unit_price_boxplot_by_payment.png", width: 100%),
      caption: [Unit Price Distribution by Payment (Boxplot).],
    )
  ],
)

#v(0.35cm)

[Placeholder: Insert your reflection and analysis for Part 2 here. Evaluate the geographical distribution of transaction volumes across Yangon, Naypyitaw, and Mandalay. Discuss which branch/city contributed the maximum share of overall supermarket sales and how product line demand varies across regions.]

#v(0.3em)

[Placeholder: Insert second paragraph of analysis here. Reflect on the impact of customer payment channels (E-wallet, Cash, Credit card) on purchasing behavior. Contrast transaction frequency against unit sales price distributions to analyze whether higher-value items correlate with specific payment methods.]

#pagebreak()

// =============================================================
// PAGE 4: Part 3 - Image Processing & Visualizations (Q6 - Q7)
// =============================================================
#set figure(numbering: n => [3.#n])
#counter(figure.where(kind: image)).update(0)

= Part 3: Image Processing & Visualizations (Q6–Q7)

#v(0.2cm)

#align(center)[
  #figure(
    image("figures/crocodile/image_grayscale_colormaps_q6.png", height: 8.8cm),
    caption: [Pseudocolor Mapping with Six Colormaps (Q6).],
  )
  #v(0.2cm)
  #figure(
    image("figures/crocodile/image_processing_filters_q7.png", height: 9.8cm),
    caption: [Digital Image Filters in 3-Row Subplot Layout (Q7).],
  )
]

#v(0.35cm)

[Placeholder: Insert your reflection and analysis for Part 3 here. Discuss the perceptual and analytical differences observed when transforming raw image matrices into pseudocolor representations using distinct colormaps (Viridis, Plasma, Inferno, Magma, Blues, Reds). Compare sequential, perceptually uniform, and monochrome palettes.]

#v(0.3em)

[Placeholder: Insert second paragraph of analysis here. Analyze the effects of the applied digital image processing filters (brightness adjustments, unsharp masking, Gaussian smoothing, grayscale conversion, spatial resampling, and edge extraction). Explain how each operator highlights or suppresses spatial frequencies.]
