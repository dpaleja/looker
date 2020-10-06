view: job_class_account_codes {
  sql_table_name: dbo.JobClassAccountCodes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: account_code_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AccountCodeID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, account_codes.id, account_codes.name]
  }
}
