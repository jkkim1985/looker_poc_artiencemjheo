view: sigma_redirect_v2 {
  sql_table_name: public.sigma_redirect_v2 ;;

  dimension: redirect_canonical_url {
    type: string
    sql: ${TABLE}.redirect_canonical_url ;;
  }

  dimension: redirect_count {
    type: string
    sql: ${TABLE}.redirect_count ;;
  }

  dimension: redirect_country_code {
    type: string
    sql: ${TABLE}.redirect_country_code ;;
  }

  dimension: redirect_date {
    type: string
    sql: ${TABLE}.redirect_date ;;
  }

  dimension: redirect_error_code {
    type: string
    sql: ${TABLE}.redirect_error_code ;;
  }

  dimension: redirect_from {
    type: string
    sql: ${TABLE}.redirect_from ;;
  }

  dimension: redirect_is_correct {
    type: string
    sql: ${TABLE}.redirect_is_correct ;;
  }

  dimension: redirect_status_code {
    type: string
    sql: ${TABLE}.redirect_status_code ;;
  }

  dimension: redirect_status_result {
    type: string
    sql: ${TABLE}.redirect_status_result ;;
  }

  dimension: redirect_to {
    type: string
    sql: ${TABLE}.redirect_to ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
