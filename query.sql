--кількість смертей по країнам 

SELECT a.country_id, c.country_name, SUM(accident_death) as sum_death
FROM accident a
	JOIN country c ON a.country_id = c.country_id
GROUP BY a.country_id, c.country_name

--кількість випадків по кожній з причин 
SELECT a.description_id, c.description_name, count(a.description_id) as amound
FROM accident a
	JOIN description c ON a.description_id = c.description_id
GROUP BY a.description_id, c.description_name



--кількість смертей по рокам
SELECT  EXTRACT( year from accident_date), sum(accident_death) as deathrate 
FROM accident 
GROUP BY EXTRACT( year from accident_date)
