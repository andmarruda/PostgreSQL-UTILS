--disable trigger with his owner table and schema
SELECT
	pt.tgname, pt.tgenabled, pc.relname,
	pc.relnamespace, pn.nspname
FROM
	pg_trigger pt
	JOIN pg_class pc ON pc.oid=pt.tgrelid
	JOIN pg_namespace pn ON pn.oid=pc.relnamespace
WHERE
	tgenabled='D'
;
