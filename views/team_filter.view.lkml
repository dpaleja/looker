view: team_filter {
  sql_table_name: dbo.TeamFilter ;;

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceId ;;
  }

  dimension: team_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.TeamId ;;
  }

  measure: count {
    type: count
    drill_fields: [team.id, team.name, services.id, services.name]
  }
}
