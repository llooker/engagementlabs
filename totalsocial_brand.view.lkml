view: brand {
  sql_table_name: totalsocial.totalsocial_brand ;;
  suggestions: no

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
    primary_key: yes
  }

  dimension: c {
    type: string
    sql: ${TABLE}.c ;;
  }

  dimension_group: cd {
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

  dimension: eid {
    type: string
    sql: ${TABLE}.eid ;;
  }

  dimension: h {
    type: string
    sql: ${TABLE}.h ;;
  }

  dimension: ib {
    type: yesno
    sql: ${TABLE}.ib ;;
  }

  dimension_group: md {
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

  dimension: sid {
    type: string
    sql: ${TABLE}.sid ;;
  }

  dimension: tid {
    type: string
    sql: ${TABLE}.tid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
