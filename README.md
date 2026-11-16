# Data Visualization — Assignment 1

Automated pipeline for merging notebooks with `nbmerge` and generating deliverable PDF reports using Typst and Callisto.

## Overview

The assignment is composed of three parts:
1. **Oil Price Analysis (Q1–Q3)**: Analysis of WTI and Brent daily crude oil prices (1992–2002), trend visualization, and peak divergence tracking. Located in [`Assignment-1/oil/Oil.ipynb`](file:///C:/Users/monica/data_viz/Assignment-1/oil/Oil.ipynb).
2. **Sales Data Analysis (Q4–Q5)**: Supermarket transaction analysis across branches, cities, product lines, and payment methods. Located in [`Assignment-1/sales/sales.ipynb`](file:///C:/Users/monica/data_viz/Assignment-1/sales/sales.ipynb).
3. **Image Processing & Visualizations (Q6–Q7)**: Colormap exploration (Viridis, Plasma, etc.) and filter operations (Brightness, Sharpening, Gaussian Blur, Grayscale, Resize, Edge Detection) using Pillow. Located in [`Assignment-1/images/images.ipynb`](file:///C:/Users/monica/data_viz/Assignment-1/images/images.ipynb).

### Deliverables
- **Unified Notebook**: [`Assignment-1/Assignment-1.ipynb`](file:///C:/Users/monica/data_viz/Assignment-1/Assignment-1.ipynb) (merged using `nbmerge`)
- **Assignment PDF Report**: [`Assignment-1/Assignment-1-report.pdf`](file:///C:/Users/monica/data_viz/Assignment-1/Assignment-1-report.pdf) (compiled via Typst and `@preview/callisto:0.3.0`)
- **Report Template**: [`Assignment-1/report.typ`](file:///C:/Users/monica/data_viz/Assignment-1/report.typ)

---

## Workflow with Taskfile

All operations are handled directly through [`Taskfile.yml`](file:///C:/Users/monica/data_viz/Taskfile.yml) without standalone scripts:

```bash
# Default: Merge all 3 notebooks with nbmerge and compile the PDF report
task

# Merge notebooks using nbmerge directly
task join

# Compile Assignment 1 PDF report with Typst + Callisto
task pdf

# Clean generated joined notebook and PDF report
task clean
```
