class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABgQC2RfBxgB9Z5N3sCEX1GK+EnhVvkA/teascYbvOp8p/G2l8cKdY1Qzynmd33FJxl2KFJ4tBpr79ZEN4IthHu/0W/h3GO8kFnORZTgWZ7mPjI/07opcKVZ4scbPJ/i/kv6n+9vDp3FlAF3KxVp/6ice+Zs9FVBpMSE6EC5BXoVUO+BtotpeujM93aGhSZlzlBCY3wmTA0/2BRypgEXoZnrspc6Y0tbgB5oJuayjcKyjLmEsqXUUJLLHEFNwF8FIB0r8Nb92DcTclwHsUtVeswCbqbae3L3wfOW51+cKUBno3WQ8lejLi+enUO59XytWqp+xoODLuDnhxtEQOqr8qOfxzawQuh+1LJMF/qvPxHaFCYPFVDICT5IQopBjJo6TUSoZ2yC2+Mxkmy2z3L+8HTtwmqvi05Zn0KBYHWVwjXoQusLiz1qzkRqNQrlH1P+VlfwEtUI8SkLlfd2sBFpoR4kwV2Qk253TC9KV3zV/rYT3EzC/lDsaA9Idfy6PkKFwuTMk=',
  }  
}
