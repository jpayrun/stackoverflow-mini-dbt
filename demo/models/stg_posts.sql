
{{config(materialized='view')}}

SELECT
    p.Id,
    p.OwnerUserId,
    p.CreationDate
from 
--dbo.posts p 
{{source('posts', 'posts')}} p
