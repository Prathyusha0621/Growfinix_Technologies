USE growfinix_task2;

-- 1. KKR Win Rate by Stadium
SELECT
    venue,
    COUNT(*) AS matches_played,
    SUM(winner = 'Kolkata Knight Riders') AS wins,
    ROUND(
        100 * SUM(winner = 'Kolkata Knight Riders') / COUNT(*),
        2
    ) AS win_rate_pct
FROM matches
WHERE
    (team1 = 'Kolkata Knight Riders'
     OR team2 = 'Kolkata Knight Riders')
    AND winner IS NOT NULL
GROUP BY venue
ORDER BY win_rate_pct DESC;


-- 2. KKR Average Run Rate by Stadium
SELECT
    m.venue,
    ROUND(
        SUM(CAST(d.total_runs AS DECIMAL(10,2))) /
        NULLIF(
            SUM(
                CASE
                    WHEN CAST(d.wide_runs AS DECIMAL(10,2)) = 0
                    THEN 1
                    ELSE 0
                END
            ),
            0
        ) * 6,
        2
    ) AS average_run_rate
FROM matches m
JOIN deliveries_raw d
    ON CAST(d.match_id AS UNSIGNED) = m.id
WHERE d.batting_team = 'Kolkata Knight Riders'
GROUP BY m.venue
ORDER BY average_run_rate DESC;


-- 3. Combined KKR Stadium Performance
WITH venue_stats AS (
    SELECT
        venue,
        COUNT(*) AS matches_played,
        SUM(winner = 'Kolkata Knight Riders') AS wins,
        ROUND(
            100 * SUM(winner = 'Kolkata Knight Riders') / COUNT(*),
            2
        ) AS win_rate_pct
    FROM matches
    WHERE
        (team1 = 'Kolkata Knight Riders'
         OR team2 = 'Kolkata Knight Riders')
        AND winner IS NOT NULL
    GROUP BY venue
),
run_stats AS (
    SELECT
        m.venue,
        ROUND(
            SUM(CAST(d.total_runs AS DECIMAL(10,2))) /
            NULLIF(
                SUM(
                    CASE
                        WHEN CAST(d.wide_runs AS DECIMAL(10,2)) = 0
                        THEN 1
                        ELSE 0
                    END
                ),
                0
            ) * 6,
            2
        ) AS average_run_rate
    FROM matches m
    JOIN deliveries_raw d
        ON CAST(d.match_id AS UNSIGNED) = m.id
    WHERE d.batting_team = 'Kolkata Knight Riders'
    GROUP BY m.venue
)
SELECT
    v.venue,
    v.matches_played,
    v.wins,
    v.win_rate_pct,
    r.average_run_rate,
    RANK() OVER (ORDER BY v.win_rate_pct DESC) AS win_rate_rank
FROM venue_stats v
LEFT JOIN run_stats r
    ON v.venue = r.venue
ORDER BY win_rate_rank;
