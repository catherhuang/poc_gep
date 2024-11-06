connection: "gep_mongodb_connection"
include: "/views/*.view.lkml"

# explore: documentrules {

# }

explore: documentrules_1 {
  label: "Documentrules Demo"

  join: new_fields_demo {
    view_label: "Suppliers"
    sql: LEFT JOIN UNNEST(${documentrules_1.teamMemberLeadList}) as gep_gep_cdc_demo_documentrules__suppliers ;;
    relationship: one_to_many
  }
}
