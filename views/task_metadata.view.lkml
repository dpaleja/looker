view: task_metadata {
  sql_table_name: dbo.TaskMetadata ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: creator {
    type: number
    sql: ${TABLE}.Creator ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: enabled {
    type: string
    sql: ${TABLE}.Enabled ;;
  }

  dimension: execute_type {
    type: number
    sql: ${TABLE}.ExecuteType ;;
  }

  dimension: last_updator {
    type: number
    sql: ${TABLE}.LastUpdator ;;
  }

  dimension: metadata {
    type: string
    sql: ${TABLE}.Metadata ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: option {
    type: number
    sql: ${TABLE}."Option" ;;
  }

  dimension: prompt_msg {
    type: string
    sql: ${TABLE}.PromptMsg ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}.State ;;
  }

  dimension: task_class_type {
    type: string
    sql: ${TABLE}.TaskClassType ;;
  }

  dimension: task_type {
    type: number
    sql: ${TABLE}.TaskType ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
