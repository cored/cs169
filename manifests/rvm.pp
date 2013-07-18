include rvm

if $rvm_installed == "true" {
  rvm_system_ruby { 
  'ruby-1.9.3-p429':
    ensure => 'present',
    default_use => true;
  }

  rvm_gem {
    'ruby-1.9.3-p392@global/puppet':
      ensure => 'present',
      require => Rvm_system_ruby['ruby-1.9.3-p429'];

    'ruby-1.9.3-p392@global/bundler':
      ensure => 'present',
      require => Rvm_system_ruby['ruby-1.9.3-p429'];

  }
}
