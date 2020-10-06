view: exmonthly_variance {
  sql_table_name: dbo.EXMonthlyVariance ;;
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

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.Comment ;;
  }

  dimension: comments_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CommentsTypeID ;;
  }

  dimension_group: data_stamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataStamp ;;
  }

  dimension: expense_id {
    type: number
    sql: ${TABLE}.ExpenseID ;;
  }

  dimension: monthly {
    type: number
    sql: ${TABLE}.Monthly ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.Path ;;
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
      comments_type.id,
      comments_type.name,
      users.name,
      users.first_name,
      users.last_name,
      users.aduser_name,
      users.oauth_user_id
    ]
  }
}
