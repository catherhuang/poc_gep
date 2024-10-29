view: documentrules {
  sql_table_name: `iamtests-315719.mongodb_gep.documentrules` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: source_data {
    type: string
    sql: ${TABLE}.source_data ;;
  }
  dimension: root_id {
    description: "json value example"
    type: string
    sql: JSON_VALUE(${source_data}, '$.root_id')  ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Timestamp ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
