SELECT gsi.project_id, gsi.name, gsiia."type", gsi.self_link as link
FROM gcp_sql_instances gsi
JOIN gcp_sql_instance_ip_addresses gsiia ON
gsi.cq_id = gsiia.instance_cq_id
WHERE database_version LIKE 'SQLSERVER%'
AND gsiia.type = 'PRIMARY' OR backend_type != 'SECOND_GEN';