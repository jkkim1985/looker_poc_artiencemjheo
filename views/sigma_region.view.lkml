view: sigma_region {
  sql_table_name: public.sigma_region ;;

  dimension: region_country {
    type: string
    sql: ${TABLE}.region_country ;;
  }

  dimension: region_country_code {
    type: string
    sql: ${TABLE}.region_country_code ;;
  }

  dimension: region_country_code_alias {
    type: string
    sql: ${TABLE}.region_country_code_alias ;;
  }

  dimension: region_region {
    type: string
    sql: ${TABLE}.region_region ;;
    label: "Region"
    drill_fields: [region_site_code]
  }

  dimension: region_site_code {
    type: string
    sql: ${TABLE}.region_site_code ;;
  }

  dimension: region_version {
    type: string
    sql: ${TABLE}.region_version ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
