{{ config(materialized='view') }}
select empno, ename, job from  dev_db.dev_schema.t_emp_info