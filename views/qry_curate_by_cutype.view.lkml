view: qry_curate_by_cutype {
  sql_table_name: dbo.qryCURateByCUType ;;

  dimension: class_name {
    type: string
    sql: ${TABLE}.ClassName ;;
  }

  dimension: cuname {
    type: string
    sql: ${TABLE}.CUName ;;
  }

  dimension: total_units {
    type: number
    sql: ${TABLE}.TotalUnits ;;
  }

  dimension: unit_type {
    type: string
    sql: ${TABLE}.UnitType ;;
  }

  measure: count {
    type: count
    drill_fields: [cuname, class_name]
  }
}
