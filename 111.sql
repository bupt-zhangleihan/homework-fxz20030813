-- SQLite
-- 返回Cities表中所有城市名称
SELECT city FROM Cities;

-- 返回Cities表中的所有城市爱尔兰
SELECT * FROM Cities WHERE country = '爱尔兰';

-- 返回所有机场名称及其城市和国家
SELECT A.name, C.city, C.country FROM Airports A
JOIN Cities C ON A.city_id = C.id;

-- 返回伦敦, 英国的所有机场
SELECT A.name FROM Airports A
JOIN Cities C ON A.city_id = C.id
WHERE C.city = '伦敦' AND C.country = '英国';