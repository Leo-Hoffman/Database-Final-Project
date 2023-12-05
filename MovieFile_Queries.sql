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

-- Selects all shows that aren't on Netflix.

SELECT show_id, show_name, platform
FROM shows
WHERE platform != 'Netflix'
ORDER BY show_id;

-- Selects all episodes given less than a certain rating by any user.

SELECT e.episode_id, episode_title, episode_number, user_rating
FROM episode e JOIN user_episode u
ON e.episode_id = u.episode_id
WHERE user_rating < 6
ORDER BY episode_id DESC;

-- Selects all users, their age, and their average rating for users over 35.

SELECT username, age, (
	SELECT AVG(user_rating)
    FROM user_episode u JOIN episode e
    ON e.episode_id = u.episode_id
    WHERE user_id = users.user_id
    GROUP BY show_id 
) AS average_rating
FROM users
WHERE age >= 35
ORDER BY username;

-- Selects any Netflix show that h as any user has rated higher than 3.

SELECT platform, show_name, user_rating
FROM shows s JOIN user_show u
ON s.show_id  = u.show_id
WHERE platform = "Netflix" AND user_rating >= 3
GROUP BY platform, show_name, user_rating;


-- The average rating of all episodes of a show by one user.

SELECT show_name, (
	SELECT AVG(user_rating)
    FROM user_episode u JOIN episode e
    ON e.episode_id = u.episode_id
    WHERE user_id = 1 AND show_id = shows.show_id
    GROUP BY show_id 
) AS average_rating
FROM shows
ORDER BY average_rating DESC;

-- The average rating of all episodes of a show by all users.

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
