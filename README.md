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

### 9. Amsterdam Urban Dashboard
An interactive multi-layer map combining all datasets analysed 
in this series into a single Digital Twin-style dashboard.

**Tools:** Python · GeoPandas · Folium  
**Layers:**
- Neighbourhood boundaries
- Green areas (with name and size on click)
- Flood risk zones
- Cycling network
- Future housing projects 2026–2045 (with project name and units on click)

**Key discovery:** The Marineterrein — the former Dutch Navy compound, 
occupied since the Golden Age — is planned for 800 new housing units 
starting 2034. History and future in the same polygon.

🗺️ [Open Interactive Dashboard](https://b4rn4b4.github.io/amsterdam-spatial-analysis/amsterdam_dashboard.html)

**Next steps:** Add road network and public transport layers 
for a complete mobility analysis.

---

### 10. Spatial Clustering (DBSCAN)
Using machine learning to identify Amsterdam's natural urban zones 
based on building position and construction year — without any 
predefined boundaries.

**Tools:** Python · GeoPandas · Scikit-learn · Matplotlib  
**Algorithm:** DBSCAN (Density-Based Spatial Clustering of Applications with Noise)  
**Key finding:** Amsterdam organises naturally into 38 distinct clusters. 
The historic centre forms one dominant cluster of 17,834 buildings 
with a median construction year of 1897. Peripheral districts form 
smaller, more recent clusters — confirming the city's concentric 
growth pattern from the Golden Age outward.

**Note:** 6,194 buildings (13.9%) classified as noise — isolated 
structures that don't belong to any natural cluster.

**Outputs:**
- Colour-coded cluster map (38 clusters)
- Bubble chart: cluster size vs location vs age

---

### 11. Deep Dive: Jordaan
A comprehensive urban analysis of Amsterdam's most iconic neighbourhood,
combining spatial data, historical research, and interactive mapping.

**Tools:** Python · GeoPandas · Folium · Matplotlib  
**Key findings:**
- 2,749 buildings spanning 400 years (1612–2023)
- Median construction year: 1901 — the neighbourhood looks medieval but was mostly built during the Industrial Revolution
- Four distinct historical phases: Golden Age, Stagnation, Industrial Expansion, Gentrification
- Cycling infrastructure follows perimeter streets — internal circulation relies on low-traffic shared streets, a typical Dutch design approach

**Outputs:**
- Buildings per decade chart (colour-coded by era)
- Interactive map with buildings, green areas, and cycling network
- Professional urban analysis report (Markdown)

🗺️ [Interactive Jordaan Map](https://b4rn4b4.github.io/amsterdam-spatial-analysis/jordaan_dashboard.html)
📄 [Full Report](jordaan_report.md)

---

### 12. Building Density Raster
Introduction to raster data processing — converting 44,500 vector 
building footprints into a continuous density surface at 100m resolution.

**Tools:** Python · Rasterio · NumPy · Matplotlib  
**Key concepts introduced:**
- Raster vs vector data structures
- Pixel resolution and geographic transforms
- CRS in metres (EPSG:28992 — Dutch RD New)
- GeoTIFF format — the standard for professional raster data
- Multi-band raster concepts

**Key finding:** The historic centre reaches 82 buildings per 100x100m pixel — 
the highest density in the city. Density drops progressively toward 
the periphery, confirming the concentric growth pattern identified 
in previous analyses.

**Outputs:**
- Building density raster map (PNG)
- GeoTIFF file (amsterdam_density.tif) — openable in QGIS and any GIS software

---

### 13. Sentinel-2 Satellite Imagery & NDVI Analysis
Processing real satellite imagery from the Copernicus programme 
to analyse vegetation cover over Amsterdam.

**Tools:** Python · Rasterio · NumPy · Matplotlib  
**Data source:** Sentinel-2 L1C (ESA/Copernicus) — 17 August 2024  
**Resolution:** 10 metres per pixel

**Key concepts introduced:**
- Multi-band satellite imagery (13 spectral bands)
- True Colour Image (TCI) — RGB natural colour composite
- NDVI (Normalized Difference Vegetation Index) — (NIR - Red) / (NIR + Red)
- Cross-validation between vector open data and satellite-derived indices

**Key findings:**
- NDVI range: -0.511 (water/IJmeer) to 0.757 (dense vegetation)
- City mean NDVI: 0.178 — predominantly built-up with scattered green
- Strong correspondence between Amsterdam open data park polygons 
  and high-NDVI areas in satellite imagery — mutual validation of both datasets

**Outputs:**
- True colour image of Amsterdam (17 Aug 2024)
- NDVI map (Red = built-up/water · Green = vegetation)
- Combined NDVI + green areas overlay

---

### 14. Urban Heat Island Analysis
Measuring surface temperature across Amsterdam using Landsat 8 
thermal infrared data and correlating it with vegetation cover (NDVI).

**Tools:** Python · Rasterio · NumPy · SciPy · Matplotlib  
**Data sources:** 
- Landsat 8 L2 Surface Temperature (USGS Earth Explorer) — 11 August 2024
- Sentinel-2 NDVI (Copernicus) — 17 August 2024  
**Resolution:** 30 metres per pixel (thermal band)

**Key findings:**
- Surface temperature range: 10.2°C (water/canals) to 54.0°C (industrial rooftops)
- City mean surface temperature: 28.0°C on 11 August 2024
- NDVI vs Temperature correlation (land only): r = -0.188, p ≈ 0
- Confirmed: more vegetation = lower surface temperature
- Industrial areas in Noord reach 45-50°C — the hottest zones in the city
- Water bodies (IJ, IJmeer, canals) are the most effective cooling elements

**Methodological note:** NDVI and temperature data are from different dates 
(6 days apart). Same-date imagery would produce a stronger correlation. 
Despite this, the signal is statistically robust with 534,000 valid pixels.

**Outputs:**
- Urban Heat Island map (surface temperature)
- Combined NDVI + Temperature + Correlation analysis

---

### 15. Park Accessibility Analysis
Measuring how much of Amsterdam is within 500 metres of a park,
using spatial buffer analysis at neighbourhood level.

**Tools:** Python · GeoPandas · Matplotlib  
**Key findings:**
- 57.8% of Amsterdam's surface is within 500m of a park
- Zuid (86.7%) and West (84.9%) are the most accessible districts
- Centrum scores only 65.4% — the historic centre has few formal parks
- Westpoort (13.1%) and Weesp (14.6%) are outliers — industrial/rural areas

**Methodological note:** Analysis measures geometric accessibility 
(straight-line distance), not walking distance through the street network. 
Real accessibility would be slightly lower.

**Next step:** Correlating park accessibility with surface temperature 
(Urban Heat Island) to test whether less green = more heat at district level.

**Outputs:**
- Park accessibility map (500m buffer overlay)
- Accessibility chart by district (colour-coded by threshold)
- Neighbourhood-level accessibility choropleth map

---

### 16. Park Accessibility vs Urban Heat Island — Correlation
Testing whether neighbourhoods with better park accessibility 
also have lower surface temperatures.

**Tools:** Python · GeoPandas · Rasterio · SciPy · Matplotlib  
**Key finding:** No significant correlation — r = -0.015, p = 0.736.
Park accessibility (distance to formal parks) does not predict 
surface temperature at neighbourhood scale.

**Why?**
- Temperature varies at 30m scale; accessibility is averaged over entire neighbourhoods
- Formal park proximity ≠ actual vegetation cover (private gardens, street trees not counted)
- Dominant temperature drivers are urban materials, building density, 
  and water bodies — not park accessibility

**Scientific note:** A null result is a real result. 
The absence of correlation tells us where NOT to look 
when modelling Urban Heat Island in Amsterdam.

**Outputs:**
- Scatter plot: park accessibility vs surface temperature (518 neighbourhoods)
- Statistical analysis with Pearson correlation

---

### 17. PostGIS Spatial Database
Loading Amsterdam's spatial datasets into a professional PostgreSQL/PostGIS 
database and running spatial SQL queries.

**Tools:** PostgreSQL 17 · PostGIS 3.6 · pgAdmin 4 · Python · SQLAlchemy · GeoAlchemy2

**What is PostGIS?**
PostGIS is a spatial extension for PostgreSQL — the industry standard 
for managing geographic data in professional GIS environments. 
Used by Arcadis, Esri, Royal HaskoningDHV and most major GIS organisations.

**Datasets imported:**
- `edifici` — 44,517 building footprints with construction year
- `quartieri` — 518 neighbourhood polygons
- `parchi` — 125 green areas

**Key queries:**
- Buildings per neighbourhood with average construction year (spatial JOIN)
- Pre-1700 buildings within 200m of a park (ST_Distance + LATERAL JOIN)
- Historic building density per km² by neighbourhood (ST_Area + ST_Within)

**Key finding:** Burgwallen-Oost (Centrum) has the highest historic building 
density — 3,669 pre-1800 buildings per km². An extraordinary concentration 
of Golden Age urban fabric in a 0.07 km² neighbourhood.

**SQL queries:** See `amsterdam_postgis_queries.sql`

---

### 18. Parking Pressure Analysis
Analysing Amsterdam's parking pressure data to identify residential 
vs commercial/touristic zones based on temporal usage patterns.

**Tools:** Python · GeoPandas · Matplotlib  
**Data source:** Amsterdam Open Data — Parkeerdruk (parking pressure) by neighbourhood

**Data quality note:** Original geometries had inverted coordinate order 
(lat,lng instead of lng,lat) — corrected via coordinate swap and CRS reprojection. 
Investigated apparently irregular polygon shapes ("arrow-like" geometries) — 
confirmed these are geographically accurate, representing dike-following 
zones (Buiksloterdijk) and riverbank areas (Vechtoever), not data errors.

**Key findings:**
- Average weekday evening parking pressure: 54.3% (112 zones analysed)
- Highest pressure: Kazernebuurt (95%), Groenmarktkadebuurt (93%) — historic centre
- Comparing afternoon vs evening pressure reveals land use patterns:
  - Museumplein: 100% afternoon → 30% evening (-70) — tourist/commercial zone
  - Circus/Kermisbuurt: 43% → 73% (+30) — residential zone
  - Science Park-Noord: +22 evening — university/office area

**Outputs:**
- Parking pressure choropleth map (weekday evening)
- Temporal comparison table (afternoon vs evening, residential vs commercial signature)

**Next step:** Air quality analysis, building toward a multivariate study 
of traffic, green space, water, and air quality.

---

### 19. Air Quality Analysis (NO2)
Analysing nitrogen dioxide (NO2) concentrations across Amsterdam 
using 484 monitoring stations and 15 years of historical data (2010–2025).

**Tools:** Python · GeoPandas · Pandas · Matplotlib  
**Data source:** Amsterdam Open Data — NO2 metingen locaties + NO2 metingen jaren

**Key findings:**
- Amsterdam has nearly halved NO2 levels in 15 years — from 37.5 µg/m³ (2010) 
  to 16.8 µg/m³ (2025), well below the EU limit of 40 µg/m³
- Three key moments in the trend:
  - 2017–2019: sharp drop following introduction of low-emission zones (milieuzones)
  - 2020: COVID lockdown caused an immediate ~25% reduction
  - 2020–2025: levels never returned to pre-COVID values — permanent behavioural change
- Spatial pattern: centre is most polluted (up to 29.8 µg/m³), 
  periphery significantly cleaner (down to 8.1 µg/m³)

**Outputs:**
- NO2 annual average trend 2010–2025 (with EU limit reference)
- Spatial map of NO2 concentration by monitoring station (2024)

**Next step:** Correlating NO2 with parking pressure data to test 
whether traffic intensity predicts air quality at neighbourhood level.

---

### 20. NO2 vs Parking Pressure — Traffic & Air Quality Correlation
Testing whether traffic intensity (measured via parking pressure) 
predicts air quality (NO2 concentration) at station level.

**Tools:** Python · GeoPandas · SciPy · Matplotlib  
**Key finding:** r = 0.273, p ≈ 0 — weak but statistically significant 
positive correlation. Zones with higher parking pressure tend to have 
higher NO2 concentrations.

**Methodology:**
- 399 NO2 monitoring stations (2024 data)
- 112 parking pressure zones (weekday evening)
- Spatial nearest-join: each NO2 station matched to closest parking zone
- Pearson correlation between parking pressure (%) and NO2 (µg/m³)

**Why is the correlation weak?**
- Parking pressure is a proxy for traffic, not a direct measure
- NO2 stations measure air at specific points, not zone averages
- Many stations share the same nearest parking zone (visible as 
  vertical clusters at x=25 in the scatter plot)
- Other factors dominate locally: wind, building geometry, green space

**Scientific note:** A weak correlation with p ≈ 0 on 400 data points 
is a real signal — traffic intensity does predict air quality direction, 
but explains only part of the variance.

**Outputs:**
- Scatter plot: parking pressure vs NO2 concentration (400 stations)

---

### 21. Multivariate System Analysis — Water, Green, Traffic & Air Quality
Bringing together four independent datasets to understand how Amsterdam's 
districts function as an interconnected urban system.

**Tools:** Python · GeoPandas · Pandas · SciPy · Matplotlib  
**Variables (aggregated by Stadsdeel):**
- Water % — calculated by comparing "Stadsdelen" vs "Stadsdelen excl. water" 
  official boundary datasets (area difference)
- Green space (km²) — from parks dataset
- Parking pressure (%) — traffic proxy, weekday evening
- NO2 (µg/m³) — air quality, 2024 average

**Key findings — correlation matrix:**
- Parking Pressure vs NO2: r = 0.882 — very strong. At district level, 
  traffic intensity strongly predicts air quality (far stronger than the 
  station-level correlation of r = 0.273 found in the previous project — 
  aggregation removes local noise)
- Green Space vs NO2: r = -0.868 — very strong negative correlation
- Green Space vs Parking Pressure: r = -0.829 — very strong negative correlation
- Water % is nearly independent of all other variables (|r| < 0.26) — 
  Amsterdam's water distribution follows a different, more historical 
  geographic logic than modern traffic and vegetation patterns

**Conclusion:** Green space, traffic, and air quality form a tightly 
interconnected system at district scale. Water behaves as an independent 
structural feature of the city, shaped by centuries of land reclamation 
rather than contemporary urban planning forces.

**Outputs:**
- Multivariate correlation heatmap (4x4 matrix)
- Full data table: water %, green km², parking pressure, NO2 by Stadsdeel

---

### 22. Population-Weighted Park Accessibility
Refining the park accessibility analysis from Project 15 by weighting 
results by population rather than surface area — directly addressing 
a methodological critique raised by a London-based architect in the 
comments of an earlier LinkedIn post.

**Tools:** Python · GeoPandas · Pandas · Matplotlib  
**Data sources:**
- CBS Kerncijfers wijken en buurten 2023 (Dutch national statistics)
- Amsterdam park polygons (Amsterdam Open Data)
- Amsterdam neighbourhood boundaries with CBS codes

**Key findings:**
- 77.6% of Amsterdam's population lives within 500m of a park
- vs 57.8% of Amsterdam's surface area (Project 15)
- The 20-point difference confirms that Amsterdam has concentrated 
  residential development in areas with good park proximity
- West (87.4%) and Zuid (84.0%) serve their populations best
- Centrum remains the least accessible district (68.9%) even 
  when weighted by population

**Methodology:**
For each neighbourhood: pop_accessible = population × (area within 500m buffer / total area)
Assumes uniform population distribution within each neighbourhood.

**Comparison chart:** Area-based vs population-weighted accessibility 
by Stadsdeel — population weighting improves scores in almost every 
district, with the notable exception of Zuid where large parks serve 
less densely populated areas.

**Outputs:**
- Comparative bar chart: area-based vs population-weighted by Stadsdeel
- Population accessibility statistics by district

---

### 23. PostGIS Advanced — Materialized Views & Proximity Analysis
Advanced spatial SQL session building on the PostGIS database 
established in Project 17.

**Tools:** PostgreSQL 17 · PostGIS 3.6 · pgAdmin 4 · Python · SQLAlchemy

**Key concepts covered:**

**Spatial indexes (GIST):** GeoAlchemy2 creates GIST indexes automatically 
on import — confirmed on all three tables (edifici, quartieri, parchi). 
GIST organises geometries in a hierarchical tree structure, reducing 
spatial query complexity from O(n²) to O(log n).

**Materialized views:** Created `stats_quartieri` — a precomputed table 
storing building statistics per neighbourhood (count, average year, 
oldest/newest building, area, density). Queried instantly without 
recalculation. Burgwallen-Oost confirmed as densest historic district 
at 5,146 buildings/km², with oldest building dating to 1462.

**CROSS JOIN LATERAL:** The standard PostGIS pattern for 
"find the nearest X for each Y" queries. For each park, finds the 
oldest building within 100 metres using ST_DWithin + GIST index. 
Result: Wertheimpark has a building from 1625 just 43 metres away.

**ST_ClosestPoint & ST_Distance:** Used to calculate exact distances 
and nearest points between geometries — standard tools for 
professional proximity analysis.

**Key findings:**
- Oldest building near a park: 1615 (Rembrandtplein, De Hoftuin)
- Frankendael park contains a building from 1700 inside its boundaries
- Most park-distant neighbourhoods: Weesp (up to 1,964m from Diemerbos)
  and Westpoort industrial zones

**SQL queries:** See `amsterdam_postgis_advanced.sql`

---

### 24. VOC Historical Mapping — Amsterdam's Golden Age
Mapping the physical traces of the Dutch East India Company (VOC) 
in Amsterdam, overlaid with the building boom it generated during 
the 17th century Golden Age.

**Tools:** Python · GeoPandas · Folium · Matplotlib · Pandas

**Historical context:**
The VOC (Vereenigde Oostindische Compagnie), founded in 1602, was the 
world's first publicly traded company. Its profits financed the construction 
of Amsterdam's iconic canal ring and transformed a medieval trading port 
into the financial capital of the world. The company operated until 1799.

**Key findings:**
- Only 23 buildings survive from pre-VOC Amsterdam (1500–1599)
- 1,265 buildings from the Golden Age (1600–1700) are still standing today
- The building boom begins immediately after 1602 and peaks in the 1650s–1690s
- Construction continues after 1700 but shifts to peripheral expansion 
  as VOC influence declines

**Dataset constructed manually:**
10 historic VOC and pre-VOC sites geocoded and described:
- Oost-Indisch Huis (1606) — VOC headquarters
- West-Indisch Huis (1617) — WIC headquarters, where Manhattan was purchased
- Entrepotdok (1708) — VOC warehouse complex
- Beurs van Berlage (1903) — built on the site of the world's first stock exchange
- And 6 more sites spanning 1488–1916

**Outputs:**
- Interactive Folium map with VOC sites, Golden Age buildings, pre-VOC buildings
- Building boom timeline (1400–1750) with VOC founding and decline markers

🗺️ [Open Interactive VOC Map](https://b4rn4b4.github.io/amsterdam-spatial-analysis/amsterdam_voc_map.html)

---

### 25. Industrial Heritage & Working Areas
Mapping Amsterdam's functional land use using the Functiemix dataset —
a continuation of the VOC historical thread, tracing the city's 
economic geography from the Golden Age to the present.

**Tools:** Python · GeoPandas · Matplotlib  
**Data source:** Amsterdam Open Data — Functiemix (19,302 urban blocks)

**Variables:**
- **WON** — Wonen (residential)
- **VZN** — Voorzieningen (services/facilities)
- **WRK** — Werken (working/industrial)

**Threshold choice:**
The 70% threshold for classifying a district as "predominantly industrial" 
was chosen deliberately, grounded in the Dutch urban planning concept of 
**functiemenging** (functional mixing) — the idea that cities work better 
when residential, commercial, and working functions coexist. 
Below 70%, genuine functional mix is still present. 
Above 70%, a zone is effectively monofunctional.
A 50% threshold was considered but rejected as too arbitrary — 
it would have misclassified mixed districts as industrial.

**Key findings:**
- Only Westpoort (97.6%) crosses the 70% threshold — the port zone, 
  never designed for residential use
- Weesp (44.6%) and Zuidoost (38.9%) have significant working components 
  but remain genuinely mixed
- Amsterdam is fundamentally a mixed-use city — functiemenging is 
  visible in the data, not just in policy documents
- West (19.7%) is the most residential district among the central ones

**Outputs:**
- Functional land use map by urban block
- Industrial/working areas chart by Stadsdeel (70% threshold)

---

### 26. Amsterdam vs Manhattan — Urban Morphology Comparison
A comparative analysis of building age distribution between Amsterdam 
and New Amsterdam (Manhattan) — two cities connected by 400 years of history.

**Tools:** Python · GeoPandas · Matplotlib  
**Data sources:**
- Amsterdam Open Data — Bouwjaar Pand (44,472 buildings)
- NYC Department of City Planning — MapPLUTO 26v1 (40,048 buildings, Manhattan only)

**Historical context:**
In 1626 the Dutch West India Company (WIC) purchased Manhattan from the 
Lenape people and founded Nieuw Amsterdam. The colony was captured by 
the English in 1664 and renamed New York. The Dutch urban structure — 
street patterns, canal traces, place names — partially survives to this day.

**Key findings:**
- Both cities have a surprisingly similar median building age: 
  Amsterdam 1906, Manhattan 1910
- But the distributions tell completely different stories:
  - Amsterdam: gradual accumulation over 4 centuries, visible as 
    concentric rings of colour from historic centre outward
  - Manhattan: explosive growth concentrated in 1890–1930, 
    almost uniform in colour — a city built in a single great wave
- Amsterdam's building stock shows layered history; 
  Manhattan's shows a single dominant era
- After 1950: Amsterdam continues building steadily; 
  Manhattan slows dramatically — the island was already full

**Outputs:**
- Side-by-side building age histograms (1600–2025)
- Side-by-side building age maps with shared colour scale

---

## Data Sources
All data from [Amsterdam Open Data](https://maps.amsterdam.nl/open_geodata/)

## Author
Architect + software background, transitioning into spatial data and Digital Twin work.  
Learning in public, one project at a time.
