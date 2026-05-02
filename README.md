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
**Key finding:** Centrum has only 0.08 km² of green space — 
the least of any district — while Nieuw-West and Zuidoost 
have over 5 km² each.

**Outputs:**
- Green areas map overlaid on city fabric
- Green space ranking by district (km²)

---

### 3. Cycling Network Analysis
Mapping and analysing Amsterdam's 1,742 km cycling network 
by district and type of infrastructure.

**Tools:** Python · GeoPandas · Matplotlib  
**Key finding:** The cycling network is densest in the historic centre — 
the bike was not added as a modern solution, it was integrated 
into the city's historical fabric.

**Outputs:**
- Cycling network map
- Network length by district (km)
- Combined map: building age + cycling network

---

### 4. Flood Risk Analysis
Mapping Amsterdam's flood risk zones and overlaying them 
with building age data to understand urban vulnerability.

**Tools:** Python · GeoPandas · Matplotlib  
**Key finding:** The historic centre — built by 17th century engineers 
on the most stable ground — shows moderate flood risk. Noord, 
colonised later with modern technology, carries the highest risk.

**Outputs:**
- Flood risk map by zone and probability
- Combined map: flood risk + building age

---

## Data Sources
All data from [Amsterdam Open Data](https://maps.amsterdam.nl/open_geodata/)

## Author
Architect + software background, transitioning into spatial data and Digital Twin work.  
Learning in public, one project at a time.
