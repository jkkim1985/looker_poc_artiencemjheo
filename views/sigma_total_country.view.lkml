view: sigma_total_country {
  sql_table_name: public.sigma_total_country ;;

  dimension: total_country_code {
    type: string
    sql: ${TABLE}.total_country_code ;;
  }

  dimension: total_country_count {
    type: string
    sql: ${TABLE}.total_country_count ;;
  }

  dimension: total_country_date {
    type: string
    sql: ${TABLE}.total_country_date ;;
  }

  dimension: total_country_status_code {
    type: string
    sql: ${TABLE}.total_country_status_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
