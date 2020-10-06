view: team {
  sql_table_name: dbo.Team ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: owner_id {
    type: number
    sql: ${TABLE}.OwnerID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, team_filter.count, team_member.count, v_expense_item.count]
  }
}
