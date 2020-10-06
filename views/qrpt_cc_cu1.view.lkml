view: qrpt_cc_cu1 {
  sql_table_name: dbo.qrptCC_CU1 ;;

  dimension: allocation_percent {
    type: number
    sql: ${TABLE}.AllocationPercent ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: funding_source {
    type: string
    sql: ${TABLE}.FundingSource ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."Group" ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: lng_volume_spec {
    type: number
    sql: ${TABLE}.lngVolumeSpec ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: str_classification {
    type: string
    sql: ${TABLE}.strClassification ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
  }

  dimension: unit_count {
    type: number
    sql: ${TABLE}.UnitCount ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name, name, str_service_name]
  }
}
