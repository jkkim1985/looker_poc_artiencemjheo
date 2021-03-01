view: sigma_url_fsi {
  sql_table_name: public.sigma_url_fsi ;;

  dimension: fsi_canonical_tag {
    type: string
    sql: ${TABLE}.fsi_canonical_tag ;;
    label: "Canonical URL"
  }

  dimension: fsi_canonical_tag_non_self_referring {
    type: string
    sql: ${TABLE}.fsi_canonical_tag_non_self_referring ;;
  }

  dimension: fsi_canonical_tag_self_referring {
    type: string
    sql: ${TABLE}.fsi_canonical_tag_self_referring ;;
  }

  dimension: fsi_country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.fsi_country ;;
    label: "Country"
  }

  dimension: fsi_country_code {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.fsi_country_code ;;
    label: "Country Code"
  }

  dimension: fsi_crawl_date {
    type: date
    sql: ${TABLE}.fsi_crawl_date ;;
    label: "Date"
  }

  dimension: fsi_language {
    type: string
    sql: ${TABLE}.fsi_language ;;
    label: "Language Code"
  }

  dimension: fsi_language_no_issue {
    type: string
    sql: ${TABLE}.fsi_language_no_issue ;;
  }

  dimension: fsi_language_wrong {
    type: string
    sql: ${TABLE}.fsi_language_wrong ;;
  }

  dimension: fsi_meta_description_tag {
    type: string
    sql: ${TABLE}.fsi_meta_description_tag ;;
    label: "Meta Description Tag Text"
  }

  dimension: fsi_meta_description_tag_duplicate {
    type: string
    sql: ${TABLE}.fsi_meta_description_tag_duplicate ;;
  }

  dimension: fsi_meta_description_tag_length {
    type: string
    sql: ${TABLE}.fsi_meta_description_tag_length ;;
  }

  dimension: fsi_meta_description_tag_long {
    type: string
    sql: ${TABLE}.fsi_meta_description_tag_long ;;
  }

  dimension: fsi_meta_description_tag_missing {
    type: string
    sql: ${TABLE}.fsi_meta_description_tag_missing ;;
  }

  dimension: fsi_meta_description_tag_no_issue {
    type: string
    sql: ${TABLE}.fsi_meta_description_tag_no_issue ;;
  }

  dimension: fsi_meta_description_tag_short {
    type: string
    sql: ${TABLE}.fsi_meta_description_tag_short ;;
  }

  dimension: fsi_origin_url {
    type: string
    sql: ${TABLE}.fsi_origin_url ;;
    label: "Original URL"
  }

  dimension: fsi_site_gbm {
    type: string
    sql: ${TABLE}.fsi_site_gbm ;;
    label: "GBM"
  }

  dimension: fsi_site_section {
    type: string
    sql: ${TABLE}.fsi_site_section ;;
    label: "Site Section"
  }

  dimension: fsi_sites_code {
    type: string
    sql: ${TABLE}.fsi_sites_code ;;
    label: "Site Code"
  }

  dimension: fsi_title_tag {
    type: string
    sql: ${TABLE}.fsi_title_tag ;;
    label: "Title Tag Text"
  }

  dimension: fsi_title_tag_duplicate {
    type: string
    sql: ${TABLE}.fsi_title_tag_duplicate ;;
  }

  dimension: fsi_title_tag_length {
    type: string
    sql: ${TABLE}.fsi_title_tag_length ;;
  }

  dimension: fsi_title_tag_long {
    type: string
    sql: ${TABLE}.fsi_title_tag_long ;;
  }

  dimension: fsi_title_tag_missing {
    type: string
    sql: ${TABLE}.fsi_title_tag_missing ;;
  }

  dimension: fsi_title_tag_no_issue {
    type: string
    sql: ${TABLE}.fsi_title_tag_no_issue ;;
  }

  dimension: fsi_title_tag_short {
    type: string
    sql: ${TABLE}.fsi_title_tag_short ;;
  }

  measure: title_tag_duplicate {
    type: sum
    sql: count(${fsi_origin_url}) ;;
    label: "Title Tag Duplicate"
    filters: [fsi_title_tag_duplicate: "True"]
  }

  measure: title_tag_missing {
    type: sum
    sql: count(${fsi_origin_url}) ;;
    label: "Title Tag Missing"
    filters: [fsi_title_tag_missing: "True"]
  }

  measure: title_tag_long {
    type: sum
    sql: count(${fsi_origin_url}) ;;
    label: "Title Tag Long"
    filters: [fsi_title_tag_long: "True"]
  }

  measure: title_tag_short {
    type: sum
    sql: count(${fsi_origin_url}) ;;
    label: "Title Tag Short"
    filters: [fsi_title_tag_short: "True"]
  }


  measure: title_tag_no_issue {
    type: sum
    sql: count(${fsi_origin_url}) ;;
    label: "Title Tag No Issue"
    filters: [fsi_title_tag_no_issue: "True"]
  }

  measure: meta_description_tag_duplicate {
    type: sum
    sql: count(${fsi_origin_url}) ;;
    label: "Meta Description Tag Duplicate"
    filters: [fsi_meta_description_tag_duplicate: "True"]
  }

  measure: meta_description_tag_missing {
    type: sum
    sql: count(${fsi_origin_url}) ;;
    label: "Meta Description Tag Missing"
    filters: [fsi_meta_description_tag_missing: "True"]
  }

  measure: meta_description_tag_long {
    type: sum
    sql: count(${fsi_origin_url}) ;;
    label: "Meta Description Tag Long"
    filters: [fsi_meta_description_tag_long: "True"]
  }

  measure: meta_description_tag_short {
    type: sum
    sql: count(${fsi_origin_url}) ;;
    label: "Meta Description Tag Short"
    filters: [fsi_meta_description_tag_short: "True"]
  }

  measure: meta_description_tag_no_issue {
    type: sum
    sql: count(${fsi_origin_url}) ;;
    label: "Meta Description Tag No Issue"
    filters: [fsi_meta_description_tag_no_issue: "True"]
  }

  measure: canonical_tag_self_referring {
    type: sum
    sql: count(${fsi_origin_url}) ;;
    label: "Canonical Tag Self Referring"
    filters: [fsi_canonical_tag_self_referring: "True"]
  }

  measure: canonical_tag_non_self_referring {
    type: sum
    sql: count(${fsi_origin_url}) ;;
    label: "Canonical Tag Non Self Referring"
    filters: [fsi_canonical_tag_non_self_referring: "True"]
  }

  measure: language_wrong {
    type: sum
    sql: count(${fsi_origin_url}) ;;
    label: "Wrong Language Tag"
    filters: [fsi_language_wrong: "True"]
  }

  measure: language_no_issue {
    type: sum
    sql: count(${fsi_origin_url}) ;;
    label: "Language Tag No Issue"
    filters: [fsi_language_no_issue: "True"]
  }

  measure: page_count {
    type: sum
    sql: count(${fsi_origin_url}) ;;
    label: "page all"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
