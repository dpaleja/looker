view: account_codes {
  sql_table_name: dbo.AccountCodes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: _old_id {
    type: number
    sql: ${TABLE}._Old_ID ;;
  }

  dimension: classification_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ClassificationID ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: is_restricted_view {
    type: string
    sql: ${TABLE}.IsRestrictedView ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: sort_key {
    type: string
    sql: ${TABLE}.SortKey ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      classification.id,
      classification.name,
      job_class_account_codes.count,
      user_account_code_access.count,
      v_expense_item.count,
      v_user_account_code.count
    ]
  }
}
