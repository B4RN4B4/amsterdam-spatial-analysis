# Amsterdam Spatial Analysis

A portfolio of spatial data analysis projects using open data from the City of Amsterdam.

## Projects

### 1. Building Age Analysis
Mapping and analysing the construction year of every building in Amsterdam, 
from 17th century canal houses to recent developments.

**Tools:** QGIS · Python · GeoPandas · Folium  
**Key finding:** Vijzelstraatbuurt is Amsterdam's oldest neighbourhood, with a median construction year of 1716.

**Outputs:**
- City-wide building age map
- Neighbourhood-level statistical analysis
- Interactive map (zoom into each building to see its construction date)

🗺️ [Interactive Map](https://b4rn4b4.github.io/amsterdam-spatial-analysis/vijzelstraatbuurt_interattiva.html)

---

### 2. Green Space Analysis
Mapping and quantifying green areas across Amsterdam's districts.

**Tools:** Python · GeoPandas · Matplotlib  
**Key finding:** Centrum has only 0.08 km² of green space — the least of any district — while Nieuw-West and Zuidoost have over 5 km² each.

**Outputs:**
- Green areas map overlaid on city fabric
- Green space ranking by district (km²)

---

### 3. Cycling Network Analysis
Mapping and analysing Amsterdam's 1,742 km cycling network 
by district and type of infrastructure.

**Tools:** Python · GeoPandas · Matplotlib  
**Key finding:** The cycling network is densest in the historic centre — the bike was not added as a modern solution, it was integrated into the city's historical fabric.

**Outputs:**
- Cycling network map
- Network length by district (km)
- Combined map: building age + cycling network

---

### 4. Flood Risk Analysis
Mapping Amsterdam's flood risk zones and overlaying them 
with building age data to understand urban vulnerability.

**Tools:** Python · GeoPandas · Matplotlib  
**Key finding:** The historic centre — built by 17th century engineers on the most stable ground — shows moderate flood risk. Noord, colonised later with modern technology, carries the highest risk.

**Outputs:**
- Flood risk map by zone and probability
- Combined map: flood risk + building age

---

### 5. Green Space vs Flood Risk — Correlation Analysis
Statistical analysis of the relationship between green space and flood risk across Amsterdam's districts.

**Tools:** Python · GeoPandas · SciPy · Matplotlib  
**Key finding:** A strong positive correlation (r=0.764, p=0.045) exists between green space and flood risk — but not because green causes risk. 
Both variables are driven by a third: topography. Peripheral districts are low-lying, have more space for parks, and are closer to water.

**Outputs:**
- Scatter plot with trend line
- Pearson correlation coefficient and p-value
- Critical interpretation of spurious correlation

---

### 6. Groundwater & Multivariate Analysis
Testing the hypothesis that topography is the confounding variable 
behind the green space / flood risk correlation.

**Tools:** Python · GeoPandas · SciPy · NumPy · Matplotlib  
**Key finding:** Green space and flood risk correlate strongly (r=0.764) but not causally. Both are driven by groundwater level and geography. 
The strongest correlation in the dataset is Verde vs Falda (r=-0.904, p=0.005) — peripheral districts have more green space AND lower groundwater, confirming topography as the confounding variable.

**Note:** Groundwater dataset has partial city coverage — 
findings are indicative, not conclusive.

**Outputs:**
- Groundwater & drainage map
- Multivariate scatter plot (3 correlations)
- Statistical confirmation of confounding variable hypothesis

---

### 7. Urban Growth Through Time
Analysing 500 years of Amsterdam's urban development decade by decade, from the first recorded buildings in 1515 to the present day.

**Tools:** Python · GeoPandas · Matplotlib · Pandas  
**Key finding:** Amsterdam's growth tells three distinct stories: 
the Golden Age (1600–1700) built slowly but with extraordinary quality; the Industrial Revolution (1880–1930) exploded the city outward in all directions simultaneously; WWII brought construction to a near-complete halt, visible as a sharp dip in the 1940s.

**Outputs:**
- New buildings per decade (bar chart with historical periods)
- Cumulative urban growth curve (500 years)
- Growth by district over time (multi-line chart)

---

### 8. Future Housing Plans (2026–2045)
Analysing Amsterdam's planned housing development for the next 20 years
using the city's official Woningbouwplannen dataset.

**Tools:** Python · GeoPandas · Matplotlib · Pandas  
**Key finding:** Amsterdam is not slowing down — it's preparing to build 15,000+ new housing units per year in 2026–2028, the largest expansion since the 1990s. The city is deliberately prioritising social and mid-range housing over premium, a clear political response to the European housing crisis.

**Outputs:**
- Housing construction per year (2000–2045, past + planned)
- Housing types breakdown (social, mid-range, expensive, purchase)
- Map of future housing projects (2026–2045)

---

## Data Sources
All data from [Amsterdam Open Data](https://maps.amsterdam.nl/open_geodata/)

## Author
Architect + software background, transitioning into spatial data and Digital Twin work.  
Learning in public, one project at a time.
