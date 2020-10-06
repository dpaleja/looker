view: asset_event {
  sql_table_name: dbo.AssetEvent ;;
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

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension_group: event {
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
    sql: ${TABLE}.EventDate ;;
  }

  dimension: event_id {
    type: number
    sql: ${TABLE}.EventID ;;
  }

  dimension: expense_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ExpenseItemID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, expense_items.id, expense_items.name]
  }
}
