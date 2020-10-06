view: qrpt_charge_comparision_cuids {
  sql_table_name: dbo.qrptChargeComparisionCUIDs ;;

  dimension: business_service_id {
    type: string
    sql: ${TABLE}.BusinessServiceID ;;
  }

  dimension: customer_unit_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.CustomerUnitID ;;
  }

  dimension: unit_count {
    type: number
    sql: ${TABLE}.UnitCount ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_unit.id, customer_unit.name]
  }
}
