view: qry_bsand_racharge {
  sql_table_name: dbo.qryBSandRACharge ;;

  dimension: cucharge_id {
    type: number
    sql: ${TABLE}.CUChargeID ;;
  }

  dimension: dummy_cuid {
    type: number
    value_format_name: id
    sql: ${TABLE}.DummyCUID ;;
  }

  dimension: racharge_id {
    type: number
    sql: ${TABLE}.RAChargeID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
