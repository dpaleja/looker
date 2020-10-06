view: custom_label_values {
  sql_table_name: dbo.CustomLabelValues ;;

  dimension: custom_label_id {
    type: number
    sql: ${TABLE}.CustomLabelID ;;
  }

  dimension: custom_label_value {
    type: string
    sql: ${TABLE}.CustomLabelValue ;;
  }

  dimension: custom_two_digit_code {
    type: string
    sql: ${TABLE}.CustomTwoDigitCode ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
