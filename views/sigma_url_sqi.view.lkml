view: sigma_url_sqi {
  sql_table_name: public.sigma_url_sqi ;;

  dimension: sqi_country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.sqi_country ;;
    label: "country"
    drill_fields: [sqi_sites_code]
  }

  dimension: sqi_country_code {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.sqi_country_code ;;
    label: "country code"
  }

  dimension: sqi_crawl_date {
    type: date
    sql: ${TABLE}.sqi_crawl_date ;;
    label: "Date"
  }

  dimension_group: sqi_crawl_date {
    type: time
    timeframes: [date, week, month, year]
    sql: ${sqi_crawl_date} ;;
    label: "Date"
  }

  dimension: sqi_origin_url {
    type: string
    sql: ${TABLE}.sqi_origin_url ;;
    label: "Original URL"
  }

  dimension: sqi_redirect_status_code {
    type: string
    sql: ${TABLE}.sqi_redirect_status_code ;;
    label: "Redirect to Status Code"
  }

  dimension: sqi_redirect_to {
    type: string
    sql: ${TABLE}.sqi_redirect_to ;;
    label: "Redirect To"
  }

  dimension: sqi_site_gbm {
    type: string
    sql: ${TABLE}.sqi_site_gbm ;;
    label: "GBM"
  }

  dimension: sqi_site_section {
    type: string
    sql: ${TABLE}.sqi_site_section ;;
    label: "Site Section"
  }

  dimension: sqi_sites_code {
    type: string
    sql: ${TABLE}.sqi_sites_code ;;
    label: "Site Code"
  }

  dimension: sqi_status_code {
    type: string
    sql: ${TABLE}.sqi_status_code ;;
    label: "Status Code"
  }

  dimension: sqi_status_value {
    type: string
    sql: ${TABLE}.sqi_status_value ;;
    label: "Status Value"
  }

  dimension: sqi_status_audit {
    type: string
    sql: (case when ${TABLE}.sqi_status_value = "True" then "Correct" else "Incorrect" end) ;;
    label: "Status Audit"
  }

  dimension: statuscode_left2 {
    type: string
    sql: left(${sqi_redirect_status_code},2) ;;
    hidden: yes
  }

  dimension: statuscode {
    type: string
    sql: (case when ${sqi_status_code}!=404 and ${statuscode_left2}=40 then "4XX"
               when ${statuscode_left2}=50 then "5XX"
               else ${sqi_status_code} end);;
    label: "Status Error Code"
  }

  dimension: gotoev {
    type: string
    sql: case when len(${sqi_sites_code}) >= 0 then "Executive View" end ;;
    link: {
      label: "Go To Executive View"
      url: "https://artience.cloud.looker.com/dashboards-next/2"
    }
  }

  measure: page_all {
    type: number
    sql: count(${sqi_origin_url}) ;;
    label: "page all"
  }

  measure: page_xml_sitemap {
    type: sum
    sql: 0 ;;
    label: "page_xml_sitemap"
  }

  measure: page_removed {
    type: sum
    sql: 0 ;;
    label: "page_removed"
  }

  measure: status_200 {
    type: count
    drill_fields: [sqi_origin_url]
    label: "Status 200"
    filters: [sqi_status_code: "200"]
  }


  measure: status_301_correct {
    type: count
    drill_fields: [sqi_origin_url]
    label: "Status 301 Correct"
    filters: [sqi_status_code: "301", sqi_status_value: "True"]
  }

  measure: status_301_incorrect {
    type: count
    drill_fields: [sqi_origin_url]
    label: "Status 301 Incorrect"
    filters: [sqi_status_code: "301", sqi_status_value: "False"]
  }

  measure: status_302_correct {
    type: count
    drill_fields: [sqi_origin_url]
    label: "Status 302 Correct"
    filters: [sqi_status_code: "302", sqi_status_value: "True"]
  }

  measure: status_302_incorrect {
    type: count
    drill_fields: [sqi_origin_url]
    label: "Status 302 Incorrect"
    filters: [sqi_status_code: "302", sqi_status_value: "False"]
  }

  measure: status_404 {
    type: count
    drill_fields: [sqi_origin_url]
    label: "Status 404"
    filters: [sqi_status_code: "404"]
  }

  measure: status_4xx {
    type: count
    drill_fields: [sqi_origin_url]
    label: "Status 4XX"
    filters: [sqi_status_code: "!=404", statuscode_left2: "40"]
  }

  measure: status_5xx {
    type: count
    drill_fields: [sqi_origin_url]
    label: "Status 5XX"
    filters: [statuscode_left2: "50"]
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sqi_target {
    type: number
    sql: 0.98 ;;
    value_format: "0%"
    label: "SQI Target"
  }
}
