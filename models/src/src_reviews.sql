WITH raw_reviews AS (
 SELECT *  FROM {{ source('airbnb', 'reviews') }}
)
SELECT
 listing_id,
 reviewer_name,
 date AS review_date,
 comments AS review_text,
 sentiment AS review_sentiment
FROM
 raw_reviews