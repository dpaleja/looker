view: v_pam_business_service_units {
  sql_table_name: dbo.vPAM_BusinessServiceUnits ;;

  dimension_group: actual {
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
    sql: ${TABLE}.ActualDate ;;
  }

  dimension: available_units {
    type: number
    sql: ${TABLE}.AvailableUnits ;;
  }

  dimension: bscode {
    type: string
    sql: ${TABLE}.BSCode ;;
  }

  dimension: bsname {
    type: string
    sql: ${TABLE}.BSName ;;
  }

  dimension: committed_units {
    type: number
    sql: ${TABLE}.CommittedUnits ;;
  }

  dimension: estimated_units {
    type: number
    sql: ${TABLE}.EstimatedUnits ;;
  }

  dimension: is_staff {
    type: number
    sql: ${TABLE}.IsStaff ;;
  }

  dimension: unit_rate {
    type: number
    sql: ${TABLE}.UnitRate ;;
  }

  dimension: unit_type {
    type: string
    sql: ${TABLE}.UnitType ;;
  }

  measure: count {
    type: count
    drill_fields: [bsname]
  }
}
