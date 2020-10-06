view: service_comp_fcdiff {
  sql_table_name: dbo.ServiceCompFCDiff ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: base_diff {
    type: number
    sql: ${TABLE}.BaseDiff ;;
  }

  dimension: fcdiff {
    type: number
    sql: ${TABLE}.FCDiff ;;
  }

  dimension: is_absorption {
    type: string
    sql: ${TABLE}.IsAbsorption ;;
  }

  dimension: nabsorption {
    type: number
    sql: ${TABLE}.Nabsorption ;;
  }

  dimension: pabsorption {
    type: number
    sql: ${TABLE}.Pabsorption ;;
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
