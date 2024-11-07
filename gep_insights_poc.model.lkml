connection: "gep_mongodb_connection"
include: "/views/*.view.lkml"

# explore: documentrules {

# }

explore: documentrules_1 {
  label: "Documentrules Demo"

  join: new_fields_demo {
    view_label: "new_fields_demo"
    sql: LEFT JOIN UNNEST(JSON_EXTRACT_ARRAY(${documentrules_1.teamMemberLeadList})) as new_fields_demo ;;
    relationship: one_to_many
  }

  # join: suppliers {
  #   view_label: "Suppliers"
  #   sql: LEFT JOIN UNNEST(${documentrules_1.suppliers}) as suppliers ;;
  #   relationship: one_to_many
  # }
}
