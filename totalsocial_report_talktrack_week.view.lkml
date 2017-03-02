view: report_talktrack_week {
  sql_table_name: totalsocial.totalsocial_report_talktrack_week ;;
  suggestions: no

  dimension: brandsharing_rollup_plan {
    type: string
    sql: ${TABLE}.bsrp ;;
    hidden: yes
  }

  dimension: catalysts {
    type: number
    sql: ${TABLE}.cs ;;
    group_label: "Catalysts"
  }

  measure: sum_catalysts {
    label: "Total Catalysts"
    type: sum
    sql: ${catalysts} ;;
    group_label: "Catalysts"
  }

  measure: avg_catalysts {
    type: average
    sql: ${catalysts} ;;
    group_label: "Catalysts"
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
    hidden: yes
  }

  dimension: impression_multiplier {
    type: number
    sql: ${TABLE}.im ;;
  }

  dimension: influence_rollup_plan {
    type: string
    sql: ${TABLE}.irp ;;
    hidden: yes
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.`is` ;;
    hidden: yes
  }

  measure: impressions_sum {
    type: sum
    sql: ${impressions} ;;
    hidden: yes
  }

  dimension: impressions_weekly_avg {
    type: number
    sql: ${TABLE}.iswa ;;
    hidden: yes
  }

  dimension: interval {
    type: string
    sql: ${TABLE}.iv ;;
    hidden: yes
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
    group_label: "Mentions"
  }

  measure: mentions_sum {
    type: sum
    sql: ${mentions} ;;
    label: "Summed Mentions"
    group_label: "Mentions"
  }

  measure: avg_mentions {
    type: average
    sql: ${mentions} ;;
    group_label: "Mentions"
  }




  dimension: net_sentiment_mentions {
    type: number
    sql: ${TABLE}.nsm ;;
    hidden: yes
  }

  dimension: percent_catalysts {
    type: number
    sql: ${TABLE}.pc ;;
    hidden: yes
  }

  dimension: percent_users {
    type: number
    sql: ${TABLE}.pu ;;
    hidden: yes
  }

  dimension: rolledup_catalysts {
    type: number
    sql: ${TABLE}.rcs ;;
    hidden: yes
  }

  dimension: rollup_impressions_weekly_avg {
    type: number
    sql: ${TABLE}.riswa ;;
    hidden: yes
  }

  dimension: rolledup_mm_base {
    type: number
    sql: ${TABLE}.rmmb ;;
    hidden: yes
  }

  dimension: rolledup_mm_references {
    type: number
    sql: ${TABLE}.rmmr ;;
    hidden: yes
  }

  dimension: rolledup_net_sentiment_mentions {
    type: number
    sql: ${TABLE}.rnsm ;;
    hidden: yes
  }

  dimension: raw_offline_bransharing {
    type: number
    sql: ${TABLE}.rofb ;;
    hidden: yes
  }

  dimension: raw_offline_influence {
    type: number
    sql: ${TABLE}.rofi ;;
    hidden: yes
  }

  dimension: raw_offline_sentiment {
    type: number
    sql: ${TABLE}.rofs ;;
    hidden: yes
  }

  dimension: raw_offline_volume {
    type: number
    sql: ${TABLE}.rofv ;;
    hidden: yes
  }

  dimension: rolledup_percent_catalysts {
    type: number
    sql: ${TABLE}.rpc ;;
    hidden: yes
  }

  dimension: rolledup_percent_users {
    type: number
    sql: ${TABLE}.rpu ;;
    hidden: yes
  }

  dimension: rolledup_sentiment_mentions_with_mixed {
    type: string
    sql: ${TABLE}.rstm ;;
    hidden: yes
  }

  dimension: rolledup_sentiment_mentions_without_mixed {
    type: string
    sql: ${TABLE}.rstmn ;;
    hidden: yes
  }

  dimension: rolledup_sentiment_percentage_with_mixed {
    type: string
    sql: ${TABLE}.rstp ;;
    hidden: yes
  }

  dimension: rolledup_sentiment_percentage_without_mixed {
    type: string
    sql: ${TABLE}.rstpn ;;
    hidden: yes
  }

  dimension: rolledup_total_catalysts {
    type: number
    sql: ${TABLE}.rtc ;;
    hidden: yes
  }

  dimension: rolledup_total_users {
    type: number
    sql: ${TABLE}.rtu ;;
    hidden: yes
  }

  dimension: rolledup_users {
    type: number
    sql: ${TABLE}.rus ;;
    hidden: yes
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
    hidden: yes
  }

  dimension: sentiment_mention_with_mixed {
    type: string
    sql: ${TABLE}.stm ;;
    hidden: yes
  }

  dimension: sentiment_mention_with_mixed_negative {
    type: number
    sql: ${TABLE}.stm.n ;;
    hidden: yes
  }

  dimension: sentiment_mention_with_mixed_positive {
    type: number
    sql: ${TABLE}.stm.p ;;
    hidden: yes
  }

  dimension: sentiment_mention_with_mixed_neutral {
    type: number
    sql: ${TABLE}.stm.ne ;;
    hidden: yes
  }

  dimension: sentiment_mention_with_mixed_mixed {
    type: number
    sql: ${TABLE}.stm.m ;;
    hidden: yes
  }

  measure: avg_sentiment_mention_with_mixed_negative {
    label: "Sentiment Mention Negative (w Mixed)"
    type: average
    sql: ${sentiment_mention_with_mixed_negative} ;;
    group_label: "Sentiment Mention with Mixed"
  }

  measure: avg_sentiment_mention_with_mixed_positive {
    label: "Sentiment Mention Positive (w Mixed)"
    type: average
    sql: ${sentiment_mention_with_mixed_positive} ;;
    group_label: "Sentiment Mention with Mixed"
  }

  measure: avg_sentiment_mention_with_mixed_neutral {
    label: "Sentiment Mention Neutral (w Mixed)"
    type: average
    sql: ${sentiment_mention_with_mixed_neutral} ;;
    group_label: "Sentiment Mention with Mixed"
  }

  measure: avg_sentiment_mention_with_mixed_mixed {
    label: "Sentiment Mention Mixed (w Mixed)"
    type: average
    sql: ${sentiment_mention_with_mixed_negative} ;;
    group_label: "Sentiment Mention with Mixed"
  }

  measure: avg_sentiment_mention_without_mixed_negative {
    label: "Sentiment Mention Negative (w/o Mixed)"
    type: average
    sql: ${sentiment_mention_without_mixed_negative} ;;
    group_label: "Sentiment Mention Without Mixed"
  }

  measure: avg_sentiment_mention_without_mixed_positive {
    label: "Sentiment Mention Positive (w/o Mixed)"
    type: average
    sql: ${sentiment_mention_without_mixed_positive} ;;
    group_label: "Sentiment Mention Without Mixed"
  }

  measure: avg_sentiment_mention_without_mixed_neutral {
    label: "Sentiment Mention Neutral (w/o Mixed)"
    type: average
    sql: ${sentiment_mention_without_mixed_neutral} ;;
    group_label: "Sentiment Mention Without Mixed"
  }






  dimension: sentiment_mention_without_mixed {
    type: string
    sql: ${TABLE}.stmn ;;
    hidden: yes
  }

  dimension: sentiment_mention_without_mixed_negative {
    type: number
    sql: ${TABLE}.stmn.n ;;
    hidden: yes
  }


  dimension: sentiment_mention_without_mixed_positive {
    type: number
    sql: ${TABLE}.stmn.p ;;
    hidden: yes
  }

  dimension: sentiment_mention_without_mixed_neutral {
    type: number
    sql: ${TABLE}.stmn.ne ;;
    hidden: yes
  }





  dimension: sentiment_percentage_with_mixed {
    type: string
    sql: ${TABLE}.stp ;;
    hidden: yes
  }

  dimension: sentiment_percentage_without_mixed {
    type: string
    sql: ${TABLE}.stpn ;;
    hidden: yes
  }

  dimension: total_catalysts {
    type: number
    sql: ${TABLE}.tc ;;
    group_label: "Catalysts"
  }

  measure: avg_total_catalysts {
    type: average
    sql: ${total_catalysts} ;;
    group_label: "Catalysts"
  }

  dimension: total_impressions {
    type: number
    sql: ${TABLE}.ti ;;
    hidden: yes
  }

  dimension: total_mentions {
    type: number
    sql: ${TABLE}.tm ;;
    group_label: "Mentions"
  }

  measure: avg_total_mentions {
    type: average
    sql: ${total_mentions} ;;
    group_label: "Mentions"
  }

  measure: sum_mentions{
    type: sum
    sql: ${total_mentions} ;;
    label: "Total Mentions"
    group_label: "Mentons"
  }

  dimension: talkshare {
    type: number
    sql: ${TABLE}.ts ;;
    hidden: yes
  }

  dimension: total_users {
    type: number
    sql: ${TABLE}.tu ;;
    group_label: "Users"
  }

  measure: users_sum {
    type: sum
    sql: ${users} ;;
    group_label: "Users"
  }

  measure: average_users {
    type: average
    sql: ${users} ;;
    group_label: "Users"
  }

  measure: average_total_users {
    type: average
    sql: ${total_users} ;;
    group_label: "Users"
  }

  dimension: users {
    type: number
    sql: ${TABLE}.us ;;
    group_label: "Users"
  }

  dimension: volume_rollup_plan {
    type: string
    sql: ${TABLE}.vrp ;;
    hidden: yes
  }

  dimension: key {
    sql: CONCAT(${brand_id},${start_date_raw}) ;;
    primary_key: yes
    hidden: yes
  }
  measure: count {
    type: count
    drill_fields: []
  }
}
