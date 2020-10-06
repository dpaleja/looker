view: trend_set {
  sql_table_name: dbo.TrendSet ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: formula {
    type: string
    sql: ${TABLE}.Formula ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.ItemName ;;
  }

  dimension: level {
    type: number
    sql: ${TABLE}.Level ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: trend_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.TrendTypeID ;;
  }

  dimension: view_id {
    type: number
    sql: ${TABLE}.ViewID ;;
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
      item_name,
      trend_type.id,
      trend_type.name,
      dashboard_setting_module_data_sources.count
    ]
  }
}
