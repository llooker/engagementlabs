view: report_talktrack_week {
  sql_table_name: totalsocial.totalsocial_report_talktrack_week ;;
  suggestions: no

  dimension: bsrp {
    type: string
    sql: ${TABLE}.bsrp ;;
  }

  dimension: cs {
    type: number
    sql: ${TABLE}.cs ;;
  }

  dimension_group: end_date {
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

  dimension: brand_id {
    type: string
    sql: ${TABLE}.i ;;
  }

  dimension: impression_multiplier {
    type: number
    sql: ${TABLE}.im ;;
  }

  dimension: irp {
    type: string
    sql: ${TABLE}.irp ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.`is` ;;
  }


  measure: impressions_sum {
    type: sum
    sql: ${impressions_sum} ;;
  }

  dimension: iswa {
    type: number
    sql: ${TABLE}.iswa ;;
  }

  dimension: interval {
    type: string
    sql: ${TABLE}.iv ;;
  }

  dimension: mmb {
    type: number
    sql: ${TABLE}.mmb ;;
  }

  dimension: mmr {
    type: number
    sql: ${TABLE}.mmr ;;
  }

  dimension: ms {
    type: number
    sql: ${TABLE}.ms ;;
  }

  dimension: nsm {
    type: number
    sql: ${TABLE}.nsm ;;
  }

  dimension: pc {
    type: number
    sql: ${TABLE}.pc ;;
  }

  dimension: pu {
    type: number
    sql: ${TABLE}.pu ;;
  }

  dimension: rcs {
    type: number
    sql: ${TABLE}.rcs ;;
  }

  dimension: riswa {
    type: number
    sql: ${TABLE}.riswa ;;
  }

  dimension: rmmb {
    type: number
    sql: ${TABLE}.rmmb ;;
  }

  dimension: rmmr {
    type: number
    sql: ${TABLE}.rmmr ;;
  }

  dimension: rnsm {
    type: number
    sql: ${TABLE}.rnsm ;;
  }

  dimension: rofb {
    type: number
    sql: ${TABLE}.rofb ;;
  }

  dimension: rofi {
    type: number
    sql: ${TABLE}.rofi ;;
  }

  dimension: rofs {
    type: number
    sql: ${TABLE}.rofs ;;
  }

  dimension: rofv {
    type: number
    sql: ${TABLE}.rofv ;;
  }

  dimension: rpc {
    type: number
    sql: ${TABLE}.rpc ;;
  }

  dimension: rpu {
    type: number
    sql: ${TABLE}.rpu ;;
  }

  dimension: rstm {
    type: string
    sql: ${TABLE}.rstm ;;
  }

  dimension: rstmn {
    type: string
    sql: ${TABLE}.rstmn ;;
  }

  dimension: rstp {
    type: string
    sql: ${TABLE}.rstp ;;
  }

  dimension: rstpn {
    type: string
    sql: ${TABLE}.rstpn ;;
  }

  dimension: rtc {
    type: number
    sql: ${TABLE}.rtc ;;
  }

  dimension: rtu {
    type: number
    sql: ${TABLE}.rtu ;;
  }

  dimension: rus {
    type: number
    sql: ${TABLE}.rus ;;
  }

  dimension_group: start_date {
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

  dimension: stm {
    type: string
    sql: ${TABLE}.stm ;;
  }

  dimension: stmn {
    type: string
    sql: ${TABLE}.stmn ;;
  }

  dimension: stp {
    type: string
    sql: ${TABLE}.stp ;;
  }

  dimension: stpn {
    type: string
    sql: ${TABLE}.stpn ;;
  }

  dimension: tc {
    type: number
    sql: ${TABLE}.tc ;;
  }

  dimension: ti {
    type: number
    sql: ${TABLE}.ti ;;
  }

  dimension: tm {
    type: number
    sql: ${TABLE}.tm ;;
  }

  dimension: ts {
    type: number
    sql: ${TABLE}.ts ;;
  }

  dimension: tu {
    type: number
    sql: ${TABLE}.tu ;;
  }

  dimension: us {
    type: number
    sql: ${TABLE}.us ;;
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
