view: sysomos_week {
  sql_table_name: totalsocial.totalsocial_report_sysomos_native_week ;;
  suggestions: no

  dimension: bir {
    type: number
    sql: ${TABLE}.bir ;;
  }

  dimension: bm {
    type: number
    sql: ${TABLE}.bm ;;
  }

  dimension: bs {
    type: string
    sql: ${TABLE}.bs ;;
  }

  dimension: bsm {
    type: string
    sql: ${TABLE}.bsm ;;
  }

  dimension_group: ed {
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
    sql: ${TABLE}.ed ;;
  }

  dimension: fm {
    type: number
    sql: ${TABLE}.fm ;;
  }

  dimension: fs {
    type: string
    sql: ${TABLE}.fs ;;
  }

  dimension: fsm {
    type: string
    sql: ${TABLE}.fsm ;;
  }

  dimension: i {
    type: string
    sql: ${TABLE}.i ;;
  }

  dimension: irp {
    type: string
    sql: ${TABLE}.irp ;;
  }

  dimension: iv {
    type: string
    sql: ${TABLE}.iv ;;
  }

  dimension: key {
    type: string
    sql: ${i} ||${iv} ||${sd_date}) ;;
    primary_key: yes
  }

  dimension: ns {
    type: number
    sql: ${TABLE}.ns ;;
  }

  dimension: rbir {
    type: number
    sql: ${TABLE}.rbir ;;
  }

  dimension: rns {
    type: number
    sql: ${TABLE}.rns ;;
  }

  dimension: roni {
    type: number
    sql: ${TABLE}.roni ;;
  }

  dimension: rons {
    type: number
    sql: ${TABLE}.rons ;;
  }

  dimension: ronv {
    type: number
    sql: ${TABLE}.ronv ;;
  }

  dimension: rtbir {
    type: number
    sql: ${TABLE}.rtbir ;;
  }

  dimension: rtbm {
    type: number
    sql: ${TABLE}.rtbm ;;
  }

  dimension: rtom {
    type: number
    sql: ${TABLE}.rtom ;;
  }

  dimension: rtos {
    type: string
    sql: ${TABLE}.rtos ;;
  }

  dimension: rtosm {
    type: string
    sql: ${TABLE}.rtosm ;;
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

  dimension: srp {
    type: string
    sql: ${TABLE}.srp ;;
  }

  dimension: ta {
    type: string
    sql: ${TABLE}.ta ;;
  }

  dimension: tbm {
    type: number
    sql: ${TABLE}.tbm ;;
  }

  dimension: tir {
    type: number
    sql: ${TABLE}.tir ;;
  }

  dimension: tm {
    type: number
    sql: ${TABLE}.tm ;;
  }

  dimension: total_online_mentions {
    type: number

    sql: ${TABLE}.tom ;;
  }

  measure: total_online_mentions_summed {
    type: sum
    sql: ${total_online_mentions} ;;
  }

  dimension: tomwa {
    type: number
    sql: ${TABLE}.tomwa ;;
  }

  dimension: tos {
    type: string
    sql: ${TABLE}.tos ;;
  }

  dimension: twitter_negative_mentions {
    type: number
    sql: ${TABLE}.tsm.n ;;
  }

  measure: total_twiter_negative_mentions {
    type: sum
    sql: ${twitter_negative_mentions}/100.0;;
    value_format_name: percent_2
  }

  dimension: tosm {
    type: string
    sql: ${TABLE}.tosm ;;
  }

  dimension: ts {
    type: string
    sql: ${TABLE}.ts ;;
  }

  dimension: tsm {
    type: string
    sql: ${TABLE}.tsm ;;
  }

  dimension: tti {
    type: number
    sql: ${TABLE}.tti ;;
  }

  dimension: ttu {
    type: number
    sql: ${TABLE}.ttu ;;
  }

  dimension: vrp {
    type: string
    sql: ${TABLE}.vrp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
