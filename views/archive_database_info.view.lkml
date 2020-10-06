view: archive_database_info {
  sql_table_name: dbo.ArchiveDatabaseInfo ;;

  dimension: is_target_sql_server_auth {
    type: string
    sql: ${TABLE}.IsTargetSqlServerAuth ;;
  }

  dimension: source_database {
    type: string
    sql: ${TABLE}.SourceDatabase ;;
  }

  dimension: source_server {
    type: string
    sql: ${TABLE}.SourceServer ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
