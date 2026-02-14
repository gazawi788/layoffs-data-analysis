--  DATA EXPLORATORY DATA ANALYSIS

SELECT * FROM
layoffs_staging;

SELECT MAX(total_laid_off), MAX(percentage_laid_off)
 FROM
layoffs_staging;

SELECT * FROM
layoffs_staging
WHERE percentage_laid_off = 1 
ORDER BY funds_raised_millions DESC ;



SELECT company , SUM(total_laid_off)
 FROM
layoffs_staging2
group by company
ORDER BY 2 desc;


SELECT MIN(`date`), MAX(`date`)
 FROM
layoffs_staging2;



SELECT industry , SUM(total_laid_off)
 FROM
layoffs_staging2
group by industry
ORDER BY 2 desc;


SELECT country, SUM(total_laid_off)
 FROM
layoffs_staging2
group by country
ORDER BY 2 desc;

SELECT  year(`date`), SUM(total_laid_off)
 FROM
layoffs_staging2
group by year(`date`)
ORDER BY 1 desc;

SELECT  stage, SUM(total_laid_off)
 FROM
layoffs_staging2
group by stage
ORDER BY 1 desc;


SELECT  company, AVG(percentage_laid_off)
 FROM
layoffs_staging2
group by company
ORDER BY 2 desc;


SELECT substring(`date`,1,7) AS `MONTH`, SUM(total_laid_off)
 FROM
layoffs_staging2
WHERE substring(`date`,1,7) IS NOT NULL
GROUP BY `MONTH`
ORDER BY 1 ASC;


WITH Rolling_total AS
(
SELECT substring(`date`,1,7) AS `MONTH`, SUM(total_laid_off) AS total_off
 FROM
layoffs_staging2
WHERE substring(`date`,1,7) IS NOT NULL
GROUP BY `MONTH`
ORDER BY 1 ASC
)
SELECT `MONTH`,  total_off
,SUM(total_off) OVER(ORDER BY  `MONTH`) AS Rolling_total
FROM Rolling_total;


SELECT  company, YEAR(`date`), SUM(total_laid_off)
 FROM
layoffs_staging2
group by company ,  YEAR(`date`)
ORDER BY 3 desc;


WITH Company_year (company,years ,total_laid_off) AS
(
SELECT  company, YEAR(`date`), SUM(total_laid_off)
 FROM
layoffs_staging2
group by company ,  YEAR(`date`)

), Company_year_rank AS
(SELECT  *, dense_rank() over(PARTITION BY years order by total_laid_off desc) AS Ranking
FROM
Company_year
WHERE years IS NOT NULL
) SELECT * FROM
Company_year_rank
WHERE Ranking <=5;

