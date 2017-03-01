view: mention_percentile_rank {

  derived_table: {
    sql: SELECT i, RANK(total_mentions) OVER (ORDER BY total_mentions DESC) as ranked
         FROM
        (
        SELECT i, sum(tom) as total_mentions from totalsocial.totalsocial_report_sysomos_native_week
        WHERE {% condition sd_week %} sd {% endcondition %}
        GROUP BY 1
        )
          ;;

    }
    filter: sd_week {
      type: date
    }
    dimension: brand_id {
      type: string
      sql: ${TABLE}.i ;;
    }

    dimension: rank {
      type: number
      sql: ${TABLE}.ranked ;;
    }

    measure: rank_measure {
      type: sum
      sql: ${rank} ;;
    }
  }
