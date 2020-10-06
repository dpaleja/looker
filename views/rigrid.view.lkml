view: rigrid {
  sql_table_name: dbo.RIGrid ;;

  dimension: column {
    type: number
    sql: ${TABLE}."Column" ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.FieldName ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: ritype {
    type: number
    sql: ${TABLE}.RIType ;;
  }

  dimension: visible {
    type: string
    sql: ${TABLE}.Visible ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}.Width ;;
  }

  measure: count {
    type: count
    drill_fields: [name, field_name]
  }
}
