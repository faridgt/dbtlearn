{% snapshot scd_raw_hosts  %}

{{
   config(
       target_database='SAPI_9117',
       target_schema='WORKSPACE_922307337',
       unique_key='id',
       strategy='check',
        check_cols=['name', 'is_superhost'],
   )
}}
select * FROM {{ source('SAPI_9117', 'hosts') }}  --source use table name mapping from sources.yml

{% endsnapshot %}