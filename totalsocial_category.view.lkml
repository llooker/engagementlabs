view: totalsocial_category {
  sql_table_name: totalsocial.totalsocial_category ;;
  suggestions: no

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: c {
    type: string
    sql: ${TABLE}.c ;;
  }

  dimension: n {
    type: string
    sql: ${TABLE}.n ;;
  }

  dimension: p {
    type: string
    sql: ${TABLE}.p ;;
  }

  dimension_group: sd {
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

  measure: count {
    type: count
    drill_fields: []
  }
}
