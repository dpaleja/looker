view: v_user_expense_item {
  sql_table_name: dbo.vUserExpenseItem ;;

  dimension: ex_id {
    type: number
    sql: ${TABLE}.ExID ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.UserID ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.UserName ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      user_name,
      users.name,
      users.first_name,
      users.last_name,
      users.aduser_name,
      users.oauth_user_id
    ]
  }
}
