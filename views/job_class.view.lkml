view: job_class {
  sql_table_name: dbo.JobClass ;;
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

  dimension: cost_centre_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CostCentreID ;;
  }

  dimension: is_use_total_staff_cost {
    type: string
    sql: ${TABLE}.IsUseTotalStaffCost ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      cost_centres.id,
      cost_centres.name,
      job_class_allocations.count,
      job_class_basic_fcs.count
    ]
  }
}
