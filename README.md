# Data Visualization — Assignment 1

Automated pipeline, unified notebook, and Typst report generation for Assignment 1 data visualization exercises.

## Overview

The assignment is composed of three parts:
1. **Oil Price Analysis (Q1–Q3)**: Analysis of WTI and Brent daily crude oil prices (1992–2002), trend visualization, and peak divergence tracking. Located in [`Assignment-1/oil/Oil.ipynb`](file:///C:/Users/monica/data_viz/Assignment-1/oil/Oil.ipynb).
2. **Sales Data Analysis (Q4–Q5)**: Supermarket transaction analysis across branches, cities, product lines, and payment methods. Located in [`Assignment-1/sales/sales.ipynb`](file:///C:/Users/monica/data_viz/Assignment-1/sales/sales.ipynb).
3. **Image Processing & Visualizations (Q6–Q7)**: Colormap exploration (Viridis, Plasma, etc.) and filter operations (Brightness, Sharpening, Gaussian Blur, Grayscale, Resize, Edge Detection) using Pillow. Located in [`Assignment-1/images/images.ipynb`](file:///C:/Users/monica/data_viz/Assignment-1/images/images.ipynb).

### Deliverables Generated
- **Unified Notebook**: [`Assignment-1/Assignment-1.ipynb`](file:///C:/Users/monica/data_viz/Assignment-1/Assignment-1.ipynb)
- **Assignment PDF Report**: [`Assignment-1/Assignment-1-report.pdf`](file:///C:/Users/monica/data_viz/Assignment-1/Assignment-1-report.pdf) (compiled via Typst and `@preview/callisto:0.3.0`)
- **Callisto Technical Guide**: [`callisto_guide.pdf`](file:///C:/Users/monica/data_viz/callisto_guide.pdf) / [`callisto_guide.typ`](file:///C:/Users/monica/data_viz/callisto_guide.typ)

---

## Workflow with Taskfile

This project uses [`go-task`](https://taskfile.dev) for automated workflow management:

```bash
# Default: Join notebooks and compile Assignment 1 PDF report
task

# Verify all code cells in the joined notebook execute cleanly (25/25 verified)
task verify

# Compile Assignment 1 PDF report using Callisto & Typst
task pdf

# Compile Callisto technical reference guide PDF
task pdf:guide

# Lint the joining script
task lint

# Clean generated joined notebooks and PDFs
task clean
```

---

## Python CLI Usage

```bash
# Generate the unified notebook
uv run python scripts/join_notebooks.py

# Generate and verify execution
uv run python scripts/join_notebooks.py --verify
```
