include: "documentrules.view"
view: documentrules_extend {
  sql_table_name: `iamtests-315719.mongodb_gep_airbyte.documentrules` ;;
  label: "new field added in documentrules"

  measure: count {
    type: count
  }


  }
