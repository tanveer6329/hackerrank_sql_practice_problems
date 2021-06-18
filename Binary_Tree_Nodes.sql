-- method-1
-- SELECT N, IF(P IS NULL,'Root',IF((SELECT COUNT(*) FROM BST WHERE P=B.N)>0,'Inner','Leaf'))
-- FROM BST AS B
-- ORDER BY N;


-- method-2
-- select N, case 
--     when P is NULL then 'Root'
--     when N in (select P from BST) then 'Inner'
--     else 'Leaf'
--     end as Node 
--     from BST order by N;


-- method-3
SELECT CASE
    WHEN P IS NULL THEN CONCAT(N, ' Root')
    WHEN N IN (SELECT DISTINCT P FROM BST) THEN CONCAT(N, ' Inner')
    ELSE CONCAT(N, ' Leaf')
    END
FROM BST
ORDER BY N ASC;