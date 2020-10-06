view: user_account_code_access {
  sql_table_name: dbo.UserAccountCodeAccess ;;

  dimension: account_code_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AccountCodeID ;;
  }

  dimension: restriction_type {
    type: number
    sql: ${TABLE}.RestrictionType ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      users.name,
      users.first_name,
      users.last_name,
      users.aduser_name,
      users.oauth_user_id,
      account_codes.id,
      account_codes.name
    ]
  }
}
