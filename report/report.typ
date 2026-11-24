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

West Texas Intermediate (WTI) and Brent Blend (Brent Crude) are two primary crude oil pricing benchmarks extracting in the United States and in the North Sea (between the United Kingdom and Norway), respectively. Figures @figure11[] @figure12[and] show the daily price trends of these, @figure14 shows the absolute difference of their price, and @figure13 overlaps these, highlighting the periods of bigger divergence.

Throughout the range, we notice that these prices do correlate very closely to each other, rarely being too apart; Brent Crude has consistently been priced lower than WTI during this period. The highlited areas in @figure13 are mid 1996, mid 2000s, and right on 2001. Further research could be done to understand why these disparities.


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

The Figures in this section represent sales data from a supermarket chain, focusing on number of transactions per city (Figures @figure21[] and @figure22[]), payment type (Figures @figure23[], @figure24[], and @figure25[]), and type of product (@figure22).

// Plot the city wise distribution of sales, which city has contributed maximum in the sales

The city that contributed to most sales was Yangon by a small margin, followed by Mandalay and Naypyitaw. When breaking down by product line, we can see that this pattern mostly persists, with the exception of product 3, which sold more on Mandalay compared to the other cities. 

// Q5. Does payment methods have impact on sales, which payment method is contributing to the sales

Ewallet and Cash payment methods are the most popular, with a big margin over Credit Card. When looking individually at the payment methods, we can observe that most credit card purchases are for lower to median priced items, cash is preferec to higher priced items, and Ewallet seem to be all around. No payment method seems to be prefered for extremly low or high priced itens, with all 3 showing a very close 1st and 3rd quartile.

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
