
with raw_reviews as (
    select * from 
    {{source('airbnb','reviews')}}
)
select
    listing_id,
    date as review_date,
    reviewer_name,
    comments as reviewer_comments,
    sentiment as reviewer_sentiments
from
    raw_reviews