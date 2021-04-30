package { 'pdsh':
  ensure => present,
}

package { 'openjdk-jre':
  ensure => present,
}


$hadoop_version = 'hadoop-3.3'
$hadoop_archive = "${hadoop_version}.tar.gz"
$hadoop_target = "/opt/${hadoop_version}.tar.gz"

archive { $hadoop_target:
  # TODO
  checksum => '9ac5a5a8d29de4d2edfb5e554c178b04863375c5644d6fea1f6464ab4a7e22a50a6c43253ea348edbd114fc534dcde5bdd2826007e24b2a6b0ce0d704c5b4f5b'

}
