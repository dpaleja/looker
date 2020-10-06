view: import_file {
  sql_table_name: dbo.ImportFile ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: auto_user_name_suffix {
    type: string
    sql: ${TABLE}.AutoUserNameSuffix ;;
  }

  dimension: has_header {
    type: string
    sql: ${TABLE}.HasHeader ;;
  }

  dimension: is_default {
    type: string
    sql: ${TABLE}.IsDefault ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: save_id {
    type: number
    sql: ${TABLE}.SaveId ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
