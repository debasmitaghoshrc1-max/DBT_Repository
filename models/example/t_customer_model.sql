{{
    config(
        materialized='view'
    )
}}
select username, password from dev_db.dev_schema.t_customer