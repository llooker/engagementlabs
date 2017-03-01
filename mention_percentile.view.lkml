view: mention_percentile {

  derived_table: {
    sql: SELECT i, SUM(tom) as total_mentions
    FROM totalsocial.totalsocial_report_sysomos_native_week
    WHERE {% condition sd_week %} report_sysomos_week.start_date_week {% endcondition %}
    GROUP BY i;;
    # sql: WITH temp AS (
    #       SELECT i, SUM(tom) as total_mentions
    #       FROM totalsocial.totalsocial_report_sysomos_native_week
    #       WHERE {% condition sd_week %} report_sysomos_week.start_date_week {% endcondition %}
    #     )

    # SELECT
    #     i
    #     , RANK(total_mentions) OVER (ORDER BY total_mentions DESC) as total_mention_rank
    #   FROM temp
    #   ;;
  }
  filter: sd_week {
    type: date
  }
  dimension: brand_name {
    type: string
    sql: ${TABLE}.i ;;
  }
  dimension: total_mentions {
    type: number
    sql: ${TABLE}.total_mentions ;;
  }

  measure: rank {
    type: number
    sql: RANK(${total_mentions}) OVER (ORDER BY ${total_mentions} DESC) ;;
  }

  measure: brand_count {
    type: count
  }

  measure: percentile{
    type: number
    sql: 1.0 * ${rank}/${brand_count} ;;
    value_format_name: percent_2
  }
}
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
