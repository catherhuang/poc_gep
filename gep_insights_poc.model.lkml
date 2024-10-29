connection: "gep_mongodb_connection"

include: "/views/*.view.lkml"                # include all views in the views/

explore: flattened_documentrules {
  hidden: yes
  join: flattened_documentrules__suppliers {
    view_label: "Flattened Documentrules: Suppliers"
    sql: LEFT JOIN UNNEST(${flattened_documentrules.suppliers}) as flattened_documentrules__suppliers ;;
    relationship: one_to_many
  }
}

explore: documentrules {}
