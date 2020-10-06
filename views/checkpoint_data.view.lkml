view: checkpoint_data {
  sql_table_name: dbo.CheckpointData ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: _old_id {
    type: number
    sql: ${TABLE}._Old_ID ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: checkpoint_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CheckpointID ;;
  }

  dimension: level0 {
    type: string
    sql: ${TABLE}.Level0 ;;
  }

  dimension: level0_code {
    type: string
    sql: ${TABLE}.Level0Code ;;
  }

  dimension: level1 {
    type: string
    sql: ${TABLE}.Level1 ;;
  }

  dimension: level1_code {
    type: string
    sql: ${TABLE}.Level1Code ;;
  }

  dimension: level2 {
    type: string
    sql: ${TABLE}.Level2 ;;
  }

  dimension: level2_code {
    type: string
    sql: ${TABLE}.Level2Code ;;
  }

  dimension: level3 {
    type: string
    sql: ${TABLE}.Level3 ;;
  }

  dimension: level3_code {
    type: string
    sql: ${TABLE}.Level3Code ;;
  }

  dimension: view {
    type: number
    sql: ${TABLE}."View" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, checkpoint.id, checkpoint.name]
  }
}
