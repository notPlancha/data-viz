#import "template.typ": assignment

#show: assignment.with(
  title: "Assignment 1",
  subtitle: "Analysis of Oil Price Trends, Retail Sales, and Image Processing",
  author: "Mónica Plancha",
  email: "monica.plancha@outlook.com",
  course-code: "D7055E",
  course-name: "Data Visualization",
  school: "Luleå University of Technology",
)

// =============================================================
// PAGE 2: Part 1 - Oil Price Trend Analysis (Q1 - Q3)
// =============================================================

= Part 1: Oil Price Trend Analysis (Q1–Q3)

#v(0.3cm)

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  [
    #figure(
      image("figures/oil/oil_wti_price_trend.png", width: 100%),
      caption: [WTI Crude Daily Price Trend (1992–2002).],
    ) <figure11>
  ],
  [
    #figure(
      image("figures/oil/oil_brent_price_trend.png", width: 100%),
      caption: [Brent Crude Daily Price Trend (1992–2002).],
    ) <figure12>
  ],
  [
    #figure(
      image("figures/oil/oil_comparative_trend_divergence.png", width: 100%),
      caption: [Comparative Price Trend & Top Divergence Spans.],
    ) <figure13>
  ],
  [
    #figure(
      image("figures/oil/oil_price_difference_spread.png", width: 100%),
      caption: [Daily Price Difference & Divergence Tiers.],
    ) <figure14>
  ],
)

#v(0.4cm)

West Texas Intermediate (WTI) and Brent Blend (Brent Crude) are two primary crude oil pricing benchmarks extracting in the United States and in the North Sea (between the United Kingdom and Norway), respectively. 


#pagebreak()

// =============================================================
// PAGE 3: Part 2 - Supermarket Sales Data Analysis (Q4 - Q5)
// =============================================================

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
    ) <figure21>
  ],
  [
    #figure(
      image("figures/sales/sales_product_line_distribution_by_city.png", width: 100%),
      caption: [Product Line Distribution Across Cities.],
    ) <figure22>
  ],
  [
    #figure(
      image("figures/sales/sales_payment_method_frequency.png", width: 100%),
      caption: [Transaction Frequency by Payment Method.],
    ) <figure23>
  ],
  grid.cell(rowspan: 2)[
    #figure(
      image("figures/sales/sales_unit_price_density_by_payment.png", width: 100%),
      caption: [Unit Price Density Distribution (KDE).],
    ) <figure24>
  ],
  [
    #figure(
      image("figures/sales/sales_unit_price_boxplot_by_payment.png", width: 100%),
      caption: [Unit Price Distribution by Payment (Boxplot).],
    ) <figure25>
  ],
)

#v(0.35cm)

[Placeholder: Insert your reflection and analysis for Part 2 here. Evaluate the geographical distribution of transaction volumes across Yangon, Naypyitaw, and Mandalay. Discuss which branch/city contributed the maximum share of overall supermarket sales and how product line demand varies across regions.]

[Placeholder: Insert second paragraph of analysis here. Reflect on the impact of customer payment channels (E-wallet, Cash, Credit card) on purchasing behavior. Contrast transaction frequency against unit sales price distributions to analyze whether higher-value items correlate with specific payment methods.]

#pagebreak()

// =============================================================
// PAGE 4: Part 3 - Image Processing & Visualizations (Q6 - Q7)
// =============================================================

= Part 3: Image Processing & Visualizations (Q6–Q7)

#v(0.2cm)

#align(center)[
  #figure(
    image("figures/crocodile/image_grayscale_colormaps_q6.png", height: 8.8cm),
    caption: [Pseudocolor Mapping with Six Colormaps (Q6).],
  ) <figure31>
  #v(0.2cm)
  #figure(
    image("figures/crocodile/image_processing_filters_q7.png", height: 9.8cm),
    caption: [Digital Image Filters in 3-Row Subplot Layout (Q7).],
  ) <figure32>
]

#v(0.35cm)

[Placeholder: Insert your reflection and analysis for Part 3 here. Discuss the perceptual and analytical differences observed when transforming raw image matrices into pseudocolor representations using distinct colormaps (Viridis, Plasma, Inferno, Magma, Blues, Reds). Compare sequential, perceptually uniform, and monochrome palettes.]

[Placeholder: Insert second paragraph of analysis here. Analyze the effects of the applied digital image processing filters (brightness adjustments, unsharp masking, Gaussian smoothing, grayscale conversion, spatial resampling, and edge extraction). Explain how each operator highlights or suppresses spatial frequencies.]
