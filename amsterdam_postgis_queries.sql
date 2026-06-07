
-- Amsterdam PostGIS Analysis
-- Queries spaziali sul database Amsterdam

-- 1. Conteggio totale edifici
SELECT COUNT(*) as totale_edifici
FROM edifici;

-- 2. Edifici per quartiere con anno medio
SELECT 
    q."Buurt",
    q."Stadsdeel",
    COUNT(e.*) as num_edifici,
    ROUND(AVG(e."Bouwjaar")::numeric, 0) as anno_medio
FROM quartieri q
LEFT JOIN edifici e 
    ON ST_Within(e.geometry, q.geometry)
GROUP BY q."Buurt", q."Stadsdeel"
ORDER BY num_edifici DESC
LIMIT 10;

-- 3. Edifici storici (pre-1700) vicino ai parchi (entro 200m)
SELECT 
    e."Bouwjaar",
    p."Naam" as parco_vicino,
    ROUND(ST_Distance(e.geometry, p.geometry)::numeric, 0) as distanza_metri
FROM edifici e
CROSS JOIN LATERAL (
    SELECT "Naam", geometry
    FROM parchi
    ORDER BY e.geometry <-> geometry
    LIMIT 1
) p
WHERE e."Bouwjaar" < 1700
AND ST_Distance(e.geometry, p.geometry) < 200
ORDER BY e."Bouwjaar"
LIMIT 15;

-- 4. Densita edifici storici (pre-1800) per quartiere
SELECT 
    q."Buurt",
    q."Stadsdeel",
    COUNT(e.*) as edifici_storici,
    ROUND(ST_Area(q.geometry)::numeric / 1000000, 3) as area_km2,
    ROUND((COUNT(e.*) / (ST_Area(q.geometry) / 1000000))::numeric, 1) as densita_per_km2
FROM quartieri q
LEFT JOIN edifici e 
    ON ST_Within(e.geometry, q.geometry)
    AND e."Bouwjaar" < 1800
    AND e."Bouwjaar" > 0
GROUP BY q."Buurt", q."Stadsdeel", q.geometry
HAVING COUNT(e.*) > 10
ORDER BY densita_per_km2 DESC
LIMIT 10;
