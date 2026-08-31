WITH dedup_query AS
(
SELECT
 *,
 Row_Number() OVER( Partition BY id ORDER BY updateDate desc) as deduplication_id
 FROM
{{ source('source', 'items') }}
)
SELECT id,name,category,updateDate FROM dedup_query
WHERE deduplication_id=1