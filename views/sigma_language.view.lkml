view: sigma_language {
  sql_table_name: public.sigma_language ;;

  dimension: language_code {
    type: string
    sql: ${TABLE}.language_code ;;
  }

  dimension: language_code_alias {
    type: string
    sql: ${TABLE}.language_code_alias ;;
  }

  dimension: language_name {
    type: string
    sql: ${TABLE}.language_name ;;
  }

  dimension: language_priority_no {
    type: string
    sql: ${TABLE}.language_priority_no ;;
  }

  dimension: language_site_code {
    type: string
    sql: ${TABLE}.language_site_code ;;
  }

  measure: count {
    type: count
    drill_fields: [language_name]
  }
}
