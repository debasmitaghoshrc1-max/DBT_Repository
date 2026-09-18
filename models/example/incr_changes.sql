{{
    config(
        materialized='incremental',
        unique_key='empno'
    )
}}

select * from DEV_DB.DEV_SCHEMA.s_emp

{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where D_UPD_DATE > (select max(D_UPD_DATE) from {{ this }}) 
{% endif %}