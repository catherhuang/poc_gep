connection: "gep_mongodb_connection"
include: "/views/*.view.lkml"

 explore: flattened_documentrules {
  hidden: yes
  join: flattened_documentrules__suppliers {
    view_label: "Flattened Documentrules: Suppliers"
    sql: LEFT JOIN UNNEST(${flattened_documentrules.suppliers}) as flattened_documentrules__suppliers ;;
    relationship: one_to_many } }

# explore: documentrules {

#   }


view: flattened_documentrules {
  sql_table_name: `iamtests-315719.mongodb_gep.flattened_documentrules` ;;

  dimension: suppliers {
    type: string
    description: "suppliers"
    sql: ${TABLE}.suppliers ;; }
  }

view: flattened_documentrules__suppliers {
  }
