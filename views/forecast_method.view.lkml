view: forecast_method {
  sql_table_name: dbo.ForecastMethod ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: begin_month_num {
    type: number
    sql: ${TABLE}.BeginMonthNum ;;
  }

  dimension: business_unit_id {
    type: number
    sql: ${TABLE}.BusinessUnitID ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: end_month_num {
    type: number
    sql: ${TABLE}.EndMonthNum ;;
  }

  dimension: method {
    type: number
    sql: ${TABLE}.Method ;;
  }

  dimension: unit_adj {
    type: number
    sql: ${TABLE}.UnitAdj ;;
  }

  dimension: year_num {
    type: number
    sql: ${TABLE}.YearNum ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
