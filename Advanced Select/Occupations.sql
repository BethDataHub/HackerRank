SELECT Doctor, 
    Professor, 
    Singer, 
    Actor  
FROM  
(
  SELECT ROW_NUMBER() OVER(PARTITION BY occupation ORDER BY name ASC) AS RowNumber,
    name,
    occupation
  FROM occupations
) AS SourceTable  
PIVOT  
(  
  MAX(name)  
  FOR occupation IN (Doctor, Professor, Singer, Actor)  
) AS PivotTable;  