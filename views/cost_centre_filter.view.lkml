view: cost_centre_filter {
  sql_table_name: dbo.CostCentreFilter ;;

  dimension: cost_centre_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CostCentreId ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceId ;;
  }

  measure: count {
    type: count
    drill_fields: [cost_centres.id, cost_centres.name, services.id, services.name]
  }
}
