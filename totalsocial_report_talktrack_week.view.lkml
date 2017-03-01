view: report_talktrack_week {
  sql_table_name: totalsocial.totalsocial_report_talktrack_week ;;
  suggestions: no

  dimension: brandsharing_rollup_plan {
    type: string
    sql: ${TABLE}.bsrp ;;
  }

  dimension: catalysts {
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

  dimension: influence_rollup_plan {
    type: string
    sql: ${TABLE}.irp ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.`is` ;;
  }


  measure: impressions_sum {
    type: sum
    sql: ${impressions} ;;
  }

  dimension: impressions_weekly_avg {
    type: number
    sql: ${TABLE}.iswa ;;
  }

  dimension: interval {
    type: string
    sql: ${TABLE}.iv ;;
  }

  dimension: mm_base {
    type: number
    sql: ${TABLE}.mmb ;;
  }

  dimension: mm_references {
    type: number
    sql: ${TABLE}.mmr ;;
  }

  dimension: mentions {
    type: number
    sql: ${TABLE}.ms ;;
  }

  dimension: net_sentiment_mentions {
    type: number
    sql: ${TABLE}.nsm ;;
  }

  dimension: percent_catalysts {
    type: number
    sql: ${TABLE}.pc ;;
  }

  dimension: percent_users {
    type: number
    sql: ${TABLE}.pu ;;
  }

  dimension: rolledup_catalysts {
    type: number
    sql: ${TABLE}.rcs ;;
  }

  dimension: rollup_impressions_weekly_avg {
    type: number
    sql: ${TABLE}.riswa ;;
  }

  dimension: rolledup_mm_base {
    type: number
    sql: ${TABLE}.rmmb ;;
  }

  dimension: rolledup_mm_references {
    type: number
    sql: ${TABLE}.rmmr ;;
  }

  dimension: rolledup_net_sentiment_mentions {
    type: number
    sql: ${TABLE}.rnsm ;;
  }

  dimension: raw_offline_bransharing {
    type: number
    sql: ${TABLE}.rofb ;;
  }

  dimension: raw_offline_influence {
    type: number
    sql: ${TABLE}.rofi ;;
  }

  dimension: raw_offline_sentiment {
    type: number
    sql: ${TABLE}.rofs ;;
  }

  dimension: raw_offline_volume {
    type: number
    sql: ${TABLE}.rofv ;;
  }

  dimension: rolledup_percent_catalysts {
    type: number
    sql: ${TABLE}.rpc ;;
  }

  dimension: rolledup_percent_users {
    type: number
    sql: ${TABLE}.rpu ;;
  }

  dimension: rolledup_sentiment_mentions_with_mixed {
    type: string
    sql: ${TABLE}.rstm ;;
  }

  dimension: rolledup_sentiment_mentions_without_mixed {
    type: string
    sql: ${TABLE}.rstmn ;;
  }

  dimension: rolledup_sentiment_percentage_with_mixed {
    type: string
    sql: ${TABLE}.rstp ;;
  }

  dimension: rolledup_sentiment_percentage_without_mixed {
    type: string
    sql: ${TABLE}.rstpn ;;
  }

  dimension: rolledup_total_catalysts {
    type: number
    sql: ${TABLE}.rtc ;;
  }

  dimension: rolledup_total_users {
    type: number
    sql: ${TABLE}.rtu ;;
  }

  dimension: rolledup_users {
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

  dimension: sentiment_rollup_plan {
    type: string
    sql: ${TABLE}.srp ;;
  }

  dimension: sentiment_mention_with_mixed {
    type: string
    sql: ${TABLE}.stm ;;
  }

  dimension: sentiment_mention_without_mixed {
    type: string
    sql: ${TABLE}.stmn ;;
  }

  dimension: sentiment_percentage_with_mixed {
    type: string
    sql: ${TABLE}.stp ;;
  }

  dimension: sentiment_percentage_without_mixed {
    type: string
    sql: ${TABLE}.stpn ;;
  }

  dimension: total_catalysts {
    type: number
    sql: ${TABLE}.tc ;;
  }

  dimension: total_impressions {
    type: number
    sql: ${TABLE}.ti ;;
  }

  dimension: total_mentions {
    type: number
    sql: ${TABLE}.tm ;;
  }

  dimension: talkshare {
    type: number
    sql: ${TABLE}.ts ;;
  }

  dimension: total_users {
    type: number
    sql: ${TABLE}.tu ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}.us ;;
  }

  dimension: volume_rollup_plan {
    type: string
    sql: ${TABLE}.vrp ;;
  }

  dimension: key {
    sql: CONCAT(${brand_id},${start_date_raw}) ;;
    primary_key: yes
  }
  measure: count {
    type: count
    drill_fields: []
  }
}
