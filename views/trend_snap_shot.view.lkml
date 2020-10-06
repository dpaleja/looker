view: trend_snap_shot {
  sql_table_name: dbo.TrendSnapShot ;;

  dimension: formula_value {
    type: number
    sql: ${TABLE}.FormulaValue ;;
  }

  dimension: snap_shot_id {
    type: number
    sql: ${TABLE}.SnapShotID ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: trend_id {
    type: number
    sql: ${TABLE}.TrendID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
