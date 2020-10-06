view: object_type {
  sql_table_name: dbo.ObjectType ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: import_task_type {
    type: string
    sql: ${TABLE}.ImportTaskType ;;
  }

  dimension: import_type {
    type: number
    sql: ${TABLE}.ImportType ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
