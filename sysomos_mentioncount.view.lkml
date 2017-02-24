view: sysomos_mentioncount {
  sql_table_name: sysomos.sysomos_mentioncount ;;
  suggestions: no

  dimension: count {
    type: number
    sql: ${TABLE}.c ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.cr ;;
  }

  dimension: sysomos_id {
    type: string
    sql: ${TABLE}.i ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.s ;;
  }

  dimension: key {
    type: string
    sql: CONCAT(${created_raw},${sysomos_id},${source}) ;;
    primary_key: yes
    hidden: yes
  }

  measure: mentions {
    type: sum
    sql: ${count} ;;
    drill_fields: []
  }
}
