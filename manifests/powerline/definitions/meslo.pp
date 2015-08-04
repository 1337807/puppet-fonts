# Definition for the installation of the Meslo font from Powerline
define fonts::powerline::definitions::meslo {
  include fonts::powerline::meslo
  $fonts="/Users/${::luser}/Library/Fonts"
  $location='powerline/meslo'
  $prefix='Meslo'
  file { "${prefix}-${title}.ttf":
    ensure => 'present',
    path   => "${fonts}/${prefix}-${title}.otf",
    source => "puppet:///modules/fonts/${location}/${prefix}-${title}.otf"
  }
}
