view: report3_l3_bs_cu {
  sql_table_name: dbo.Report3_L3_BS_CU ;;

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: converted_charge {
    type: number
    sql: ${TABLE}.ConvertedCharge ;;
  }

  dimension: dbl_rate_spec {
    type: number
    sql: ${TABLE}.dblRateSpec ;;
  }

  dimension: funding_source {
    type: string
    sql: ${TABLE}.FundingSource ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."Group" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: str_classification {
    type: string
    sql: ${TABLE}.strClassification ;;
  }

  dimension: str_service_code {
    type: string
    sql: ${TABLE}.strServiceCode ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
  }

  dimension: str_unit_type {
    type: string
    sql: ${TABLE}.strUnitType ;;
  }

  dimension: unit_charge {
    type: number
    sql: ${TABLE}.UnitCharge ;;
  }

  dimension: unit_count {
    type: number
    sql: ${TABLE}.UnitCount ;;
  }

  measure: count {
    type: count
    drill_fields: [name, str_service_name]
  }
}
