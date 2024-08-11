SELECT  
    *
from {{ref("user_posts")}}
WHERE   
    LastActivityDate < CreationDate