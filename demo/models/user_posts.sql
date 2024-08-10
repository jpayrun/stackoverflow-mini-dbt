{{config(materialized='view')}}

with UserPosts as (
    SELECT
        p.Id,
        u.id UserId,
        u.DisplayName,
        p.CreationDate
    from dbo.Posts p
        left join dbo.Users u
            on u.Id = p.OwnerUserId)

SELECT
    *
from UserPosts