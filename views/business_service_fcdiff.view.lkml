view: business_service_fcdiff {
  sql_table_name: dbo.BusinessServiceFCDiff ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: fcdiff {
    type: number
    sql: ${TABLE}.FCDiff ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
  }

  dimension: year_num {
    type: number
    sql: ${TABLE}.YearNum ;;
  }

  measure: count {
    type: count
    drill_fields: [id, services.id, services.name]
  }
}
