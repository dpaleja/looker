view: unit_type {
  sql_table_name: dbo.UnitType ;;
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

  dimension: days_per_year {
    type: number
    sql: ${TABLE}.DaysPerYear ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: hours_per_year {
    type: number
    sql: ${TABLE}.HoursPerYear ;;
  }

  dimension: is_time {
    type: string
    sql: ${TABLE}.IsTime ;;
  }

  dimension: month1 {
    type: number
    sql: ${TABLE}.Month1 ;;
  }

  dimension: month10 {
    type: number
    sql: ${TABLE}.Month10 ;;
  }

  dimension: month11 {
    type: number
    sql: ${TABLE}.Month11 ;;
  }

  dimension: month12 {
    type: number
    sql: ${TABLE}.Month12 ;;
  }

  dimension: month2 {
    type: number
    sql: ${TABLE}.Month2 ;;
  }

  dimension: month3 {
    type: number
    sql: ${TABLE}.Month3 ;;
  }

  dimension: month4 {
    type: number
    sql: ${TABLE}.Month4 ;;
  }

  dimension: month5 {
    type: number
    sql: ${TABLE}.Month5 ;;
  }

  dimension: month6 {
    type: number
    sql: ${TABLE}.Month6 ;;
  }

  dimension: month7 {
    type: number
    sql: ${TABLE}.Month7 ;;
  }

  dimension: month8 {
    type: number
    sql: ${TABLE}.Month8 ;;
  }

  dimension: month9 {
    type: number
    sql: ${TABLE}.Month9 ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: time_type {
    type: number
    sql: ${TABLE}.TimeType ;;
  }

  dimension: use_default_time {
    type: string
    sql: ${TABLE}.UseDefaultTime ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
