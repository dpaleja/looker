view: team_member {
  sql_table_name: dbo.TeamMember ;;

  dimension: member_id {
    type: number
    sql: ${TABLE}.MemberId ;;
  }

  dimension: team_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.TeamId ;;
  }

  measure: count {
    type: count
    drill_fields: [team.id, team.name]
  }
}
