{% snapshot scd_raw_listings %}
{{
config(
       target_schema='WORKSPACE_922307337',
       unique_key='id',
       strategy='timestamp',
       updated_at='updated_at',
       invalidate_hard_deletes=True
) }}
select * FROM {{ source('SAPI_9117', 'listings') }}  --source use table name mapping from sources.yml
{% endsnapshot %}