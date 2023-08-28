# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include unit_tests_lab::files
class unit_tests_lab::files {
  if $facts['hostname'] =~ '^\w+-\w+-de' {
    file { '/tmp/blah.txt':
      ensure  => file,
      content => 'I am a dev file',
    }
  } else {
    file { '/tmp/blah.txt':
      ensure  => file,
      content => 'I am a prod file',
    }
  }
}
