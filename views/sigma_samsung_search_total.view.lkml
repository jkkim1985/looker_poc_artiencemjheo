view: sigma_samsung_search_total {
  sql_table_name: public.sigma_samsung_search_total ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: canonicalstate {
    type: yesno
    sql: ${TABLE}.canonicalstate ;;
  }

  dimension: canonicalurl {
    type: string
    sql: ${TABLE}.canonicalurl ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: crawltime {
    type: string
    sql: ${TABLE}.crawltime ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.ctr ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: datetime {
    type: string
    sql: ${TABLE}.datetime ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: descriptionduplicatecount {
    type: string
    sql: ${TABLE}.descriptionduplicatecount ;;
  }

  dimension: descriptionduplicatestatus {
    type: string
    sql: ${TABLE}.descriptionduplicatestatus ;;
  }

  dimension: descriptionlen {
    type: string
    sql: ${TABLE}.descriptionlen ;;
  }

  dimension: descriptionstatus {
    type: string
    sql: ${TABLE}.descriptionstatus ;;
  }

  dimension: fields_date {
    type: string
    sql: ${TABLE}.fields_date ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: index_x {
    type: string
    sql: ${TABLE}.index_x ;;
  }

  dimension: index_y {
    type: string
    sql: ${TABLE}.index_y ;;
  }

  dimension: languagestate {
    type: yesno
    sql: ${TABLE}.languagestate ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: redirectstatus {
    type: string
    sql: ${TABLE}.redirectstatus ;;
  }

  dimension: redirecttime {
    type: string
    sql: ${TABLE}.redirecttime ;;
  }

  dimension: redirecturl {
    type: string
    sql: ${TABLE}.redirecturl ;;
  }

  dimension: redirecturls {
    type: string
    sql: ${TABLE}.redirecturls ;;
  }

  dimension: referer {
    type: string
    sql: ${TABLE}.referer ;;
  }

  dimension: sckey {
    type: string
    sql: ${TABLE}.sckey ;;
  }

  dimension: score_x {
    type: string
    sql: ${TABLE}.score_x ;;
  }

  dimension: score_y {
    type: string
    sql: ${TABLE}.score_y ;;
  }

  dimension: section {
    type: string
    sql: ${TABLE}.section ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.site ;;
  }

  dimension: statuscode {
    type: string
    sql: ${TABLE}.statuscode ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: titleduplicatestatus {
    type: string
    sql: ${TABLE}.titleduplicatestatus ;;
  }

  dimension: titlelen {
    type: number
    sql: ${TABLE}.titlelen ;;
  }

  dimension: titlestatus {
    type: string
    sql: ${TABLE}.titlestatus ;;
  }

  dimension: type_x {
    type: string
    sql: ${TABLE}.type_x ;;
  }

  dimension: type_y {
    type: string
    sql: ${TABLE}.type_y ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
