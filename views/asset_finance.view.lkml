view: asset_finance {
  sql_table_name: dbo.AssetFinance ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: purchase_cost {
    type: number
    sql: ${TABLE}.PurchaseCost ;;
  }

  dimension: repalcement_cost {
    type: number
    sql: ${TABLE}.RepalcementCost ;;
  }

  dimension: year_num {
    type: number
    sql: ${TABLE}.YearNum ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
