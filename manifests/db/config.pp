
class caapm::db::config inherits caapm {

  if $caller_module_name != $module_name {
    fail("Use of private class ${name} by ${caller_module_name}")
  }

#  notify {"Running with db::config pg_as_service = $pg_as_service":}



}
