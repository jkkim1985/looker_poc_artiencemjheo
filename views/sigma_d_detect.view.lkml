view: sigma_d_detect {
  sql_table_name: public.sigma_d_detect ;;

  dimension: d_detect_confidence {
    type: string
    sql: ${TABLE}.d_detect_confidence ;;
  }

  dimension: d_detect_country {
    type: string
    sql: ${TABLE}.d_detect_country ;;
  }

  dimension: d_detect_crawl_date {
    type: string
    sql: ${TABLE}.d_detect_crawl_date ;;
  }

  dimension: d_detect_created_at {
    type: string
    sql: ${TABLE}.d_detect_created_at ;;
  }

  dimension: d_detect_description_tag {
    type: string
    sql: ${TABLE}.d_detect_description_tag ;;
  }

  dimension: d_detect_key {
    type: string
    sql: ${TABLE}.d_detect_key ;;
  }

  dimension: d_detect_language_code {
    type: string
    sql: ${TABLE}.d_detect_language_code ;;
  }

  dimension: d_detect_sites_code {
    type: string
    sql: ${TABLE}.d_detect_sites_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
