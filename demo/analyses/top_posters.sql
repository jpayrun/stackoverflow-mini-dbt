
SELECT
    DisplayName,
    count(*) Total_Posts
from {{ref('user_posts')}}
group by 
    displayname
