view: sigma_tag_v2 {
  sql_table_name: public.sigma_tag_v2 ;;

  dimension: tag_canonical_state {
    type: string
    sql: ${TABLE}.tag_canonical_state ;;
  }

  dimension: tag_canonicalurl {
    type: string
    sql: ${TABLE}.tag_canonicalurl ;;
  }

  dimension: tag_country_code {
    type: string
    sql: ${TABLE}.tag_country_code ;;
  }

  dimension: tag_date {
    type: string
    sql: ${TABLE}.tag_date ;;
  }

  dimension: tag_description {
    type: string
    sql: ${TABLE}.tag_description ;;
  }

  dimension: tag_description_status {
    type: string
    sql: ${TABLE}.tag_description_status ;;
  }

  dimension: tag_language_state {
    type: string
    sql: ${TABLE}.tag_language_state ;;
  }

  dimension: tag_languagedetect {
    type: string
    sql: ${TABLE}.tag_languagedetect ;;
  }

  dimension: tag_section_code {
    type: string
    sql: ${TABLE}.tag_section_code ;;
  }

  dimension: tag_title {
    type: string
    sql: ${TABLE}.tag_title ;;
  }

  dimension: tag_title_status {
    type: string
    sql: ${TABLE}.tag_title_status ;;
  }

  dimension: tag_url {
    type: string
    sql: ${TABLE}.tag_url ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
