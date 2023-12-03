-- Selects all episodes any user has seen and that aren't in any watchlists.

SELECT user_has_seen, in_watchlist 
FROM user_episode
WHERE user_has_seen = TRUE AND in_watchlist = FALSE;

-- Selects all episodes any user hasn't seen but are in their watchlist.

SELECT show_id, u.episode_id, episode_title
FROM user_episode u JOIN episode e
ON u.episode_id = e.episode_id
WHERE user_has_seen = FALSE AND in_watchlist = TRUE;

-- Selects all shows that have only one season.

SELECT show_name, number_of_seasons
FROM shows
WHERE number_of_seasons = 1
ORDER BY show_name;

-- Selects all shows that started before 2000

SELECT show_name, start_year
FROM shows
WHERE start_year <= 2000
ORDER BY show_name ASC;

SELECT show_id, show_name, platform
FROM shows
WHERE platform = 'Peacock' NOT IN 
(SELECT DISTINCT show_id
FROM shows)
ORDER BY show_id;

SELECT episode_id, episode_title, episode_number
FROM episode
WHERE NOT EXISTS
(SELECT *
FROM user_episode
WHERE user_rating >= 6)
ORDER BY episode_id DESC;

SELECT t1.age, username, t1.user_rating
FROM
(SELECT age, username, user_rating
FROM users u JOIN user_episode e
ON u.user_id = e.use_id
WHERE age >= 35
GROUP BY age, userating) t1
JOIN -- t1 AND t3
(
SELECT age, user_rating 
FROM(SELECT age, username, user_rating
FROM users u JOIN user_episode e
ON u.user_id = e.use_id
WHERE age >= 35
GROUP BY age, user_rating) t2
GROUP BY age
) t3
ON t1.age = t3.age AND 
t1.user_rating = t3.user_rating
ORDER BY username DESC;

SELECT a1.platform, show_name, a3.user_rating
FROM
(SELECT platform, show_name, user_rating
FROM shows s JOIN user_show u
ON s.show_id  = u.show_id
WHERE platform = "Netflix" AND user_rating >= 3
GROUP BY platform, user_rating) a1
JOIN -- a1 and a3
(
SELECT platform, user_rating
FROM 
(SELECT platform, show_name, user_rating
FROM shows s JOIN user_show u
ON s.show_id  = u.show_id
WHERE platform = "Netflix" AND user_rating >= 3
GROUP BY platform, user_rating) a2
GROUP BY platform
) a3
ON a1.platform = a3.plaform AND
a1.user_rating = a3.user_rating
ORDER BY show_name DESC;




SELECT show_name, (
	SELECT AVG(user_rating)
    FROM user_episode u JOIN episode e
    ON e.episode_id = u.episode_id
    WHERE user_id = 1 AND show_id = shows.show_id
    GROUP BY show_id 
) AS average_rating
FROM shows
ORDER BY average_rating DESC;

SELECT show_name, (
	SELECT AVG(user_rating)
    FROM user_episode u JOIN episode e
    ON e.episode_id = u.episode_id
    WHERE show_id = shows.show_id
    GROUP BY show_id 
) AS average_rating
FROM shows
ORDER BY average_rating DESC;

-- GOAL: Return the average ratings from a given user of all the episodes of a given show.

SELECT AVG(user_rating)
    FROM user_episode u JOIN episode e
    ON e.episode_id = u.episode_id
    WHERE user_id = 1 AND show_id = 1
    GROUP BY show_id;

-- 
    
SELECT platform, count(*) as number_shows
FROM shows
GROUP BY platform
ORDER BY number_shows DESC;