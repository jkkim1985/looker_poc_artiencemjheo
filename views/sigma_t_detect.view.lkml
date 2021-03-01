view: sigma_t_detect {
  sql_table_name: public.sigma_t_detect ;;

  dimension: t_detect_confidence {
    type: string
    sql: ${TABLE}.t_detect_confidence ;;
  }

  dimension: t_detect_country {
    type: string
    sql: ${TABLE}.t_detect_country ;;
  }

  dimension: t_detect_crawl_date {
    type: string
    sql: ${TABLE}.t_detect_crawl_date ;;
  }

  dimension: t_detect_created_at {
    type: string
    sql: ${TABLE}.t_detect_created_at ;;
  }

  dimension: t_detect_key {
    type: string
    sql: ${TABLE}.t_detect_key ;;
  }

  dimension: t_detect_language_code {
    type: string
    sql: ${TABLE}.t_detect_language_code ;;
  }

  dimension: t_detect_sites_code {
    type: string
    sql: ${TABLE}.t_detect_sites_code ;;
  }

  dimension: t_detect_title_tag {
    type: string
    sql: ${TABLE}.t_detect_title_tag ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
