
{{config(materialized='view')}}

SELECT
    u.id,
    u.DisplayName
from 
    --dbo.users u
    {{source('users', 'users') }} u
