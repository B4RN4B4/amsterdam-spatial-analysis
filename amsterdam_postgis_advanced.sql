
-- Amsterdam PostGIS Advanced Analysis
-- Sessione avanzata: viste materializzate e analisi di prossimità

-- 1. Verifica indici spaziali esistenti
SELECT indexname, tablename, indexdef
FROM pg_indexes
WHERE tablename IN ('edifici', 'quartieri', 'parchi')
ORDER BY tablename;

-- 2. Crea vista materializzata con statistiche per quartiere
CREATE MATERIALIZED VIEW stats_quartieri AS
SELECT 
    q."Buurt",
    q."Stadsdeel",
    COUNT(e.*) as num_edifici,
    ROUND(AVG(e."Bouwjaar")::numeric, 0) as anno_medio,
    MIN(e."Bouwjaar") as anno_piu_antico,
    MAX(e."Bouwjaar") as anno_piu_recente,
    ROUND(ST_Area(q.geometry)::numeric / 1000000, 4) as area_km2,
    ROUND((COUNT(e.*) / (ST_Area(q.geometry) / 1000000))::numeric, 1) as densita_per_km2
FROM quartieri q
LEFT JOIN edifici e 
    ON ST_Within(e.geometry, q.geometry)
    AND e."Bouwjaar" > 0
GROUP BY q."Buurt", q."Stadsdeel", q.geometry;

-- 3. Query sulla vista materializzata
SELECT *
FROM stats_quartieri
WHERE "Stadsdeel" = 'Centrum'
ORDER BY densita_per_km2 DESC
LIMIT 10;

-- 4. Edificio più antico entro 100m per ogni parco (CROSS JOIN LATERAL)
SELECT 
    p."Naam" as parco,
    e."Bouwjaar" as anno_edificio,
    ROUND(ST_Distance(p.geometry, e.geometry)::numeric, 1) as distanza_metri,
    ST_AsText(ST_ClosestPoint(p.geometry, e.geometry)) as punto_piu_vicino
FROM parchi p
CROSS JOIN LATERAL (
    SELECT "Bouwjaar", geometry
    FROM edifici
    WHERE ST_DWithin(geometry, p.geometry, 100)
    AND "Bouwjaar" > 0
    ORDER BY "Bouwjaar" ASC
    LIMIT 1
) e
ORDER BY e."Bouwjaar" ASC
LIMIT 10;

-- 5. Quartieri più lontani da un parco
SELECT 
    q."Buurt",
    q."Stadsdeel",
    p."Naam" as parco_piu_vicino,
    ROUND(ST_Distance(q.geometry, p.geometry)::numeric, 0) as distanza_quartiere_parco,
    COUNT(e.*) as num_edifici
FROM quartieri q
CROSS JOIN LATERAL (
    SELECT "Naam", geometry
    FROM parchi
    ORDER BY q.geometry <-> geometry
    LIMIT 1
) p
LEFT JOIN edifici e ON ST_Within(e.geometry, q.geometry)
GROUP BY q."Buurt", q."Stadsdeel", p."Naam", q.geometry, p.geometry
ORDER BY distanza_quartiere_parco DESC
LIMIT 10;
