view: misallocation_error_messages {
  sql_table_name: dbo.MisallocationErrorMessages ;;

  dimension: error_code {
    type: number
    sql: ${TABLE}.ErrorCode ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.ErrorMessage ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
