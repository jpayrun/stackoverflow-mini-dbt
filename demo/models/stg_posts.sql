
{{config(materialized='view')}}

SELECT
    p.Id,
    p.OwnerUserId,
    p.CreationDate,
    p.LastActivityDate 
from 
--dbo.posts p 
{{source('posts', 'posts')}} p
