view: t_sql_version {
  sql_table_name: dbo.tSqlVersion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: version_code {
    type: string
    sql: ${TABLE}.VersionCode ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
