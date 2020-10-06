view: custom_label_types {
  sql_table_name: dbo.CustomLabelTypes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: default_two_digit_code {
    type: string
    sql: ${TABLE}.DefaultTwoDigitCode ;;
  }

  dimension: default_value {
    type: string
    sql: ${TABLE}.DefaultValue ;;
  }

  dimension: is_current {
    type: string
    sql: ${TABLE}.IsCurrent ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
