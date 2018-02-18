view: sql_runner_query {
  derived_table: {
    sql: select * from public.drive limit 10
      ;;
  }

### edits on line 6
### more edits
### other comment on line 6 by other spencer

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: gsis_id {
    type: string
    sql: ${TABLE}.gsis_id ;;
  }

  dimension: drive_id {
    type: string
    sql: ${TABLE}.drive_id ;;
  }

  dimension: start_field {
    type: string
    sql: ${TABLE}.start_field ;;
  }

  dimension: start_time {
    type: string
    sql: ${TABLE}.start_time ;;
  }

  dimension: end_field {
    type: string
    sql: ${TABLE}.end_field ;;
  }

  dimension: end_time {
    type: string
    sql: ${TABLE}.end_time ;;
  }

  dimension: pos_team {
    type: string
    sql: ${TABLE}.pos_team ;;
  }

  dimension: pos_time {
    type: string
    sql: ${TABLE}.pos_time ;;
  }

  dimension: first_downs {
    type: string
    sql: ${TABLE}.first_downs ;;
  }

  dimension: result {
    type: string
    sql: ${TABLE}.result ;;
  }

  dimension: penalty_yards {
    type: string
    sql: ${TABLE}.penalty_yards ;;
  }

  dimension: yards_gained {
    type: string
    sql: ${TABLE}.yards_gained ;;
  }

  dimension: play_count {
    type: string
    sql: ${TABLE}.play_count ;;
  }

  dimension: time_inserted {
    type: string
    sql: ${TABLE}.time_inserted ;;
  }

  dimension: time_updated {
    type: string
    sql: ${TABLE}.time_updated ;;
  }

  set: detail {
    fields: [
      gsis_id,
      drive_id,
      start_field,
      start_time,
      end_field,
      end_time,
      pos_team,
      pos_time,
      first_downs,
      result,
      penalty_yards,
      yards_gained,
      play_count,
      time_inserted,
      time_updated
    ]
  }
}
