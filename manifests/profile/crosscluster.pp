# 
# == Class: caapm::profile::crosscluster
#
# This profile configures the defaults for a cross-cluster viewer Enterprise Manager 
#
class caapm::profile::crosscluster { 
  caapm::em {'cross-cluster-domain':
    version                     => '9.6.0.0',
    user_install_dir            => "/opt/caapm/Introscope9.6.0.0/",
    features                    => 'Enterprise Manager',
    clusterEM                   => true,
    cluster_role                => 'CDV',
    txnTraceDir                 => '/var/caapm/traces',
    smartstor_dir               => '/var/caapm/smartstor',
    threaddump_dir              => '/var/caapm/threaddumps',
    emLaxNlJavaOptionAdditional => '-Xms1024m -Xmx1024m -XX:MaxPermSize=256m -Dorg.owasp.esapi.resources=./config/esapi',
    database                    => 'postgres',
    db_host                     => 'win28r2.diamond.org',
    em_service_name             => 'introscope',
    config_em_as_service        => true,
  } 

}