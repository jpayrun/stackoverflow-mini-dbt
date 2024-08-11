{{config(materialized='view')}}

with UserPosts as (
    SELECT
        p.Id,
        u.id UserId,
        u.DisplayName,
        p.CreationDate,
        p.LastActivityDate
    from {{ref('stg_posts')}} p
        left join {{ref('stg_users')}} u
            on u.Id = p.OwnerUserId)

SELECT
    *
from UserPosts