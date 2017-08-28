view: opportunity_facts {
derived_table: {
sql:
  SELECT
    DATE_TRUNC('month', opportunity."CloseDate" ) AS "close_month",
    COALESCE(SUM((opportunity."Amount") ), 0) AS "sum_amount",
    count(*) as opportunity_count
  FROM salesforce."sf_Opportunity"  AS opportunity

  WHERE
    (((opportunity."CloseDate" ) >= ((SELECT (DATE_TRUNC('month', DATE_TRUNC('day', CURRENT_TIMESTAMP)) + (-11 || ' month')::INTERVAL))) AND (opportunity."CloseDate" ) < ((SELECT ((DATE_TRUNC('month', DATE_TRUNC('day', CURRENT_TIMESTAMP)) + (-11 || ' month')::INTERVAL) + (12 || ' month')::INTERVAL)))))
  GROUP BY DATE_TRUNC('month', opportunity."CloseDate" )
  ORDER BY 2 DESC
  LIMIT 1 ;;
  }

dimension: best_month_in_12 {
  sql: ${TABLE}.close_month ;;
}

  dimension: opprtunity_count {
    sql: ${TABLE}.opportunity_count ;;
  }

  dimension: opportunity_sum {
    sql: ${TABLE}.sum_amount ;;
  }


}
