-- Identify Countries with Significant Improvement or Decline in Water Access

-- SELECT c.Country_Name, 
      --  MAX(CASE WHEN y.Year = 2023 THEN p.Percent_Basic_Water_Services ELSE NULL END) AS Percent_Basic_Water_Services_2023,
      -- MAX(CASE WHEN y.Year = 2010 THEN p.Percent_Basic_Water_Services ELSE NULL END) AS Percent_Basic_Water_Services_2010
--  FROM Population p
-- JOIN Country c ON p.Country_ID = c.Country_ID
-- JOIN Year y ON p.Year_ID = y.Year_ID
-- WHERE y.Year IN (2010, 2023)
-- GROUP BY c.Country_Name
-- HAVING ABS(MAX(CASE WHEN y.Year = 2023 THEN p.Percent_Basic_Water_Services ELSE NULL END) - 
           -- MAX(CASE WHEN y.Year = 2010 THEN p.Percent_Basic_Water_Services ELSE NULL END)) > 10
-- ORDER BY ABS(MAX(CASE WHEN y.Year = 2023 THEN p.Percent_Basic_Water_Services ELSE NULL END) - 
           --  MAX(CASE WHEN y.Year = 2010 THEN p.Percent_Basic_Water_Services ELSE NULL END)) DESC;


-- Count of Countries Reporting Water Access Metrics

-- SELECT y.Year, COUNT(DISTINCT c.Country_Name) AS Number_of_Countries
-- FROM Population p
-- JOIN Country c ON p.Country_ID = c.Country_ID
-- JOIN Year y ON p.Year_ID = y.Year_ID
-- GROUP BY y.Year
-- ORDER BY y.Year;

-- Identify Countries with Significant Changes in Water Access

-- SELECT c.Country_Name, 
       -- MAX(CASE WHEN y.Year = 2023 THEN p.Percent_Basic_Water_Services ELSE NULL END) AS Percent_Basic_Water_Services_2023,
       -- MAX(CASE WHEN y.Year = 2010 THEN p.Percent_Basic_Water_Services ELSE NULL END) AS Percent_Basic_Water_Services_2010,
       -- MAX(CASE WHEN y.Year = 2023 THEN p.Percent_Basic_Water_Services ELSE NULL END) - 
       -- MAX(CASE WHEN y.Year = 2010 THEN p.Percent_Basic_Water_Services ELSE NULL END) AS Change_in_Access
-- FROM Population p
-- JOIN Country c ON p.Country_ID = c.Country_ID
-- JOIN Year y ON p.Year_ID = y.Year_ID
-- WHERE y.Year IN (2010, 2023)
-- GROUP BY c.Country_Name
-- HAVING ABS(Change_in_Access) > 10
-- ORDER BY Change_in_Access DESC;

-- Regional Analysis of No Water Service

-- SELECT c.SDG_Region, AVG(p.Percent_No_Water_Service) AS Avg_Percent_No_Water_Service
-- FROM Population p
-- JOIN Country c ON p.Country_ID = c.Country_ID
-- JOIN Year y ON p.Year_ID = y.Year_ID
-- WHERE y.Year = 2023
-- GROUP BY c.SDG_Region
-- ORDER BY Avg_Percent_No_Water_Service DESC;

-- Detailed Report on Water Access in a Specific Country

-- SELECT y.Year, 
       -- p.Percent_Basic_Water_Services AS Percent_Basic_Water_Services,
     --   p.Percent_Limited_Water_Services AS Percent_Limited_Water_Services,
      --  p.Percent_No_Water_Service AS Percent_No_Water_Service,
       -- p.Percent_Basic_Water_Services_Urban AS Percent_Basic_Water_Urban,
      --  p.Percent_Basic_Water_Services_Rural AS Percent_Basic_Water_Rural
-- FROM Population p
-- JOIN Country c ON p.Country_ID = c.Country_ID
-- JOIN Year y ON p.Year_ID = y.Year_ID
-- WHERE c.Country_Name = 'Kenya' AND y.Year = 2022;