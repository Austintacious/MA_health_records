--What 3 towns have the highest population of citizens that are 65 years and older?
SELECT geography, over_65_2005 
  FROM town_health_records 
    WHERE geography != 'Massachusetts Total' 
  ORDER BY over_65_2005 DESC 
  LIMIT 3;

--Returns:
--
--   geography  | over_65_2005
-- -------------+--------------
--  Boston      |        59950
--  Worcester   |        23062
--  Springfield |        18271
-- (3 rows)


--What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT geography, ages_0to19_2005 
  FROM town_health_records 
    WHERE geography != 'Massachusetts Total' 
  ORDER BY ages_0to19_2005 DESC 
  LIMIT 3;

--Returns
--
--   geography  | ages_0to19_2005
-- -------------+-----------------
--  Boston      |          131435
--  Worcester   |           48217
--  Springfield |           47878
-- (3 rows)


--What 5 towns have the lowest per capita income?
SELECT geography, income_per_capita_2000 
  FROM town_health_records 
    WHERE geography != 'Massachusetts Total' 
  ORDER BY income_per_capita_2000 
  LIMIT 5;

--Returns 
--
--   geography  | income_per_capita_2000
-- -------------+------------------------
--  Monroe      |                  12400
--  Lawrence    |                  13360
--  Chelsea     |                  14628
--  Springfield |                  15232
--  Gosnold     |                  15265
-- (5 rows)


--Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT geography, percent_teen_births_2005_2008 
  FROM town_health_records 
    WHERE geography != 'Massachusetts Total' 
      AND geography != 'Boston' 
      AND geography != 'Becket' 
      AND geography != 'Beverly' 
  ORDER BY percent_teen_births_2005_2008 DESC 
  LIMIT 1;

--Returns
--
--  geography | percent_teen_births_2005_2008
-- -----------+-------------------------------
--  Holyoke   |                         23.27
-- (1 row)


--Omitting Boston, what town has the highest number of infant mortalities?
SELECT geography, infant_mortality_rate_per_1000_births_2005_2008 
  FROM town_health_records 
    WHERE geography != 'Boston' 
      AND geography != 'Massachusetts Total' 
    ORDER BY infant_mortality_rate_per_1000_births_2005_2008 DESC 
    LIMIT 1;

--Returns
--
--  geography | infant_mortality_rate_per_1000_births_2005_2008
-- -----------+-------------------------------------------------
--  Gardner   |                                              12
-- (1 row)