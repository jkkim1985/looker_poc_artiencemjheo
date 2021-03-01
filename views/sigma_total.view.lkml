view: sigma_total {
  sql_table_name: public.sigma_total ;;

  dimension: total_count {
    type: string
    sql: ${TABLE}.total_count ;;
  }

  dimension: total_date {
    type: string
    sql: ${TABLE}.total_date ;;
  }

  dimension: total_status_code {
    type: string
    sql: ${TABLE}.total_status_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
