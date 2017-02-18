view: brand {
  sql_table_name: totalsocial.totalsocial_brand ;;
  suggestions: no

  dimension: id {
    type: string
    sql: ${TABLE}._id ;;
    primary_key: yes
  }

  dimension: country {
    type: string
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
    sql: ${TABLE}.cd ;;
  }

  dimension: evalue_ids {
    type: string
    sql: ${TABLE}.eid ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.h ;;
  }

  dimension: is_benchmark {
    type: yesno
    sql: ${TABLE}.ib ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}.md ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.n ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}.p ;;
  }

  dimension_group: last_synchronized {
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
    sql: ${TABLE}.sd ;;
  }

  dimension: sysomos_id {
    type: string
    sql: ${TABLE}.sid ;;
  }

  dimension: talktrack_id {
    type: string
    sql: ${TABLE}.tid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
