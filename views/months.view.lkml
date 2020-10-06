view: months {
  sql_table_name: dbo.Months ;;

  dimension: apr {
    type: string
    sql: ${TABLE}.Apr ;;
  }

  dimension: aug {
    type: string
    sql: ${TABLE}.Aug ;;
  }

  dimension: dec {
    type: string
    sql: ${TABLE}.Dec ;;
  }

  dimension: feb {
    type: string
    sql: ${TABLE}.Feb ;;
  }

  dimension: jan {
    type: string
    sql: ${TABLE}.Jan ;;
  }

  dimension: jul {
    type: string
    sql: ${TABLE}.Jul ;;
  }

  dimension: jun {
    type: string
    sql: ${TABLE}.Jun ;;
  }

  dimension: mar {
    type: string
    sql: ${TABLE}.Mar ;;
  }

  dimension: may {
    type: string
    sql: ${TABLE}.May ;;
  }

  dimension: nov {
    type: string
    sql: ${TABLE}.Nov ;;
  }

  dimension: oct {
    type: string
    sql: ${TABLE}.Oct ;;
  }

  dimension: sep {
    type: string
    sql: ${TABLE}.Sep ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
