--кількість смертей по країнам 

SELECT country_id,  SUM(accident_death) 
as sum_death FROM   accident GROUP BY country_id

--
