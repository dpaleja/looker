view: job_class_basic_fcs {
  sql_table_name: dbo.JobClassBasicFCs ;;
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

  dimension: job_class_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.JobClassID ;;
  }

  dimension: month10_amount {
    type: number
    sql: ${TABLE}.Month10Amount ;;
  }

  dimension: month11_amount {
    type: number
    sql: ${TABLE}.Month11Amount ;;
  }

  dimension: month12_amount {
    type: number
    sql: ${TABLE}.Month12Amount ;;
  }

  dimension: month1_amount {
    type: number
    sql: ${TABLE}.Month1Amount ;;
  }

  dimension: month2_amount {
    type: number
    sql: ${TABLE}.Month2Amount ;;
  }

  dimension: month3_amount {
    type: number
    sql: ${TABLE}.Month3Amount ;;
  }

  dimension: month4_amount {
    type: number
    sql: ${TABLE}.Month4Amount ;;
  }

  dimension: month5_amount {
    type: number
    sql: ${TABLE}.Month5Amount ;;
  }

  dimension: month6_amount {
    type: number
    sql: ${TABLE}.Month6Amount ;;
  }

  dimension: month7_amount {
    type: number
    sql: ${TABLE}.Month7Amount ;;
  }

  dimension: month8_amount {
    type: number
    sql: ${TABLE}.Month8Amount ;;
  }

  dimension: month9_amount {
    type: number
    sql: ${TABLE}.Month9Amount ;;
  }

  dimension: year_num {
    type: number
    sql: ${TABLE}.YearNum ;;
  }

  measure: count {
    type: count
    drill_fields: [id, job_class.id, job_class.name]
  }
}
