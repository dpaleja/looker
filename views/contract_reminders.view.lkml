view: contract_reminders {
  sql_table_name: dbo.ContractReminders ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: reminder_item {
    type: string
    sql: ${TABLE}.ReminderItem ;;
  }

  dimension: reminder_item_id {
    type: number
    sql: ${TABLE}.ReminderItemID ;;
  }

  dimension: reminder_type {
    type: number
    sql: ${TABLE}.ReminderType ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      users.name,
      users.first_name,
      users.last_name,
      users.aduser_name,
      users.oauth_user_id
    ]
  }
}
