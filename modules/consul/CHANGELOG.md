# Change Log

## [v1.0.3](https://github.com/solarkennedy/puppet-consul/tree/v1.0.3) (2015-12-10)
[Full Changelog](https://github.com/solarkennedy/puppet-consul/compare/v1.0.2...v1.0.3)

**Closed issues:**

- Default mode on config.json and service files is too permissive [\#199](https://github.com/solarkennedy/puppet-consul/issues/199)
- Wrong number of arguments given [\#194](https://github.com/solarkennedy/puppet-consul/issues/194)
- metadata.json - needs at least 4.6.0 of stdlib [\#190](https://github.com/solarkennedy/puppet-consul/issues/190)
- Strange \(probably unnecessary\) behavior in sysv stop script [\#174](https://github.com/solarkennedy/puppet-consul/issues/174)

**Merged pull requests:**

- Updating staging file download to use the version and symlink [\#202](https://github.com/solarkennedy/puppet-consul/pull/202) ([split3](https://github.com/split3))
- Updated download\_urls used to be the new releases.hashicorp.com location [\#201](https://github.com/solarkennedy/puppet-consul/pull/201) ([split3](https://github.com/split3))
- parameterize config file mode [\#200](https://github.com/solarkennedy/puppet-consul/pull/200) ([aj-jester](https://github.com/aj-jester))
- Add parameter for setting port to custom acl type [\#197](https://github.com/solarkennedy/puppet-consul/pull/197) ([horsehay](https://github.com/horsehay))
- Allow ACL ID to be writeable [\#196](https://github.com/solarkennedy/puppet-consul/pull/196) ([robrankin](https://github.com/robrankin))
- need at least 4.6.0 of puppetlabs/stdlib  [\#191](https://github.com/solarkennedy/puppet-consul/pull/191) ([gdhbashton](https://github.com/gdhbashton))
- Remove management of unzip package [\#189](https://github.com/solarkennedy/puppet-consul/pull/189) ([danieldreier](https://github.com/danieldreier))
- consul init sysv: lower stop priority [\#188](https://github.com/solarkennedy/puppet-consul/pull/188) ([koendc](https://github.com/koendc))
- actually we want to escape / globally for filenames [\#186](https://github.com/solarkennedy/puppet-consul/pull/186) ([duritong](https://github.com/duritong))
- Fixed chuid / consul executed as root [\#183](https://github.com/solarkennedy/puppet-consul/pull/183) ([sw0x2A](https://github.com/sw0x2A))
- Rework sysv stop script to fix issues [\#181](https://github.com/solarkennedy/puppet-consul/pull/181) ([pforman](https://github.com/pforman))
- explicitly define ownership of config directory, installation breaks for hardened Linux boxes with default umask of 0077 - this fixes the problem [\#168](https://github.com/solarkennedy/puppet-consul/pull/168) ([proletaryo](https://github.com/proletaryo))

## [v1.0.2](https://github.com/solarkennedy/puppet-consul/tree/v1.0.2) (2015-09-05)
[Full Changelog](https://github.com/solarkennedy/puppet-consul/compare/v1.0.0...v1.0.2)

**Closed issues:**

- Log rotation? [\#182](https://github.com/solarkennedy/puppet-consul/issues/182)
- Staging missing dependency on `Package\['unzip'\]` [\#164](https://github.com/solarkennedy/puppet-consul/issues/164)
- Documentation [\#161](https://github.com/solarkennedy/puppet-consul/issues/161)
- Ruby 1.8 support [\#148](https://github.com/solarkennedy/puppet-consul/issues/148)
- GOMAXPROCS discarded by upstart init due to sudo's env\_reset option [\#126](https://github.com/solarkennedy/puppet-consul/issues/126)
- Module should have a CHANGELOG [\#122](https://github.com/solarkennedy/puppet-consul/issues/122)
- Debian: /var/run/consul/consul.pid user affinity inconsistent [\#120](https://github.com/solarkennedy/puppet-consul/issues/120)
- config\_hash converts strings to integers =\> breaks port mappings [\#119](https://github.com/solarkennedy/puppet-consul/issues/119)
- Invalid resource type staging::file [\#117](https://github.com/solarkennedy/puppet-consul/issues/117)
- Need to add -data-dir option to startup scripts. [\#115](https://github.com/solarkennedy/puppet-consul/issues/115)
- Meta stuff Not up to snuff [\#76](https://github.com/solarkennedy/puppet-consul/issues/76)
- Send SIGHUP to consul agent when new checks/services are detected [\#43](https://github.com/solarkennedy/puppet-consul/issues/43)
- Support consul-template [\#36](https://github.com/solarkennedy/puppet-consul/issues/36)

**Merged pull requests:**

- Update beaker tests + travis integration [\#180](https://github.com/solarkennedy/puppet-consul/pull/180) ([solarkennedy](https://github.com/solarkennedy))
- fix 'consul reload' on custom rpc port [\#179](https://github.com/solarkennedy/puppet-consul/pull/179) ([mdelagrange](https://github.com/mdelagrange))
- More rpc port support for debian/upstart [\#177](https://github.com/solarkennedy/puppet-consul/pull/177) ([solarkennedy](https://github.com/solarkennedy))
- Archlinux support [\#176](https://github.com/solarkennedy/puppet-consul/pull/176) ([vdloo](https://github.com/vdloo))
- pretty config \(that properly sorts\) [\#175](https://github.com/solarkennedy/puppet-consul/pull/175) ([aj-jester](https://github.com/aj-jester))
- prevent unnecessary consul restarts on puppet runs [\#173](https://github.com/solarkennedy/puppet-consul/pull/173) ([mdelagrange](https://github.com/mdelagrange))
- Add a check for $service\_ensure in reload\_service [\#172](https://github.com/solarkennedy/puppet-consul/pull/172) ([pforman](https://github.com/pforman))
- deep\_merge to support nested objects [\#171](https://github.com/solarkennedy/puppet-consul/pull/171) ([aj-jester](https://github.com/aj-jester))
- parameterize restart on change for the main config [\#169](https://github.com/solarkennedy/puppet-consul/pull/169) ([aj-jester](https://github.com/aj-jester))
- unzip depedency for staging [\#166](https://github.com/solarkennedy/puppet-consul/pull/166) ([aj-jester](https://github.com/aj-jester))
- Adding support for Ubuntu 15.04 [\#163](https://github.com/solarkennedy/puppet-consul/pull/163) ([asasfu](https://github.com/asasfu))
- Ensure all network interfaces are up before starting in upstart config [\#162](https://github.com/solarkennedy/puppet-consul/pull/162) ([jbarbuto](https://github.com/jbarbuto))
- UI dir symlink should depend on the dist existing [\#158](https://github.com/solarkennedy/puppet-consul/pull/158) ([jsok](https://github.com/jsok))
- remove string casting to int [\#157](https://github.com/solarkennedy/puppet-consul/pull/157) ([aj-jester](https://github.com/aj-jester))
- convert quoted integers to int object [\#156](https://github.com/solarkennedy/puppet-consul/pull/156) ([aj-jester](https://github.com/aj-jester))
- Update the gemfile, hopefully to something beaker and puppet-rspec can tolerate [\#154](https://github.com/solarkennedy/puppet-consul/pull/154) ([solarkennedy](https://github.com/solarkennedy))
- travis update [\#153](https://github.com/solarkennedy/puppet-consul/pull/153) ([jlambert121](https://github.com/jlambert121))
- reload on service, checks and watch changes [\#152](https://github.com/solarkennedy/puppet-consul/pull/152) ([aj-jester](https://github.com/aj-jester))
- acl token support for services and checks [\#151](https://github.com/solarkennedy/puppet-consul/pull/151) ([aj-jester](https://github.com/aj-jester))
- Modify consul\_validate\_checks to work with ruby 1.8 [\#149](https://github.com/solarkennedy/puppet-consul/pull/149) ([solarnz](https://github.com/solarnz))
- Adding groups parameter to user definition [\#147](https://github.com/solarkennedy/puppet-consul/pull/147) ([robrankin](https://github.com/robrankin))
- upstart: Agents should gracefully leave cluster on stop [\#146](https://github.com/solarkennedy/puppet-consul/pull/146) ([jsok](https://github.com/jsok))
- explicitly set depedencies for package install [\#145](https://github.com/solarkennedy/puppet-consul/pull/145) ([jlambert121](https://github.com/jlambert121))
- Use strict vars all the time, and future parser for later versions [\#144](https://github.com/solarkennedy/puppet-consul/pull/144) ([solarkennedy](https://github.com/solarkennedy))
- add puppet 4 testing to travis [\#143](https://github.com/solarkennedy/puppet-consul/pull/143) ([jlambert121](https://github.com/jlambert121))
- create user/group as system accounts [\#142](https://github.com/solarkennedy/puppet-consul/pull/142) ([jlambert121](https://github.com/jlambert121))
- correct links for consul template [\#140](https://github.com/solarkennedy/puppet-consul/pull/140) ([jlambert121](https://github.com/jlambert121))
- compatibiliy fix: ensure variables are defined [\#139](https://github.com/solarkennedy/puppet-consul/pull/139) ([mklette](https://github.com/mklette))
- Pass ensure to service definition file [\#138](https://github.com/solarkennedy/puppet-consul/pull/138) ([mklette](https://github.com/mklette))
- Fix debian init [\#137](https://github.com/solarkennedy/puppet-consul/pull/137) ([dizzythinks](https://github.com/dizzythinks))
- update default consul version [\#136](https://github.com/solarkennedy/puppet-consul/pull/136) ([jlambert121](https://github.com/jlambert121))
- Make consul::install optional [\#135](https://github.com/solarkennedy/puppet-consul/pull/135) ([potto007](https://github.com/potto007))
- Add an exec to daemon-reload systemctl when the unit-file changes [\#134](https://github.com/solarkennedy/puppet-consul/pull/134) ([robrankin](https://github.com/robrankin))
- Fix issue \#129 - https://github.com/solarkennedy/puppet-consul/issues/129 [\#133](https://github.com/solarkennedy/puppet-consul/pull/133) ([potto007](https://github.com/potto007))
- Escape the ID & make fixtures useable more widely [\#132](https://github.com/solarkennedy/puppet-consul/pull/132) ([duritong](https://github.com/duritong))
- Change name of File\['config.json'\] to File\['consul config.json'\] [\#131](https://github.com/solarkennedy/puppet-consul/pull/131) ([EvanKrall](https://github.com/EvanKrall))
- Switch to using start-stop-daemon for consul upstart init script [\#130](https://github.com/solarkennedy/puppet-consul/pull/130) ([bdellegrazie](https://github.com/bdellegrazie))
- Supply optional token for ACL changes [\#128](https://github.com/solarkennedy/puppet-consul/pull/128) ([mdelagrange](https://github.com/mdelagrange))
- Fix pidfile handling on Debian [\#121](https://github.com/solarkennedy/puppet-consul/pull/121) ([weitzj](https://github.com/weitzj))

## [v1.0.0](https://github.com/solarkennedy/puppet-consul/tree/v1.0.0) (2015-04-30)
[Full Changelog](https://github.com/solarkennedy/puppet-consul/compare/v0.4.6...v1.0.0)

**Closed issues:**

- README for consul::service is out of date [\#110](https://github.com/solarkennedy/puppet-consul/issues/110)
- delete\_undef\_values required stdlib 4.2.0, dependency not set properly [\#109](https://github.com/solarkennedy/puppet-consul/issues/109)
- init script doesn't have data-dir \(0.5.0\) [\#100](https://github.com/solarkennedy/puppet-consul/issues/100)
- passingonly needs to be a boolean for watch type [\#97](https://github.com/solarkennedy/puppet-consul/issues/97)
- Dependency cycle using consul::services [\#90](https://github.com/solarkennedy/puppet-consul/issues/90)
- consul should not 'leave' for init script 'stop' action [\#85](https://github.com/solarkennedy/puppet-consul/issues/85)
- Cycling dependancy in Hiera-based config [\#81](https://github.com/solarkennedy/puppet-consul/issues/81)
- Support for Consul 0.5.0 and multiple check configuration [\#73](https://github.com/solarkennedy/puppet-consul/issues/73)
- Path to /home/kyle is hard coded, somewhere [\#65](https://github.com/solarkennedy/puppet-consul/issues/65)

**Merged pull requests:**

- Debian 8.0+ uses systemd [\#113](https://github.com/solarkennedy/puppet-consul/pull/113) ([CyBeRoni](https://github.com/CyBeRoni))
- Update README, ensure passingonly is a bool [\#112](https://github.com/solarkennedy/puppet-consul/pull/112) ([zxjinn](https://github.com/zxjinn))
- Update puppetlabs-stdlib dependency to 4.2.0 for the delete\_undef\_values function [\#111](https://github.com/solarkennedy/puppet-consul/pull/111) ([zxjinn](https://github.com/zxjinn))
- Revert "Allow setting of the umask for the consul daemon." [\#108](https://github.com/solarkennedy/puppet-consul/pull/108) ([sjoeboo](https://github.com/sjoeboo))
- Allow setting of the umask for the consul daemon. [\#106](https://github.com/solarkennedy/puppet-consul/pull/106) ([EvanKrall](https://github.com/EvanKrall))
- Respect user and group in launchd. [\#105](https://github.com/solarkennedy/puppet-consul/pull/105) ([EvanKrall](https://github.com/EvanKrall))
- Anchor the consul install/config/run\_service classes [\#102](https://github.com/solarkennedy/puppet-consul/pull/102) ([koendc](https://github.com/koendc))
- Added support for consul 0.5.0 features: [\#99](https://github.com/solarkennedy/puppet-consul/pull/99) ([split3](https://github.com/split3))
- make module work with future parser [\#92](https://github.com/solarkennedy/puppet-consul/pull/92) ([duritong](https://github.com/duritong))
- Add consul\_acl type and provider [\#91](https://github.com/solarkennedy/puppet-consul/pull/91) ([michaeltchapman](https://github.com/michaeltchapman))
- Consul expects prefix rather than keyprefix in watch config [\#89](https://github.com/solarkennedy/puppet-consul/pull/89) ([codesplicer](https://github.com/codesplicer))
- Expose id parameter for service definitions [\#88](https://github.com/solarkennedy/puppet-consul/pull/88) ([codesplicer](https://github.com/codesplicer))
- sysv & debian init updates to kill or leave [\#87](https://github.com/solarkennedy/puppet-consul/pull/87) ([runswithd6s](https://github.com/runswithd6s))
- Updated the params for OracleLinux Support [\#84](https://github.com/solarkennedy/puppet-consul/pull/84) ([MarsuperMammal](https://github.com/MarsuperMammal))
- Fixes \#81 bugfix cycle dependency when specifying a service [\#82](https://github.com/solarkennedy/puppet-consul/pull/82) ([tayzlor](https://github.com/tayzlor))
- Added compatibility for Scientific Linux [\#78](https://github.com/solarkennedy/puppet-consul/pull/78) ([tracyde](https://github.com/tracyde))
- More lint fixes [\#77](https://github.com/solarkennedy/puppet-consul/pull/77) ([solarkennedy](https://github.com/solarkennedy))
- Support for Amazon OS [\#68](https://github.com/solarkennedy/puppet-consul/pull/68) ([dcoxall](https://github.com/dcoxall))

## [v0.4.6](https://github.com/solarkennedy/puppet-consul/tree/v0.4.6) (2015-01-23)
[Full Changelog](https://github.com/solarkennedy/puppet-consul/compare/v0.4.5...v0.4.6)

**Closed issues:**

- Consul init scripts sometimes not installed in the correct order [\#74](https://github.com/solarkennedy/puppet-consul/issues/74)

**Merged pull requests:**

- Move init script to config.pp to ensure it gets set AFTER the package gets installed [\#75](https://github.com/solarkennedy/puppet-consul/pull/75) ([tayzlor](https://github.com/tayzlor))
- Add support for providing watches/checks/services via hiera  [\#72](https://github.com/solarkennedy/puppet-consul/pull/72) ([tayzlor](https://github.com/tayzlor))
- Fix Puppet 3.7.3 giving evaluation error in run\_service.pp [\#71](https://github.com/solarkennedy/puppet-consul/pull/71) ([tayzlor](https://github.com/tayzlor))
- Update install.pp [\#69](https://github.com/solarkennedy/puppet-consul/pull/69) ([ianlunam](https://github.com/ianlunam))
- Adding ability to disable managing of the service [\#67](https://github.com/solarkennedy/puppet-consul/pull/67) ([sedan07](https://github.com/sedan07))
- Some linting fixes and resolves joining wan not actually joining the wan [\#66](https://github.com/solarkennedy/puppet-consul/pull/66) ([justicel](https://github.com/justicel))
- Better OS support for init\_style [\#63](https://github.com/solarkennedy/puppet-consul/pull/63) ([avishai-ish-shalom](https://github.com/avishai-ish-shalom))

## [v0.4.5](https://github.com/solarkennedy/puppet-consul/tree/v0.4.5) (2015-01-16)
[Full Changelog](https://github.com/solarkennedy/puppet-consul/compare/v0.4.4...v0.4.5)

## [v0.4.4](https://github.com/solarkennedy/puppet-consul/tree/v0.4.4) (2015-01-16)
[Full Changelog](https://github.com/solarkennedy/puppet-consul/compare/v0.4.2...v0.4.4)

**Closed issues:**

- Allow Consul clients to join cluster [\#61](https://github.com/solarkennedy/puppet-consul/issues/61)
- new function sorted\_json does not work if keys are set to undef [\#59](https://github.com/solarkennedy/puppet-consul/issues/59)
- Bump to hashicorp/consul  GitHub version e9615c50e6 [\#58](https://github.com/solarkennedy/puppet-consul/issues/58)
- cannot generate right retry\_join string [\#57](https://github.com/solarkennedy/puppet-consul/issues/57)
- join\_cluster not working on agents [\#56](https://github.com/solarkennedy/puppet-consul/issues/56)
- Multiple consul::service with same name causes ArgumentError [\#46](https://github.com/solarkennedy/puppet-consul/issues/46)
- service definition file will be changed frequently [\#45](https://github.com/solarkennedy/puppet-consul/issues/45)
- cut a new release? [\#41](https://github.com/solarkennedy/puppet-consul/issues/41)
- join\_cluster doesn't seem to work in some cases [\#31](https://github.com/solarkennedy/puppet-consul/issues/31)
- Tests need ruby \>= 1.9.2 [\#7](https://github.com/solarkennedy/puppet-consul/issues/7)

**Merged pull requests:**

- Adding "status" to the debian init script [\#64](https://github.com/solarkennedy/puppet-consul/pull/64) ([paulhamby](https://github.com/paulhamby))
- Allow hash keys to be set to undef [\#60](https://github.com/solarkennedy/puppet-consul/pull/60) ([bodepd](https://github.com/bodepd))
- Add config\_defaults hash parameter [\#54](https://github.com/solarkennedy/puppet-consul/pull/54) ([michaeltchapman](https://github.com/michaeltchapman))
- Make init\_style can be disabled [\#53](https://github.com/solarkennedy/puppet-consul/pull/53) ([TieWei](https://github.com/TieWei))
- Make rake spec running [\#52](https://github.com/solarkennedy/puppet-consul/pull/52) ([TieWei](https://github.com/TieWei))
- use versioncmp to compare versions [\#49](https://github.com/solarkennedy/puppet-consul/pull/49) ([jfroche](https://github.com/jfroche))
- Allow overriding a service's name [\#47](https://github.com/solarkennedy/puppet-consul/pull/47) ([jsok](https://github.com/jsok))
- Make puppet-consul install on OS X [\#44](https://github.com/solarkennedy/puppet-consul/pull/44) ([EvanKrall](https://github.com/EvanKrall))

## [v0.4.2](https://github.com/solarkennedy/puppet-consul/tree/v0.4.2) (2014-10-28)
[Full Changelog](https://github.com/solarkennedy/puppet-consul/compare/v0.4.1...v0.4.2)

## [v0.4.1](https://github.com/solarkennedy/puppet-consul/tree/v0.4.1) (2014-10-28)
[Full Changelog](https://github.com/solarkennedy/puppet-consul/compare/v0.3.0...v0.4.1)

**Closed issues:**

- Add support for joining multiple datacenters [\#34](https://github.com/solarkennedy/puppet-consul/issues/34)
- Configuring consul client nodes [\#26](https://github.com/solarkennedy/puppet-consul/issues/26)
- Add support for the new "watch" resource exposed in Consul 0.4.0 [\#23](https://github.com/solarkennedy/puppet-consul/issues/23)
- Install ui broken ?  [\#19](https://github.com/solarkennedy/puppet-consul/issues/19)

**Merged pull requests:**

- Set default of GOMAXPROCS=2 for SLES [\#40](https://github.com/solarkennedy/puppet-consul/pull/40) ([tehranian](https://github.com/tehranian))
- Fix the GOMAXPROCS warning for Upstart-based systems [\#39](https://github.com/solarkennedy/puppet-consul/pull/39) ([tehranian](https://github.com/tehranian))
- bump to version 0.4.1 [\#38](https://github.com/solarkennedy/puppet-consul/pull/38) ([kennyg](https://github.com/kennyg))
- Add sysconfig support for sysv [\#37](https://github.com/solarkennedy/puppet-consul/pull/37) ([dblessing](https://github.com/dblessing))
- Add join\_wan feature [\#35](https://github.com/solarkennedy/puppet-consul/pull/35) ([dblessing](https://github.com/dblessing))
- Version bump; Download Consul 0.4.0 [\#33](https://github.com/solarkennedy/puppet-consul/pull/33) ([tehranian](https://github.com/tehranian))
- Add support for SLES [\#32](https://github.com/solarkennedy/puppet-consul/pull/32) ([tehranian](https://github.com/tehranian))
- Add option to purge config dir [\#30](https://github.com/solarkennedy/puppet-consul/pull/30) ([sorenh](https://github.com/sorenh))
- Changed cluster join code [\#29](https://github.com/solarkennedy/puppet-consul/pull/29) ([hkumarmk](https://github.com/hkumarmk))
- \(retry\) Service Definition documentation and fix [\#28](https://github.com/solarkennedy/puppet-consul/pull/28) ([benschw](https://github.com/benschw))
- Adding in explicit support for "watches" [\#24](https://github.com/solarkennedy/puppet-consul/pull/24) ([jrnt30](https://github.com/jrnt30))
- Added join\_cluster param to have consul join a cluster after \(re\)starting service [\#21](https://github.com/solarkennedy/puppet-consul/pull/21) ([tylerwalts](https://github.com/tylerwalts))
- Fixing gui\_package install [\#20](https://github.com/solarkennedy/puppet-consul/pull/20) ([KrisBuytaert](https://github.com/KrisBuytaert))
- Added upstart link for old init.d functionality on upstart jobs [\#18](https://github.com/solarkennedy/puppet-consul/pull/18) ([lynxman](https://github.com/lynxman))
- bump to version 0.3.1 [\#17](https://github.com/solarkennedy/puppet-consul/pull/17) ([kennyg](https://github.com/kennyg))
- Install the consul web ui [\#15](https://github.com/solarkennedy/puppet-consul/pull/15) ([croomes](https://github.com/croomes))
- Adds systemd support [\#14](https://github.com/solarkennedy/puppet-consul/pull/14) ([croomes](https://github.com/croomes))
- Update CONTRIBUTORS [\#12](https://github.com/solarkennedy/puppet-consul/pull/12) ([kennyg](https://github.com/kennyg))
- bumped to version 0.3.0 [\#11](https://github.com/solarkennedy/puppet-consul/pull/11) ([kennyg](https://github.com/kennyg))

## [v0.3.0](https://github.com/solarkennedy/puppet-consul/tree/v0.3.0) (2014-06-20)
**Closed issues:**

- Upstart script does not work on Lucid [\#5](https://github.com/solarkennedy/puppet-consul/issues/5)
- Debian support [\#1](https://github.com/solarkennedy/puppet-consul/issues/1)

**Merged pull requests:**

- Add extra\_options parameter, to allow extra arguments to the consul agent [\#9](https://github.com/solarkennedy/puppet-consul/pull/9) ([EvanKrall](https://github.com/EvanKrall))
- Define consul::service and consul::check types [\#8](https://github.com/solarkennedy/puppet-consul/pull/8) ([EvanKrall](https://github.com/EvanKrall))
- Convert from setuid/setgid to sudo for Lucid support. Allow for group management. [\#6](https://github.com/solarkennedy/puppet-consul/pull/6) ([EvanKrall](https://github.com/EvanKrall))
- Make download actually work [\#3](https://github.com/solarkennedy/puppet-consul/pull/3) ([nberlee](https://github.com/nberlee))
- Make example config parseable [\#2](https://github.com/solarkennedy/puppet-consul/pull/2) ([nberlee](https://github.com/nberlee))



\* *This Change Log was automatically generated by [github_changelog_generator](https://github.com/skywinder/Github-Changelog-Generator)*