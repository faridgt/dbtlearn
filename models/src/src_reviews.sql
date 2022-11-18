with raw_reviews as (
select * from SAPI_9117.WORKSPACE_922307337.RAW_REVIEWS
)
select 

      LISTING_ID 
	, DATE review_date
	, REVIEWER_NAME 
	, COMMENTS  as review_text
	, SENTIMENT as REVIEW_SENTIMENT
from raw_reviews