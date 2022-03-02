SELECT n, 
    CASE WHEN p IS NULL THEN 'Root'
        WHEN n IN (SELECT p FROM BST) THEN 'Inner'
        ELSE 'Leaf' 
    END
FROM BST
ORDER BY n ASC;