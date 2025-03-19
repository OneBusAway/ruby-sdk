# Changelog

## 0.1.0-alpha.207 (2025-03-18)

Full Changelog: [v0.1.0-alpha.206...v0.1.0-alpha.207](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.206...v0.1.0-alpha.207)

### Features

* add jsonl support ([#451](https://github.com/OneBusAway/ruby-sdk/issues/451)) ([25b1850](https://github.com/OneBusAway/ruby-sdk/commit/25b18504fbc9e4d0f18a5092f850e9c9ed7d5ec9))
* support client level methods ([#458](https://github.com/OneBusAway/ruby-sdk/issues/458)) ([80ae090](https://github.com/OneBusAway/ruby-sdk/commit/80ae090c4416fdc13af63a92e2235da93cd15672))
* support jsonl uploads ([#468](https://github.com/OneBusAway/ruby-sdk/issues/468)) ([0e1efec](https://github.com/OneBusAway/ruby-sdk/commit/0e1efec0a957d1b38111075b51dfbf082cb41c0b))
* support streaming uploads ([#462](https://github.com/OneBusAway/ruby-sdk/issues/462)) ([6e5afc3](https://github.com/OneBusAway/ruby-sdk/commit/6e5afc38b62457ae05fbea8c045ec63b6625ea45))


### Bug Fixes

* bad documentation url for gemdocs.org ([#479](https://github.com/OneBusAway/ruby-sdk/issues/479)) ([27b42e7](https://github.com/OneBusAway/ruby-sdk/commit/27b42e7f9410fb8dce5dd380d95c5cc428112a12))
* enums should only coerce matching symbols into strings ([#463](https://github.com/OneBusAway/ruby-sdk/issues/463)) ([cfbe9be](https://github.com/OneBusAway/ruby-sdk/commit/cfbe9be99bcc6852262494f20b4f1dd3b67681a8))
* rectify a mistake where wrong lines were chosen during rebase ([#459](https://github.com/OneBusAway/ruby-sdk/issues/459)) ([97aaf84](https://github.com/OneBusAway/ruby-sdk/commit/97aaf848e3cff2491a9d8c9633b674be7b1f06c8))


### Chores

* add `sorbet` section to README ([#456](https://github.com/OneBusAway/ruby-sdk/issues/456)) ([2344889](https://github.com/OneBusAway/ruby-sdk/commit/234488981d74c432b5ded96f26afec9476c62be9))
* add more examples to README.md ([#457](https://github.com/OneBusAway/ruby-sdk/issues/457)) ([617ed08](https://github.com/OneBusAway/ruby-sdk/commit/617ed0802182a4d88c285dc4cf68b0f98db7549d))
* add most doc strings to rbi type definitions ([#469](https://github.com/OneBusAway/ruby-sdk/issues/469)) ([aa9810b](https://github.com/OneBusAway/ruby-sdk/commit/aa9810b04f27775d253b4c2a46d2d0f7af49b3a4))
* bump lockfile ([#448](https://github.com/OneBusAway/ruby-sdk/issues/448)) ([4e18ee5](https://github.com/OneBusAway/ruby-sdk/commit/4e18ee546dc74ab39f1dc01974c97e539732b108))
* do not label modules as abstract ([#478](https://github.com/OneBusAway/ruby-sdk/issues/478)) ([1261344](https://github.com/OneBusAway/ruby-sdk/commit/1261344add41d6d1d2e6142f0e26ac34ec948901))
* document union variants in yard doc ([#473](https://github.com/OneBusAway/ruby-sdk/issues/473)) ([6e217b9](https://github.com/OneBusAway/ruby-sdk/commit/6e217b984fff5adbebe8750788d8649e1da74448))
* ensure doc strings for rbi method arguments ([#470](https://github.com/OneBusAway/ruby-sdk/issues/470)) ([0496e78](https://github.com/OneBusAway/ruby-sdk/commit/0496e78e8d635afe8f570b152f0d203884153e31))
* error fields are now mutable in keeping with rest of SDK ([#472](https://github.com/OneBusAway/ruby-sdk/issues/472)) ([c003722](https://github.com/OneBusAway/ruby-sdk/commit/c003722a3c066ebed6d02cc25b3998f20dbae921))
* fused enum should use faster internal iteration by default ([#460](https://github.com/OneBusAway/ruby-sdk/issues/460)) ([57b8aff](https://github.com/OneBusAway/ruby-sdk/commit/57b8aff20e713aa1096387f84e5f8ab0976b1319))
* generate better supported rbi signatures ([#453](https://github.com/OneBusAway/ruby-sdk/issues/453)) ([4da269a](https://github.com/OneBusAway/ruby-sdk/commit/4da269aa981379cc9f5b94b8a0ac3bf040f648b5))
* improve documentation ([#461](https://github.com/OneBusAway/ruby-sdk/issues/461)) ([30c0847](https://github.com/OneBusAway/ruby-sdk/commit/30c08471d899843c9498e29fba15be42140d7666))
* **internal:** codegen related update ([#445](https://github.com/OneBusAway/ruby-sdk/issues/445)) ([5246f74](https://github.com/OneBusAway/ruby-sdk/commit/5246f743e6b59c6d8e3af57aae9440418cc90878))
* **internal:** codegen related update ([#455](https://github.com/OneBusAway/ruby-sdk/issues/455)) ([72cf612](https://github.com/OneBusAway/ruby-sdk/commit/72cf6124e4fd364f489d460fdd4f9f139afac642))
* **internal:** remove extra empty newlines ([#466](https://github.com/OneBusAway/ruby-sdk/issues/466)) ([56e1673](https://github.com/OneBusAway/ruby-sdk/commit/56e167301c000264a3d57f95c234595d57f8416b))
* mark non-inheritable SDK internal classes as final ([#475](https://github.com/OneBusAway/ruby-sdk/issues/475)) ([c1ebe01](https://github.com/OneBusAway/ruby-sdk/commit/c1ebe018b9948782b8c51fcc548feee0817720df))
* modify sorbet initializers to better support auto-completion ([#454](https://github.com/OneBusAway/ruby-sdk/issues/454)) ([921695d](https://github.com/OneBusAway/ruby-sdk/commit/921695d6562234af1a3fe483af6102108d45fe29))
* move examples into tests ([#450](https://github.com/OneBusAway/ruby-sdk/issues/450)) ([a163039](https://github.com/OneBusAway/ruby-sdk/commit/a1630390cffc694ecab63b64675148b21938f690))
* refactor BasePage to have initializer ([#465](https://github.com/OneBusAway/ruby-sdk/issues/465)) ([0419b24](https://github.com/OneBusAway/ruby-sdk/commit/0419b246d0175d88325ab2a699aeef05d07d8df5))
* remove stale thread local checks ([#464](https://github.com/OneBusAway/ruby-sdk/issues/464)) ([3360161](https://github.com/OneBusAway/ruby-sdk/commit/33601613edd2b2daaec76b21c00693f86805123a))
* rename misleading variable ([#449](https://github.com/OneBusAway/ruby-sdk/issues/449)) ([93f7821](https://github.com/OneBusAway/ruby-sdk/commit/93f7821a5c35e319224d4005e9bde687fa896881))
* sdk client internal refactoring ([#477](https://github.com/OneBusAway/ruby-sdk/issues/477)) ([82bf2d4](https://github.com/OneBusAway/ruby-sdk/commit/82bf2d419e75d9cbb52ebb98e69491fccd7407be))
* sdk internal updates ([#467](https://github.com/OneBusAway/ruby-sdk/issues/467)) ([4339005](https://github.com/OneBusAway/ruby-sdk/commit/433900592cddb951d380a7990b23a893529f84b3))
* slightly more consistent type definition layout ([#474](https://github.com/OneBusAway/ruby-sdk/issues/474)) ([89408be](https://github.com/OneBusAway/ruby-sdk/commit/89408be34720b24845902cd2afc2308cceaf2fb0))
* support different EOLs in streaming ([#452](https://github.com/OneBusAway/ruby-sdk/issues/452)) ([c04993e](https://github.com/OneBusAway/ruby-sdk/commit/c04993eaf7db5de217f6b56ee7ad70e57b8996c1))
* touch up sdk usage examples ([#471](https://github.com/OneBusAway/ruby-sdk/issues/471)) ([50c7f01](https://github.com/OneBusAway/ruby-sdk/commit/50c7f014ee76b5ef7763b2a861b4c6d627f35bab))
* update custom timeout header name ([#447](https://github.com/OneBusAway/ruby-sdk/issues/447)) ([6e9a1a1](https://github.com/OneBusAway/ruby-sdk/commit/6e9a1a1972461f5d74fc337b7fbacc218ce2c4f5))
* use generics instead of overloading for sorbet type definitions ([#476](https://github.com/OneBusAway/ruby-sdk/issues/476)) ([fe3afe1](https://github.com/OneBusAway/ruby-sdk/commit/fe3afe18e524cc777cf4db9aade61fc0b0ad3001))

## 0.1.0-alpha.206 (2025-03-05)

Full Changelog: [v0.1.0-alpha.205...v0.1.0-alpha.206](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.205...v0.1.0-alpha.206)

### Chores

* **internal:** add utils methods for parsing SSE ([#444](https://github.com/OneBusAway/ruby-sdk/issues/444)) ([3e8248b](https://github.com/OneBusAway/ruby-sdk/commit/3e8248b68c2e7af53876afd1bd554b8f0e8d6296))
* **internal:** version bump ([#442](https://github.com/OneBusAway/ruby-sdk/issues/442)) ([cc8bdc5](https://github.com/OneBusAway/ruby-sdk/commit/cc8bdc5cc7885a536bd33dd6450f630452856667))

## 0.1.0-alpha.205 (2025-03-04)

Full Changelog: [v0.1.0-alpha.204...v0.1.0-alpha.205](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.204...v0.1.0-alpha.205)

### Features

* add deprecation notice to enum members and resources ([#431](https://github.com/OneBusAway/ruby-sdk/issues/431)) ([1f8123d](https://github.com/OneBusAway/ruby-sdk/commit/1f8123da74d970f8ace43b228c0c245513bf7663))
* **api:** manual updates ([#389](https://github.com/OneBusAway/ruby-sdk/issues/389)) ([fa4ce8a](https://github.com/OneBusAway/ruby-sdk/commit/fa4ce8a910034353fdd579da9fc700c0da93d884))
* **internal:** modified tests for thread and fiber safety ([#438](https://github.com/OneBusAway/ruby-sdk/issues/438)) ([b834517](https://github.com/OneBusAway/ruby-sdk/commit/b834517dff0c599fc8c96219a842f0cae4db03fa))
* isolate platform headers ([#432](https://github.com/OneBusAway/ruby-sdk/issues/432)) ([fce949f](https://github.com/OneBusAway/ruby-sdk/commit/fce949f1f3b94ff67a732266bd7c3d7874e88f17))
* make `build_request` overridable ([#422](https://github.com/OneBusAway/ruby-sdk/issues/422)) ([c160038](https://github.com/OneBusAway/ruby-sdk/commit/c1600380ff1405a7d6fbee95541773159b3d9cbd))
* support overlapping HTTP requests in same Fiber ([#413](https://github.com/OneBusAway/ruby-sdk/issues/413)) ([cf8ac2b](https://github.com/OneBusAway/ruby-sdk/commit/cf8ac2b0a0c68635cd390b657377fadfc8cc3cd2))


### Bug Fixes

* better support header parameters ([#439](https://github.com/OneBusAway/ruby-sdk/issues/439)) ([8b25f6f](https://github.com/OneBusAway/ruby-sdk/commit/8b25f6fd42a5d51c418988772e58be822b3cbba6))
* ssl timeout not required when TCP socket open timeout specified ([#414](https://github.com/OneBusAway/ruby-sdk/issues/414)) ([d7bffc1](https://github.com/OneBusAway/ruby-sdk/commit/d7bffc12691970483824a9159fa56d30c3f16d02))


### Chores

* add type annotations for requester ([#423](https://github.com/OneBusAway/ruby-sdk/issues/423)) ([d96b5e9](https://github.com/OneBusAway/ruby-sdk/commit/d96b5e947d69770d373d7e0883365e0f2568242a))
* bump lockfile ([#417](https://github.com/OneBusAway/ruby-sdk/issues/417)) ([5a9360a](https://github.com/OneBusAway/ruby-sdk/commit/5a9360a7b1b6480bfc009e3f370c1c1407b7b7dd))
* clean up client tests ([#415](https://github.com/OneBusAway/ruby-sdk/issues/415)) ([f581d97](https://github.com/OneBusAway/ruby-sdk/commit/f581d973e1c4d0ffd96f6f949aaaac2796f61250))
* **internal:** codegen related update ([#397](https://github.com/OneBusAway/ruby-sdk/issues/397)) ([6a9895e](https://github.com/OneBusAway/ruby-sdk/commit/6a9895e574a483784eadd3b91a1d7c50efd97531))
* **internal:** codegen related update ([#399](https://github.com/OneBusAway/ruby-sdk/issues/399)) ([7bee1bd](https://github.com/OneBusAway/ruby-sdk/commit/7bee1bdacfe1b209fb7cb82d80bf89420c301c35))
* **internal:** codegen related update ([#400](https://github.com/OneBusAway/ruby-sdk/issues/400)) ([8885b74](https://github.com/OneBusAway/ruby-sdk/commit/8885b749a4b62f9a5b0500d3fafccfe53c1cc40c))
* **internal:** codegen related update ([#401](https://github.com/OneBusAway/ruby-sdk/issues/401)) ([6bb05a9](https://github.com/OneBusAway/ruby-sdk/commit/6bb05a9cd46217313e6ee5f209e2c4e93048dae8))
* **internal:** codegen related update ([#403](https://github.com/OneBusAway/ruby-sdk/issues/403)) ([4f0b98b](https://github.com/OneBusAway/ruby-sdk/commit/4f0b98ba17a7924aa75e04450565fa07b9cc29a8))
* **internal:** codegen related update ([#406](https://github.com/OneBusAway/ruby-sdk/issues/406)) ([b01cbb9](https://github.com/OneBusAway/ruby-sdk/commit/b01cbb976871112e6c4a9a25f9d16cf143ac9277))
* **internal:** formatting ([#416](https://github.com/OneBusAway/ruby-sdk/issues/416)) ([9f3d090](https://github.com/OneBusAway/ruby-sdk/commit/9f3d09045462b6cd5de9026dd04535e94b6b0ad0))
* **internal:** group related utils together ([#434](https://github.com/OneBusAway/ruby-sdk/issues/434)) ([3c1c6e8](https://github.com/OneBusAway/ruby-sdk/commit/3c1c6e8ec6ed3df06ab78653ae3e66f3c839bd57))
* **internal:** prune unused `extern` references ([#428](https://github.com/OneBusAway/ruby-sdk/issues/428)) ([4561974](https://github.com/OneBusAway/ruby-sdk/commit/4561974016b9149dcc8d4a5c7d402edc885da639))
* **internal:** refactor request stack ([#421](https://github.com/OneBusAway/ruby-sdk/issues/421)) ([eaa4758](https://github.com/OneBusAway/ruby-sdk/commit/eaa4758a7aeec4c4f18746778f7dc495618acf30))
* **internal:** version bump ([#150](https://github.com/OneBusAway/ruby-sdk/issues/150)) ([5f491fe](https://github.com/OneBusAway/ruby-sdk/commit/5f491fe0db0484831c47fef9b00eb2a3206a729d))
* **internal:** version bump ([#152](https://github.com/OneBusAway/ruby-sdk/issues/152)) ([7dfa6ad](https://github.com/OneBusAway/ruby-sdk/commit/7dfa6ad6f8f868828c93ccbc76ab2a2923cda2d1))
* **internal:** version bump ([#154](https://github.com/OneBusAway/ruby-sdk/issues/154)) ([00428b8](https://github.com/OneBusAway/ruby-sdk/commit/00428b811ec8fb4bc2ba99fe93ee1e5f8ae54c0b))
* **internal:** version bump ([#156](https://github.com/OneBusAway/ruby-sdk/issues/156)) ([9ab11bf](https://github.com/OneBusAway/ruby-sdk/commit/9ab11bf5a1918b1ed3a623e42a2864ae6cdfdc2c))
* **internal:** version bump ([#158](https://github.com/OneBusAway/ruby-sdk/issues/158)) ([c502245](https://github.com/OneBusAway/ruby-sdk/commit/c50224521c47d1a87098c89d67b5f40ad1d0dbf1))
* **internal:** version bump ([#160](https://github.com/OneBusAway/ruby-sdk/issues/160)) ([ef5de77](https://github.com/OneBusAway/ruby-sdk/commit/ef5de7710c9199d69c6480bd61900efc29e34fdf))
* **internal:** version bump ([#162](https://github.com/OneBusAway/ruby-sdk/issues/162)) ([7d2eb88](https://github.com/OneBusAway/ruby-sdk/commit/7d2eb88a02bd747b2ad087d97e143c2e8649112e))
* **internal:** version bump ([#164](https://github.com/OneBusAway/ruby-sdk/issues/164)) ([8fa6ec1](https://github.com/OneBusAway/ruby-sdk/commit/8fa6ec1123011ec8154353cb74639f8a40517874))
* **internal:** version bump ([#166](https://github.com/OneBusAway/ruby-sdk/issues/166)) ([fa7492c](https://github.com/OneBusAway/ruby-sdk/commit/fa7492c83c9a4023bdb25b25bce8653775dd78fc))
* **internal:** version bump ([#168](https://github.com/OneBusAway/ruby-sdk/issues/168)) ([fb8429d](https://github.com/OneBusAway/ruby-sdk/commit/fb8429d151c860ddf11002cb07a6fc1b215e19fc))
* **internal:** version bump ([#170](https://github.com/OneBusAway/ruby-sdk/issues/170)) ([522789f](https://github.com/OneBusAway/ruby-sdk/commit/522789f4cb86a8e66bba12d6d109dbd33b85ba32))
* **internal:** version bump ([#172](https://github.com/OneBusAway/ruby-sdk/issues/172)) ([af2ca5a](https://github.com/OneBusAway/ruby-sdk/commit/af2ca5a6a09b4a812b02f9dc66f661d23ae1c151))
* **internal:** version bump ([#174](https://github.com/OneBusAway/ruby-sdk/issues/174)) ([78995b0](https://github.com/OneBusAway/ruby-sdk/commit/78995b0367840308525a55e420ab79220dcd454f))
* **internal:** version bump ([#176](https://github.com/OneBusAway/ruby-sdk/issues/176)) ([c59971b](https://github.com/OneBusAway/ruby-sdk/commit/c59971b4460cdb134dc197931d7c850b7e5c6207))
* **internal:** version bump ([#178](https://github.com/OneBusAway/ruby-sdk/issues/178)) ([af8b1a0](https://github.com/OneBusAway/ruby-sdk/commit/af8b1a0a14070a22b7982af182ddd83cbd5730c0))
* **internal:** version bump ([#180](https://github.com/OneBusAway/ruby-sdk/issues/180)) ([13b0599](https://github.com/OneBusAway/ruby-sdk/commit/13b0599bda9d43867dc0e2a97c0d5916c914b05e))
* **internal:** version bump ([#182](https://github.com/OneBusAway/ruby-sdk/issues/182)) ([f4e5769](https://github.com/OneBusAway/ruby-sdk/commit/f4e576935b5757b1bba7c00f05fdee0409c145fb))
* **internal:** version bump ([#184](https://github.com/OneBusAway/ruby-sdk/issues/184)) ([18f5e05](https://github.com/OneBusAway/ruby-sdk/commit/18f5e05135bd0c94a5c207f014de3c56cec6b437))
* **internal:** version bump ([#186](https://github.com/OneBusAway/ruby-sdk/issues/186)) ([21bdcda](https://github.com/OneBusAway/ruby-sdk/commit/21bdcda367d4be580b3b693028d1e00ac293c8ed))
* **internal:** version bump ([#188](https://github.com/OneBusAway/ruby-sdk/issues/188)) ([cf6fb37](https://github.com/OneBusAway/ruby-sdk/commit/cf6fb379779977f958f6900f4e375eb42a97c2f9))
* **internal:** version bump ([#190](https://github.com/OneBusAway/ruby-sdk/issues/190)) ([286f92d](https://github.com/OneBusAway/ruby-sdk/commit/286f92d7e9b23c7262ad28988933d77e1e9b3ca0))
* **internal:** version bump ([#192](https://github.com/OneBusAway/ruby-sdk/issues/192)) ([a991771](https://github.com/OneBusAway/ruby-sdk/commit/a99177150c7ecedb5dbe758c432dc55c4b20ba61))
* **internal:** version bump ([#194](https://github.com/OneBusAway/ruby-sdk/issues/194)) ([4049860](https://github.com/OneBusAway/ruby-sdk/commit/40498605133ecc3900d9f7d7c4e47fd71eb38da4))
* **internal:** version bump ([#196](https://github.com/OneBusAway/ruby-sdk/issues/196)) ([b4cb20c](https://github.com/OneBusAway/ruby-sdk/commit/b4cb20c7f29aecbc11d19329123c92efad9369d9))
* **internal:** version bump ([#198](https://github.com/OneBusAway/ruby-sdk/issues/198)) ([94f6c3a](https://github.com/OneBusAway/ruby-sdk/commit/94f6c3a91da515c35ada4886725c2cf88a81dddd))
* **internal:** version bump ([#200](https://github.com/OneBusAway/ruby-sdk/issues/200)) ([9e14fc7](https://github.com/OneBusAway/ruby-sdk/commit/9e14fc7604bb47068e76e23a6c8d34685cb61b9e))
* **internal:** version bump ([#202](https://github.com/OneBusAway/ruby-sdk/issues/202)) ([bbfffbd](https://github.com/OneBusAway/ruby-sdk/commit/bbfffbdad074b3fb3f13fc58d92bc752fc69cdf2))
* **internal:** version bump ([#204](https://github.com/OneBusAway/ruby-sdk/issues/204)) ([91e37a3](https://github.com/OneBusAway/ruby-sdk/commit/91e37a35a3fb3cdfd76e8598857acb1720b50a62))
* **internal:** version bump ([#206](https://github.com/OneBusAway/ruby-sdk/issues/206)) ([422ab90](https://github.com/OneBusAway/ruby-sdk/commit/422ab90b658480fd9e34c039aa5b1682d5cdf259))
* **internal:** version bump ([#208](https://github.com/OneBusAway/ruby-sdk/issues/208)) ([3828a1d](https://github.com/OneBusAway/ruby-sdk/commit/3828a1d35b42c29d77ae42a496af6e2104535c89))
* **internal:** version bump ([#210](https://github.com/OneBusAway/ruby-sdk/issues/210)) ([c06cabb](https://github.com/OneBusAway/ruby-sdk/commit/c06cabb3c85f78c30cfbaca452c80af26bd3c2c0))
* **internal:** version bump ([#212](https://github.com/OneBusAway/ruby-sdk/issues/212)) ([313af01](https://github.com/OneBusAway/ruby-sdk/commit/313af01241efb24f39627ac613a678ee81081fab))
* **internal:** version bump ([#214](https://github.com/OneBusAway/ruby-sdk/issues/214)) ([f2bffa8](https://github.com/OneBusAway/ruby-sdk/commit/f2bffa8249f4becc106741dbe7451ffc4f33804d))
* **internal:** version bump ([#216](https://github.com/OneBusAway/ruby-sdk/issues/216)) ([96dcc9e](https://github.com/OneBusAway/ruby-sdk/commit/96dcc9eff633eddc1ea57f464e980eb0fcfb0789))
* **internal:** version bump ([#218](https://github.com/OneBusAway/ruby-sdk/issues/218)) ([408cacd](https://github.com/OneBusAway/ruby-sdk/commit/408cacde0f9f6620046e717aa89bbddb8938ce01))
* **internal:** version bump ([#220](https://github.com/OneBusAway/ruby-sdk/issues/220)) ([5948510](https://github.com/OneBusAway/ruby-sdk/commit/594851080f6079da5e78971d6f160e22f854a0c9))
* **internal:** version bump ([#222](https://github.com/OneBusAway/ruby-sdk/issues/222)) ([be06a05](https://github.com/OneBusAway/ruby-sdk/commit/be06a050bd7638991e2e5567141df80287b26980))
* **internal:** version bump ([#224](https://github.com/OneBusAway/ruby-sdk/issues/224)) ([7de5a77](https://github.com/OneBusAway/ruby-sdk/commit/7de5a77a6c1d33872f60b28e16bfa65e9fe2570d))
* **internal:** version bump ([#226](https://github.com/OneBusAway/ruby-sdk/issues/226)) ([c7b3ce9](https://github.com/OneBusAway/ruby-sdk/commit/c7b3ce952494e19864a2066f5a3f91d726f54ecf))
* **internal:** version bump ([#228](https://github.com/OneBusAway/ruby-sdk/issues/228)) ([1a43c4e](https://github.com/OneBusAway/ruby-sdk/commit/1a43c4efaf7cd0d298cb7155a52d29a6afb12127))
* **internal:** version bump ([#230](https://github.com/OneBusAway/ruby-sdk/issues/230)) ([062b88f](https://github.com/OneBusAway/ruby-sdk/commit/062b88f620fd9a90ac756a4e2fb7008c5496faed))
* **internal:** version bump ([#232](https://github.com/OneBusAway/ruby-sdk/issues/232)) ([4271229](https://github.com/OneBusAway/ruby-sdk/commit/4271229f5488d41c416e557e7ccaa8b0bf88f7eb))
* **internal:** version bump ([#234](https://github.com/OneBusAway/ruby-sdk/issues/234)) ([8e37eff](https://github.com/OneBusAway/ruby-sdk/commit/8e37eff4da019782bf378adc2229f1bcf2f8b4a2))
* **internal:** version bump ([#236](https://github.com/OneBusAway/ruby-sdk/issues/236)) ([9bf4061](https://github.com/OneBusAway/ruby-sdk/commit/9bf4061595c1f21485838aec0a3ef4764634ff8c))
* **internal:** version bump ([#238](https://github.com/OneBusAway/ruby-sdk/issues/238)) ([03caa27](https://github.com/OneBusAway/ruby-sdk/commit/03caa27880aab44d8e24fc5fb91f19b3edfb6a1c))
* **internal:** version bump ([#240](https://github.com/OneBusAway/ruby-sdk/issues/240)) ([d607ec9](https://github.com/OneBusAway/ruby-sdk/commit/d607ec9ac1a7e88e738f80c989142f66302ed1da))
* **internal:** version bump ([#242](https://github.com/OneBusAway/ruby-sdk/issues/242)) ([a8af13c](https://github.com/OneBusAway/ruby-sdk/commit/a8af13c1de72b08fc7ac9d5b313023407d4d9d3a))
* **internal:** version bump ([#244](https://github.com/OneBusAway/ruby-sdk/issues/244)) ([4eba83c](https://github.com/OneBusAway/ruby-sdk/commit/4eba83c1f3f622e314b35b5ce172213eaee1f304))
* **internal:** version bump ([#246](https://github.com/OneBusAway/ruby-sdk/issues/246)) ([8cd7c92](https://github.com/OneBusAway/ruby-sdk/commit/8cd7c92c6f3369cf4c39a82174e8c94d1430cf55))
* **internal:** version bump ([#248](https://github.com/OneBusAway/ruby-sdk/issues/248)) ([2fbf445](https://github.com/OneBusAway/ruby-sdk/commit/2fbf44532fc2e5885508fbe188867a4ccf71b36f))
* **internal:** version bump ([#250](https://github.com/OneBusAway/ruby-sdk/issues/250)) ([1b230e4](https://github.com/OneBusAway/ruby-sdk/commit/1b230e4bf80487190f2a745f1ba137d626d3faab))
* **internal:** version bump ([#252](https://github.com/OneBusAway/ruby-sdk/issues/252)) ([20bd54f](https://github.com/OneBusAway/ruby-sdk/commit/20bd54f7f68319cb3297a2cb58a3a0476120faf4))
* **internal:** version bump ([#254](https://github.com/OneBusAway/ruby-sdk/issues/254)) ([6172fad](https://github.com/OneBusAway/ruby-sdk/commit/6172faddb27521d6b715cdcc60716e52c7ea09e6))
* **internal:** version bump ([#256](https://github.com/OneBusAway/ruby-sdk/issues/256)) ([086ef26](https://github.com/OneBusAway/ruby-sdk/commit/086ef26f8564dc6baebf2593cda7b2bc146fcd27))
* **internal:** version bump ([#258](https://github.com/OneBusAway/ruby-sdk/issues/258)) ([cffd616](https://github.com/OneBusAway/ruby-sdk/commit/cffd616938c06e0329499a332aba9fbd45a8f3e2))
* **internal:** version bump ([#260](https://github.com/OneBusAway/ruby-sdk/issues/260)) ([a49f223](https://github.com/OneBusAway/ruby-sdk/commit/a49f2232f186bf3b378a4771181e78c6d1109393))
* **internal:** version bump ([#262](https://github.com/OneBusAway/ruby-sdk/issues/262)) ([fb3d1ab](https://github.com/OneBusAway/ruby-sdk/commit/fb3d1ab6a60b1c4657eb398ef9349e069012d356))
* **internal:** version bump ([#264](https://github.com/OneBusAway/ruby-sdk/issues/264)) ([38c8939](https://github.com/OneBusAway/ruby-sdk/commit/38c89397b49eafcc0980a49d3af3135b2d3df0ae))
* **internal:** version bump ([#266](https://github.com/OneBusAway/ruby-sdk/issues/266)) ([d42c0b3](https://github.com/OneBusAway/ruby-sdk/commit/d42c0b333dc408cdc38fcd446f4e6faf9e29d810))
* **internal:** version bump ([#268](https://github.com/OneBusAway/ruby-sdk/issues/268)) ([d17cf61](https://github.com/OneBusAway/ruby-sdk/commit/d17cf61a8622c2405a6da040335d968be2f3aa74))
* **internal:** version bump ([#270](https://github.com/OneBusAway/ruby-sdk/issues/270)) ([ca7bd92](https://github.com/OneBusAway/ruby-sdk/commit/ca7bd92faeb0dc142bde1e82289155fc1cbba5b0))
* **internal:** version bump ([#272](https://github.com/OneBusAway/ruby-sdk/issues/272)) ([87304b2](https://github.com/OneBusAway/ruby-sdk/commit/87304b29e72e509ceb7535b89d693fa861ac35a2))
* **internal:** version bump ([#274](https://github.com/OneBusAway/ruby-sdk/issues/274)) ([e1718e4](https://github.com/OneBusAway/ruby-sdk/commit/e1718e4627264de2c8e43e1cd1ea8a9072f81877))
* **internal:** version bump ([#276](https://github.com/OneBusAway/ruby-sdk/issues/276)) ([0db0d6c](https://github.com/OneBusAway/ruby-sdk/commit/0db0d6ce1d1ca823fbf998f39fcab21016fe82e9))
* **internal:** version bump ([#278](https://github.com/OneBusAway/ruby-sdk/issues/278)) ([d3e6147](https://github.com/OneBusAway/ruby-sdk/commit/d3e614799a71594430d18485d599f8f0246721bb))
* **internal:** version bump ([#280](https://github.com/OneBusAway/ruby-sdk/issues/280)) ([691f59d](https://github.com/OneBusAway/ruby-sdk/commit/691f59d4c8158b9de60154d50c5f2f4823d7c5f9))
* **internal:** version bump ([#282](https://github.com/OneBusAway/ruby-sdk/issues/282)) ([66a6612](https://github.com/OneBusAway/ruby-sdk/commit/66a6612c365a99007521c921f52d6005f623c739))
* **internal:** version bump ([#284](https://github.com/OneBusAway/ruby-sdk/issues/284)) ([c001104](https://github.com/OneBusAway/ruby-sdk/commit/c001104816c538def2590861a971db259ff054f6))
* **internal:** version bump ([#286](https://github.com/OneBusAway/ruby-sdk/issues/286)) ([51fb285](https://github.com/OneBusAway/ruby-sdk/commit/51fb285fd1c74fadd189466c91799f2d6e784e21))
* **internal:** version bump ([#288](https://github.com/OneBusAway/ruby-sdk/issues/288)) ([0bb0c5d](https://github.com/OneBusAway/ruby-sdk/commit/0bb0c5d85d6f60503830f818027400886ac54914))
* **internal:** version bump ([#290](https://github.com/OneBusAway/ruby-sdk/issues/290)) ([4640036](https://github.com/OneBusAway/ruby-sdk/commit/4640036b6583ed4b859346cd229f0b9cb03ecb4e))
* **internal:** version bump ([#292](https://github.com/OneBusAway/ruby-sdk/issues/292)) ([fc8ed62](https://github.com/OneBusAway/ruby-sdk/commit/fc8ed6236168a488d217693c8459acd74f591dcb))
* **internal:** version bump ([#294](https://github.com/OneBusAway/ruby-sdk/issues/294)) ([6faf7a8](https://github.com/OneBusAway/ruby-sdk/commit/6faf7a80d37ae2fb0835664fe31345fbc97fea86))
* **internal:** version bump ([#296](https://github.com/OneBusAway/ruby-sdk/issues/296)) ([c85d01c](https://github.com/OneBusAway/ruby-sdk/commit/c85d01c43cf93b682511fc47784df55b5024b88a))
* **internal:** version bump ([#298](https://github.com/OneBusAway/ruby-sdk/issues/298)) ([17e0f54](https://github.com/OneBusAway/ruby-sdk/commit/17e0f549ca0e955ca16b8a41e36d1c8935bd3575))
* **internal:** version bump ([#300](https://github.com/OneBusAway/ruby-sdk/issues/300)) ([536d470](https://github.com/OneBusAway/ruby-sdk/commit/536d4709ab14b8b5027f50341c7e23138879ad09))
* **internal:** version bump ([#302](https://github.com/OneBusAway/ruby-sdk/issues/302)) ([90b1a08](https://github.com/OneBusAway/ruby-sdk/commit/90b1a08f4f327dfceae8a8ed6db278b697b62193))
* **internal:** version bump ([#304](https://github.com/OneBusAway/ruby-sdk/issues/304)) ([8f4d9a1](https://github.com/OneBusAway/ruby-sdk/commit/8f4d9a1005a017c80eddcf963721565f56a38683))
* **internal:** version bump ([#306](https://github.com/OneBusAway/ruby-sdk/issues/306)) ([80ce0b9](https://github.com/OneBusAway/ruby-sdk/commit/80ce0b9391f13dc5edcfea2ac47251c0c1959730))
* **internal:** version bump ([#308](https://github.com/OneBusAway/ruby-sdk/issues/308)) ([353933c](https://github.com/OneBusAway/ruby-sdk/commit/353933cd161ff5832a172398c084999567176bab))
* **internal:** version bump ([#310](https://github.com/OneBusAway/ruby-sdk/issues/310)) ([4c53a27](https://github.com/OneBusAway/ruby-sdk/commit/4c53a2734618c26a666b4b6c8e737d88f6a9c476))
* **internal:** version bump ([#312](https://github.com/OneBusAway/ruby-sdk/issues/312)) ([23d2fc3](https://github.com/OneBusAway/ruby-sdk/commit/23d2fc30866a9ad12ca69689663cd151083a031d))
* **internal:** version bump ([#314](https://github.com/OneBusAway/ruby-sdk/issues/314)) ([993a307](https://github.com/OneBusAway/ruby-sdk/commit/993a30782b4dc986678d9cba936f33500a8774d4))
* **internal:** version bump ([#316](https://github.com/OneBusAway/ruby-sdk/issues/316)) ([a0e37f5](https://github.com/OneBusAway/ruby-sdk/commit/a0e37f5e0cc16ee5a39192367b618086f425a3ae))
* **internal:** version bump ([#318](https://github.com/OneBusAway/ruby-sdk/issues/318)) ([ea6716d](https://github.com/OneBusAway/ruby-sdk/commit/ea6716dfb4b3925a1a38f4fed91553f08c368de5))
* **internal:** version bump ([#320](https://github.com/OneBusAway/ruby-sdk/issues/320)) ([1a33a5f](https://github.com/OneBusAway/ruby-sdk/commit/1a33a5f37564e4ca672a28d68e8b815df4ff872e))
* **internal:** version bump ([#322](https://github.com/OneBusAway/ruby-sdk/issues/322)) ([16830ce](https://github.com/OneBusAway/ruby-sdk/commit/16830ce235dbd78936bbc73483380bf3a117f1ae))
* **internal:** version bump ([#324](https://github.com/OneBusAway/ruby-sdk/issues/324)) ([40e1ccc](https://github.com/OneBusAway/ruby-sdk/commit/40e1cccf7d29e44cd4ac5ecaa0c8f1371b6b2e4a))
* **internal:** version bump ([#326](https://github.com/OneBusAway/ruby-sdk/issues/326)) ([62451f0](https://github.com/OneBusAway/ruby-sdk/commit/62451f07dc800dae2b61942f868eba0e19d6b48d))
* **internal:** version bump ([#328](https://github.com/OneBusAway/ruby-sdk/issues/328)) ([b54dc44](https://github.com/OneBusAway/ruby-sdk/commit/b54dc44855177f896bb6f43749a102aa68b5d640))
* **internal:** version bump ([#330](https://github.com/OneBusAway/ruby-sdk/issues/330)) ([2368c3a](https://github.com/OneBusAway/ruby-sdk/commit/2368c3a329a6c32423f573217788ca23df6246e5))
* **internal:** version bump ([#332](https://github.com/OneBusAway/ruby-sdk/issues/332)) ([9d2835b](https://github.com/OneBusAway/ruby-sdk/commit/9d2835b959d884150169fc4cbf2345012c679c73))
* **internal:** version bump ([#334](https://github.com/OneBusAway/ruby-sdk/issues/334)) ([0d63e7a](https://github.com/OneBusAway/ruby-sdk/commit/0d63e7a768060243f2359c0e18b292fee36f11d9))
* **internal:** version bump ([#336](https://github.com/OneBusAway/ruby-sdk/issues/336)) ([37e3b12](https://github.com/OneBusAway/ruby-sdk/commit/37e3b12639d657dc6e22a51756f86d946c8e3b13))
* **internal:** version bump ([#338](https://github.com/OneBusAway/ruby-sdk/issues/338)) ([2d8f01a](https://github.com/OneBusAway/ruby-sdk/commit/2d8f01a245fed331337ef90e5946318b817487ef))
* **internal:** version bump ([#340](https://github.com/OneBusAway/ruby-sdk/issues/340)) ([dfabe8e](https://github.com/OneBusAway/ruby-sdk/commit/dfabe8eeaeec0b64a07bf3c521ba000e71a23f12))
* **internal:** version bump ([#342](https://github.com/OneBusAway/ruby-sdk/issues/342)) ([a562364](https://github.com/OneBusAway/ruby-sdk/commit/a562364ced4421e76a7f05a416061f91ae65543f))
* **internal:** version bump ([#344](https://github.com/OneBusAway/ruby-sdk/issues/344)) ([9537bcd](https://github.com/OneBusAway/ruby-sdk/commit/9537bcdf0444d402bde0568697952642c34958b4))
* **internal:** version bump ([#346](https://github.com/OneBusAway/ruby-sdk/issues/346)) ([ac45bc5](https://github.com/OneBusAway/ruby-sdk/commit/ac45bc52b489046f5508084fca005bb5bdedff22))
* **internal:** version bump ([#348](https://github.com/OneBusAway/ruby-sdk/issues/348)) ([9879529](https://github.com/OneBusAway/ruby-sdk/commit/9879529d16078426657e94dd872997d497e56eb7))
* **internal:** version bump ([#350](https://github.com/OneBusAway/ruby-sdk/issues/350)) ([7550abe](https://github.com/OneBusAway/ruby-sdk/commit/7550abefd4366da78316b0c77f7a3babac3c358e))
* **internal:** version bump ([#352](https://github.com/OneBusAway/ruby-sdk/issues/352)) ([82ec7b6](https://github.com/OneBusAway/ruby-sdk/commit/82ec7b6e9a819375bad4aaaae6b1f124c69df24f))
* **internal:** version bump ([#354](https://github.com/OneBusAway/ruby-sdk/issues/354)) ([fc599dc](https://github.com/OneBusAway/ruby-sdk/commit/fc599dc4c78a945a53117b762aa952d52ad2581d))
* **internal:** version bump ([#356](https://github.com/OneBusAway/ruby-sdk/issues/356)) ([65aeaf8](https://github.com/OneBusAway/ruby-sdk/commit/65aeaf8dae94d0d61dd0bdc67af649da57e2efbc))
* **internal:** version bump ([#358](https://github.com/OneBusAway/ruby-sdk/issues/358)) ([849a31b](https://github.com/OneBusAway/ruby-sdk/commit/849a31ba30b18db0f827c5de48cf096ff6bcbcf5))
* **internal:** version bump ([#360](https://github.com/OneBusAway/ruby-sdk/issues/360)) ([5b2a33b](https://github.com/OneBusAway/ruby-sdk/commit/5b2a33b3aaa3c9eb300237819a00a16ce9984af8))
* **internal:** version bump ([#362](https://github.com/OneBusAway/ruby-sdk/issues/362)) ([25ccbd5](https://github.com/OneBusAway/ruby-sdk/commit/25ccbd5bd9baa58010ee68dedfce683fbc3206ff))
* **internal:** version bump ([#364](https://github.com/OneBusAway/ruby-sdk/issues/364)) ([9e9d3af](https://github.com/OneBusAway/ruby-sdk/commit/9e9d3af0f2a7925e3fb482d281139c6fbae65ec1))
* **internal:** version bump ([#366](https://github.com/OneBusAway/ruby-sdk/issues/366)) ([12b9124](https://github.com/OneBusAway/ruby-sdk/commit/12b91245f4ce0550b7fb648030726da36a078f39))
* **internal:** version bump ([#368](https://github.com/OneBusAway/ruby-sdk/issues/368)) ([fd23694](https://github.com/OneBusAway/ruby-sdk/commit/fd23694ec911871ee6abc6036599d7651d2f604f))
* **internal:** version bump ([#370](https://github.com/OneBusAway/ruby-sdk/issues/370)) ([0131424](https://github.com/OneBusAway/ruby-sdk/commit/01314248bf1ab4e98719572c0836ce91f9f04079))
* **internal:** version bump ([#372](https://github.com/OneBusAway/ruby-sdk/issues/372)) ([2d2ceb5](https://github.com/OneBusAway/ruby-sdk/commit/2d2ceb52517d99d419a232e5e05a433db305fb74))
* **internal:** version bump ([#374](https://github.com/OneBusAway/ruby-sdk/issues/374)) ([2738231](https://github.com/OneBusAway/ruby-sdk/commit/27382311d6d50b1aefa36a8549b16f524134bd0f))
* **internal:** version bump ([#376](https://github.com/OneBusAway/ruby-sdk/issues/376)) ([e5a245e](https://github.com/OneBusAway/ruby-sdk/commit/e5a245e561db35ad6aceca8f4e38f533bae69573))
* **internal:** version bump ([#378](https://github.com/OneBusAway/ruby-sdk/issues/378)) ([bda7508](https://github.com/OneBusAway/ruby-sdk/commit/bda7508b2e5e62031c315de3fae54dc51a15ef83))
* **internal:** version bump ([#380](https://github.com/OneBusAway/ruby-sdk/issues/380)) ([5f052cf](https://github.com/OneBusAway/ruby-sdk/commit/5f052cf2628276ec98ef48856ae761f9f9717f52))
* **internal:** version bump ([#382](https://github.com/OneBusAway/ruby-sdk/issues/382)) ([2a46c92](https://github.com/OneBusAway/ruby-sdk/commit/2a46c92b1b2f1f17db88094a61fcbd9653b63831))
* **internal:** version bump ([#384](https://github.com/OneBusAway/ruby-sdk/issues/384)) ([b15cf3d](https://github.com/OneBusAway/ruby-sdk/commit/b15cf3db38764c2fa9a6ea37e205da8610c7b94c))
* **internal:** version bump ([#386](https://github.com/OneBusAway/ruby-sdk/issues/386)) ([771b018](https://github.com/OneBusAway/ruby-sdk/commit/771b018a50bdcfc779a5aa1eb18e8daf88adaf51))
* **internal:** version bump ([#388](https://github.com/OneBusAway/ruby-sdk/issues/388)) ([10febf1](https://github.com/OneBusAway/ruby-sdk/commit/10febf1d4fc7a1cac456cf2f635eee6fcc51cc84))
* **internal:** version bump ([#391](https://github.com/OneBusAway/ruby-sdk/issues/391)) ([bc1431b](https://github.com/OneBusAway/ruby-sdk/commit/bc1431bbaaabd18b38ed5b6525b0cc6a54810507))
* **internal:** version bump ([#393](https://github.com/OneBusAway/ruby-sdk/issues/393)) ([86c13aa](https://github.com/OneBusAway/ruby-sdk/commit/86c13aaef58f777dfa4239d0025e5afe7e892abd))
* **internal:** version bump ([#395](https://github.com/OneBusAway/ruby-sdk/issues/395)) ([64bf4e0](https://github.com/OneBusAway/ruby-sdk/commit/64bf4e0510479f3bf3d0fd3c87b528ab994f3cf5))
* **internal:** version bump ([#404](https://github.com/OneBusAway/ruby-sdk/issues/404)) ([8c4125c](https://github.com/OneBusAway/ruby-sdk/commit/8c4125c6d0fcb0c2a24a4428d3e676a2a7ac0fe0))
* **internal:** version bump ([#407](https://github.com/OneBusAway/ruby-sdk/issues/407)) ([c4c62f6](https://github.com/OneBusAway/ruby-sdk/commit/c4c62f6c345646681edfd4bafbc562e4216f8791))
* **internal:** version bump ([#409](https://github.com/OneBusAway/ruby-sdk/issues/409)) ([a41a92f](https://github.com/OneBusAway/ruby-sdk/commit/a41a92ffc0f484a9bc828132626946a0507990e6))
* **internal:** version bump ([#411](https://github.com/OneBusAway/ruby-sdk/issues/411)) ([85fa16e](https://github.com/OneBusAway/ruby-sdk/commit/85fa16e6e3f21447818219235c232c4f1758e5f3))
* **internal:** version bump ([#426](https://github.com/OneBusAway/ruby-sdk/issues/426)) ([c833335](https://github.com/OneBusAway/ruby-sdk/commit/c833335af625ad3c47670459f902e7e57d9acd16))
* **internal:** version bump ([#429](https://github.com/OneBusAway/ruby-sdk/issues/429)) ([1baefd4](https://github.com/OneBusAway/ruby-sdk/commit/1baefd4fd4ba1182e8306b23b83e530e3f8fa34f))
* **internal:** version bump ([#435](https://github.com/OneBusAway/ruby-sdk/issues/435)) ([d1f9959](https://github.com/OneBusAway/ruby-sdk/commit/d1f9959cab9cfcaccbf8a2ed786c2e0b5de16afc))
* **internal:** version bump ([#440](https://github.com/OneBusAway/ruby-sdk/issues/440)) ([e6b690a](https://github.com/OneBusAway/ruby-sdk/commit/e6b690a7bb7e24deeb8ca94af1db9786686be178))
* make MFA optional depending on token ([#419](https://github.com/OneBusAway/ruby-sdk/issues/419)) ([e758ad8](https://github.com/OneBusAway/ruby-sdk/commit/e758ad829c489d9cac864d07853ac9cab357b0c7))
* move basemodel examples into tests ([#420](https://github.com/OneBusAway/ruby-sdk/issues/420)) ([567a6bd](https://github.com/OneBusAway/ruby-sdk/commit/567a6bd2049bb237a45aceac96619a46e13356d8))
* **refactor:** improve requester internals ([#433](https://github.com/OneBusAway/ruby-sdk/issues/433)) ([16a4a12](https://github.com/OneBusAway/ruby-sdk/commit/16a4a121eaddcd07391bcf34218b591fe655f002))
* rename internal type aliases ([#418](https://github.com/OneBusAway/ruby-sdk/issues/418)) ([a134d0d](https://github.com/OneBusAway/ruby-sdk/commit/a134d0dfde3b2cb65970b1cb777b84eb72547651))
* reorganize import ordering ([#424](https://github.com/OneBusAway/ruby-sdk/issues/424)) ([0a6cdb1](https://github.com/OneBusAway/ruby-sdk/commit/0a6cdb10c7c1777e881703c933a53f90d2e5ea32))
* sort imports via topological dependency & file path ([#425](https://github.com/OneBusAway/ruby-sdk/issues/425)) ([2044bbd](https://github.com/OneBusAway/ruby-sdk/commit/2044bbde3edd51ce9997667b91eebf92f0586ef0))
* switch away from `attr_accessor` annotations to better match tapioca's compilation ([#402](https://github.com/OneBusAway/ruby-sdk/issues/402)) ([855b153](https://github.com/OneBusAway/ruby-sdk/commit/855b153d602d992b726055985f9e5d00e0e589d1))
* use concise syntax for pattern matching ([#398](https://github.com/OneBusAway/ruby-sdk/issues/398)) ([52603f4](https://github.com/OneBusAway/ruby-sdk/commit/52603f4dfdfd3d0a9a8560441ee17fb27e29d784))


### Documentation

* update URLs from stainlessapi.com to stainless.com ([#437](https://github.com/OneBusAway/ruby-sdk/issues/437)) ([7cf207f](https://github.com/OneBusAway/ruby-sdk/commit/7cf207f4c0676f24f8d4c6e28e4c6d93c64ed41e))

## 0.1.0-alpha.204 (2025-03-01)

Full Changelog: [v0.1.0-alpha.203...v0.1.0-alpha.204](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.203...v0.1.0-alpha.204)

### Features

* **internal:** modified tests for thread and fiber safety ([#438](https://github.com/OneBusAway/ruby-sdk/issues/438)) ([b834517](https://github.com/OneBusAway/ruby-sdk/commit/b834517dff0c599fc8c96219a842f0cae4db03fa))


### Bug Fixes

* better support header parameters ([#439](https://github.com/OneBusAway/ruby-sdk/issues/439)) ([8b25f6f](https://github.com/OneBusAway/ruby-sdk/commit/8b25f6fd42a5d51c418988772e58be822b3cbba6))


### Chores

* **internal:** version bump ([#435](https://github.com/OneBusAway/ruby-sdk/issues/435)) ([d1f9959](https://github.com/OneBusAway/ruby-sdk/commit/d1f9959cab9cfcaccbf8a2ed786c2e0b5de16afc))


### Documentation

* update URLs from stainlessapi.com to stainless.com ([#437](https://github.com/OneBusAway/ruby-sdk/issues/437)) ([7cf207f](https://github.com/OneBusAway/ruby-sdk/commit/7cf207f4c0676f24f8d4c6e28e4c6d93c64ed41e))

## 0.1.0-alpha.203 (2025-02-27)

Full Changelog: [v0.1.0-alpha.202...v0.1.0-alpha.203](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.202...v0.1.0-alpha.203)

### Features

* add deprecation notice to enum members and resources ([#431](https://github.com/OneBusAway/ruby-sdk/issues/431)) ([1f8123d](https://github.com/OneBusAway/ruby-sdk/commit/1f8123da74d970f8ace43b228c0c245513bf7663))
* isolate platform headers ([#432](https://github.com/OneBusAway/ruby-sdk/issues/432)) ([fce949f](https://github.com/OneBusAway/ruby-sdk/commit/fce949f1f3b94ff67a732266bd7c3d7874e88f17))


### Chores

* **internal:** group related utils together ([#434](https://github.com/OneBusAway/ruby-sdk/issues/434)) ([3c1c6e8](https://github.com/OneBusAway/ruby-sdk/commit/3c1c6e8ec6ed3df06ab78653ae3e66f3c839bd57))
* **internal:** version bump ([#429](https://github.com/OneBusAway/ruby-sdk/issues/429)) ([1baefd4](https://github.com/OneBusAway/ruby-sdk/commit/1baefd4fd4ba1182e8306b23b83e530e3f8fa34f))
* **refactor:** improve requester internals ([#433](https://github.com/OneBusAway/ruby-sdk/issues/433)) ([16a4a12](https://github.com/OneBusAway/ruby-sdk/commit/16a4a121eaddcd07391bcf34218b591fe655f002))

## 0.1.0-alpha.202 (2025-02-25)

Full Changelog: [v0.1.0-alpha.201...v0.1.0-alpha.202](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.201...v0.1.0-alpha.202)

### Chores

* **internal:** prune unused `extern` references ([#428](https://github.com/OneBusAway/ruby-sdk/issues/428)) ([4561974](https://github.com/OneBusAway/ruby-sdk/commit/4561974016b9149dcc8d4a5c7d402edc885da639))
* **internal:** version bump ([#426](https://github.com/OneBusAway/ruby-sdk/issues/426)) ([c833335](https://github.com/OneBusAway/ruby-sdk/commit/c833335af625ad3c47670459f902e7e57d9acd16))

## 0.1.0-alpha.201 (2025-02-22)

Full Changelog: [v0.1.0-alpha.200...v0.1.0-alpha.201](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.200...v0.1.0-alpha.201)

### Features

* make `build_request` overridable ([#422](https://github.com/OneBusAway/ruby-sdk/issues/422)) ([c160038](https://github.com/OneBusAway/ruby-sdk/commit/c1600380ff1405a7d6fbee95541773159b3d9cbd))
* support overlapping HTTP requests in same Fiber ([#413](https://github.com/OneBusAway/ruby-sdk/issues/413)) ([cf8ac2b](https://github.com/OneBusAway/ruby-sdk/commit/cf8ac2b0a0c68635cd390b657377fadfc8cc3cd2))


### Bug Fixes

* ssl timeout not required when TCP socket open timeout specified ([#414](https://github.com/OneBusAway/ruby-sdk/issues/414)) ([d7bffc1](https://github.com/OneBusAway/ruby-sdk/commit/d7bffc12691970483824a9159fa56d30c3f16d02))


### Chores

* add type annotations for requester ([#423](https://github.com/OneBusAway/ruby-sdk/issues/423)) ([d96b5e9](https://github.com/OneBusAway/ruby-sdk/commit/d96b5e947d69770d373d7e0883365e0f2568242a))
* bump lockfile ([#417](https://github.com/OneBusAway/ruby-sdk/issues/417)) ([5a9360a](https://github.com/OneBusAway/ruby-sdk/commit/5a9360a7b1b6480bfc009e3f370c1c1407b7b7dd))
* clean up client tests ([#415](https://github.com/OneBusAway/ruby-sdk/issues/415)) ([f581d97](https://github.com/OneBusAway/ruby-sdk/commit/f581d973e1c4d0ffd96f6f949aaaac2796f61250))
* **internal:** formatting ([#416](https://github.com/OneBusAway/ruby-sdk/issues/416)) ([9f3d090](https://github.com/OneBusAway/ruby-sdk/commit/9f3d09045462b6cd5de9026dd04535e94b6b0ad0))
* **internal:** refactor request stack ([#421](https://github.com/OneBusAway/ruby-sdk/issues/421)) ([eaa4758](https://github.com/OneBusAway/ruby-sdk/commit/eaa4758a7aeec4c4f18746778f7dc495618acf30))
* **internal:** version bump ([#411](https://github.com/OneBusAway/ruby-sdk/issues/411)) ([85fa16e](https://github.com/OneBusAway/ruby-sdk/commit/85fa16e6e3f21447818219235c232c4f1758e5f3))
* make MFA optional depending on token ([#419](https://github.com/OneBusAway/ruby-sdk/issues/419)) ([e758ad8](https://github.com/OneBusAway/ruby-sdk/commit/e758ad829c489d9cac864d07853ac9cab357b0c7))
* move basemodel examples into tests ([#420](https://github.com/OneBusAway/ruby-sdk/issues/420)) ([567a6bd](https://github.com/OneBusAway/ruby-sdk/commit/567a6bd2049bb237a45aceac96619a46e13356d8))
* rename internal type aliases ([#418](https://github.com/OneBusAway/ruby-sdk/issues/418)) ([a134d0d](https://github.com/OneBusAway/ruby-sdk/commit/a134d0dfde3b2cb65970b1cb777b84eb72547651))
* reorganize import ordering ([#424](https://github.com/OneBusAway/ruby-sdk/issues/424)) ([0a6cdb1](https://github.com/OneBusAway/ruby-sdk/commit/0a6cdb10c7c1777e881703c933a53f90d2e5ea32))
* sort imports via topological dependency & file path ([#425](https://github.com/OneBusAway/ruby-sdk/issues/425)) ([2044bbd](https://github.com/OneBusAway/ruby-sdk/commit/2044bbde3edd51ce9997667b91eebf92f0586ef0))

## 0.1.0-alpha.200 (2025-02-15)

Full Changelog: [v0.1.0-alpha.199...v0.1.0-alpha.200](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.199...v0.1.0-alpha.200)

### Chores

* **internal:** version bump ([#409](https://github.com/OneBusAway/ruby-sdk/issues/409)) ([a41a92f](https://github.com/OneBusAway/ruby-sdk/commit/a41a92ffc0f484a9bc828132626946a0507990e6))

## 0.1.0-alpha.199 (2025-02-15)

Full Changelog: [v0.1.0-alpha.198...v0.1.0-alpha.199](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.198...v0.1.0-alpha.199)

### Chores

* **internal:** version bump ([#407](https://github.com/OneBusAway/ruby-sdk/issues/407)) ([c4c62f6](https://github.com/OneBusAway/ruby-sdk/commit/c4c62f6c345646681edfd4bafbc562e4216f8791))

## 0.1.0-alpha.198 (2025-02-15)

Full Changelog: [v0.1.0-alpha.197...v0.1.0-alpha.198](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.197...v0.1.0-alpha.198)

### Chores

* **internal:** codegen related update ([#406](https://github.com/OneBusAway/ruby-sdk/issues/406)) ([b01cbb9](https://github.com/OneBusAway/ruby-sdk/commit/b01cbb976871112e6c4a9a25f9d16cf143ac9277))
* **internal:** version bump ([#404](https://github.com/OneBusAway/ruby-sdk/issues/404)) ([8c4125c](https://github.com/OneBusAway/ruby-sdk/commit/8c4125c6d0fcb0c2a24a4428d3e676a2a7ac0fe0))

## 0.1.0-alpha.197 (2025-02-14)

Full Changelog: [v0.1.0-alpha.196...v0.1.0-alpha.197](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.196...v0.1.0-alpha.197)

### Chores

* **internal:** codegen related update ([#397](https://github.com/OneBusAway/ruby-sdk/issues/397)) ([6a9895e](https://github.com/OneBusAway/ruby-sdk/commit/6a9895e574a483784eadd3b91a1d7c50efd97531))
* **internal:** codegen related update ([#399](https://github.com/OneBusAway/ruby-sdk/issues/399)) ([7bee1bd](https://github.com/OneBusAway/ruby-sdk/commit/7bee1bdacfe1b209fb7cb82d80bf89420c301c35))
* **internal:** codegen related update ([#400](https://github.com/OneBusAway/ruby-sdk/issues/400)) ([8885b74](https://github.com/OneBusAway/ruby-sdk/commit/8885b749a4b62f9a5b0500d3fafccfe53c1cc40c))
* **internal:** codegen related update ([#401](https://github.com/OneBusAway/ruby-sdk/issues/401)) ([6bb05a9](https://github.com/OneBusAway/ruby-sdk/commit/6bb05a9cd46217313e6ee5f209e2c4e93048dae8))
* **internal:** codegen related update ([#403](https://github.com/OneBusAway/ruby-sdk/issues/403)) ([4f0b98b](https://github.com/OneBusAway/ruby-sdk/commit/4f0b98ba17a7924aa75e04450565fa07b9cc29a8))
* **internal:** version bump ([#395](https://github.com/OneBusAway/ruby-sdk/issues/395)) ([64bf4e0](https://github.com/OneBusAway/ruby-sdk/commit/64bf4e0510479f3bf3d0fd3c87b528ab994f3cf5))
* switch away from `attr_accessor` annotations to better match tapioca's compilation ([#402](https://github.com/OneBusAway/ruby-sdk/issues/402)) ([855b153](https://github.com/OneBusAway/ruby-sdk/commit/855b153d602d992b726055985f9e5d00e0e589d1))
* use concise syntax for pattern matching ([#398](https://github.com/OneBusAway/ruby-sdk/issues/398)) ([52603f4](https://github.com/OneBusAway/ruby-sdk/commit/52603f4dfdfd3d0a9a8560441ee17fb27e29d784))

## 0.1.0-alpha.196 (2025-02-10)

Full Changelog: [v0.1.0-alpha.195...v0.1.0-alpha.196](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.195...v0.1.0-alpha.196)

### Chores

* **internal:** version bump ([#393](https://github.com/OneBusAway/ruby-sdk/issues/393)) ([d56be6d](https://github.com/OneBusAway/ruby-sdk/commit/d56be6d2b2194b47121217c711406b1b1eb37f14))

## 0.1.0-alpha.195 (2025-02-10)

Full Changelog: [v0.1.0-alpha.194...v0.1.0-alpha.195](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.194...v0.1.0-alpha.195)

### Chores

* **internal:** version bump ([#391](https://github.com/OneBusAway/ruby-sdk/issues/391)) ([28f1eb5](https://github.com/OneBusAway/ruby-sdk/commit/28f1eb58dc289673c7059f685139e1459cd5373c))

## 0.1.0-alpha.194 (2025-02-10)

Full Changelog: [v0.1.0-alpha.193...v0.1.0-alpha.194](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.193...v0.1.0-alpha.194)

### Features

* **api:** manual updates ([#389](https://github.com/OneBusAway/ruby-sdk/issues/389)) ([a93f551](https://github.com/OneBusAway/ruby-sdk/commit/a93f551d713ec18505e5a06c90aa7469cce0b8f4))


### Chores

* **internal:** version bump ([#388](https://github.com/OneBusAway/ruby-sdk/issues/388)) ([37a3c45](https://github.com/OneBusAway/ruby-sdk/commit/37a3c454557d2798cc1c2e70def2f105f6d032e8))

## 0.1.0-alpha.193 (2025-02-10)

Full Changelog: [v0.1.0-alpha.192...v0.1.0-alpha.193](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.192...v0.1.0-alpha.193)

### Chores

* **internal:** version bump ([#386](https://github.com/OneBusAway/ruby-sdk/issues/386)) ([691d78f](https://github.com/OneBusAway/ruby-sdk/commit/691d78f8e3f03cd048130dead5fb8e189c2e7183))

## 0.1.0-alpha.192 (2025-02-10)

Full Changelog: [v0.1.0-alpha.191...v0.1.0-alpha.192](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.191...v0.1.0-alpha.192)

### Chores

* **internal:** version bump ([#384](https://github.com/OneBusAway/ruby-sdk/issues/384)) ([266fc1d](https://github.com/OneBusAway/ruby-sdk/commit/266fc1d5d49064be9b96e7affb18bdbd286edd3d))

## 0.1.0-alpha.191 (2025-02-10)

Full Changelog: [v0.1.0-alpha.190...v0.1.0-alpha.191](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.190...v0.1.0-alpha.191)

### Chores

* **internal:** version bump ([#382](https://github.com/OneBusAway/ruby-sdk/issues/382)) ([11b87cf](https://github.com/OneBusAway/ruby-sdk/commit/11b87cf914e51e803e2dd8d2fc1c43b4eb85f2b6))

## 0.1.0-alpha.190 (2025-02-10)

Full Changelog: [v0.1.0-alpha.189...v0.1.0-alpha.190](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.189...v0.1.0-alpha.190)

### Chores

* **internal:** version bump ([#380](https://github.com/OneBusAway/ruby-sdk/issues/380)) ([ff83f16](https://github.com/OneBusAway/ruby-sdk/commit/ff83f16da02eba21cb9bbd5c371b1b0452100190))

## 0.1.0-alpha.189 (2025-02-10)

Full Changelog: [v0.1.0-alpha.188...v0.1.0-alpha.189](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.188...v0.1.0-alpha.189)

### Chores

* **internal:** version bump ([#378](https://github.com/OneBusAway/ruby-sdk/issues/378)) ([c0c54b9](https://github.com/OneBusAway/ruby-sdk/commit/c0c54b9634f3846ada1dc9cf064128b18201b088))

## 0.1.0-alpha.188 (2025-02-10)

Full Changelog: [v0.1.0-alpha.187...v0.1.0-alpha.188](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.187...v0.1.0-alpha.188)

### Chores

* **internal:** version bump ([#376](https://github.com/OneBusAway/ruby-sdk/issues/376)) ([5c5d18c](https://github.com/OneBusAway/ruby-sdk/commit/5c5d18c5c4001fc03b6ab7424703370a0786ba0b))

## 0.1.0-alpha.187 (2025-02-10)

Full Changelog: [v0.1.0-alpha.186...v0.1.0-alpha.187](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.186...v0.1.0-alpha.187)

### Chores

* **internal:** version bump ([#374](https://github.com/OneBusAway/ruby-sdk/issues/374)) ([b83cc3b](https://github.com/OneBusAway/ruby-sdk/commit/b83cc3bed728ba1b54ab135cb618abcd16a543f6))

## 0.1.0-alpha.186 (2025-02-10)

Full Changelog: [v0.1.0-alpha.185...v0.1.0-alpha.186](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.185...v0.1.0-alpha.186)

### Chores

* **internal:** version bump ([#372](https://github.com/OneBusAway/ruby-sdk/issues/372)) ([2da254a](https://github.com/OneBusAway/ruby-sdk/commit/2da254a7c94c5be640fe54c1a44cee7f789b69dc))

## 0.1.0-alpha.185 (2025-02-10)

Full Changelog: [v0.1.0-alpha.184...v0.1.0-alpha.185](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.184...v0.1.0-alpha.185)

### Chores

* **internal:** version bump ([#370](https://github.com/OneBusAway/ruby-sdk/issues/370)) ([c1e1539](https://github.com/OneBusAway/ruby-sdk/commit/c1e1539070c569e70ef3a9ae8b32c955443480ec))

## 0.1.0-alpha.184 (2025-02-10)

Full Changelog: [v0.1.0-alpha.183...v0.1.0-alpha.184](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.183...v0.1.0-alpha.184)

### Chores

* **internal:** version bump ([#368](https://github.com/OneBusAway/ruby-sdk/issues/368)) ([5d8bad1](https://github.com/OneBusAway/ruby-sdk/commit/5d8bad17d7f3075c21c1766cb6b4c0fd370c0079))

## 0.1.0-alpha.183 (2025-02-10)

Full Changelog: [v0.1.0-alpha.182...v0.1.0-alpha.183](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.182...v0.1.0-alpha.183)

### Chores

* **internal:** version bump ([#366](https://github.com/OneBusAway/ruby-sdk/issues/366)) ([2aaccdf](https://github.com/OneBusAway/ruby-sdk/commit/2aaccdfc2d0e50bb2dc1018794ebdb219c3b3404))

## 0.1.0-alpha.182 (2025-02-10)

Full Changelog: [v0.1.0-alpha.181...v0.1.0-alpha.182](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.181...v0.1.0-alpha.182)

### Chores

* **internal:** version bump ([#364](https://github.com/OneBusAway/ruby-sdk/issues/364)) ([68ee5b2](https://github.com/OneBusAway/ruby-sdk/commit/68ee5b294ec5812e9e806493a1bcd128ce31744d))

## 0.1.0-alpha.181 (2025-02-10)

Full Changelog: [v0.1.0-alpha.180...v0.1.0-alpha.181](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.180...v0.1.0-alpha.181)

### Chores

* **internal:** version bump ([#362](https://github.com/OneBusAway/ruby-sdk/issues/362)) ([8333c59](https://github.com/OneBusAway/ruby-sdk/commit/8333c5967bddfce58cff1a045acf8586b177f6b3))

## 0.1.0-alpha.180 (2025-02-10)

Full Changelog: [v0.1.0-alpha.179...v0.1.0-alpha.180](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.179...v0.1.0-alpha.180)

### Chores

* **internal:** version bump ([#360](https://github.com/OneBusAway/ruby-sdk/issues/360)) ([42b6068](https://github.com/OneBusAway/ruby-sdk/commit/42b606856242b2fbf8f339dea59716e05a98e5f7))

## 0.1.0-alpha.179 (2025-02-10)

Full Changelog: [v0.1.0-alpha.178...v0.1.0-alpha.179](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.178...v0.1.0-alpha.179)

### Chores

* **internal:** version bump ([#358](https://github.com/OneBusAway/ruby-sdk/issues/358)) ([a8084f2](https://github.com/OneBusAway/ruby-sdk/commit/a8084f2f7ea335db77034e5c6afebd5284af882b))

## 0.1.0-alpha.178 (2025-02-10)

Full Changelog: [v0.1.0-alpha.177...v0.1.0-alpha.178](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.177...v0.1.0-alpha.178)

### Chores

* **internal:** version bump ([#356](https://github.com/OneBusAway/ruby-sdk/issues/356)) ([b784e8b](https://github.com/OneBusAway/ruby-sdk/commit/b784e8b64e5060cd3f8dd5a67a75cfe4da556229))

## 0.1.0-alpha.177 (2025-02-10)

Full Changelog: [v0.1.0-alpha.176...v0.1.0-alpha.177](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.176...v0.1.0-alpha.177)

### Chores

* **internal:** version bump ([#354](https://github.com/OneBusAway/ruby-sdk/issues/354)) ([6365851](https://github.com/OneBusAway/ruby-sdk/commit/63658512b9fbf767d04f135b4586a1b75c1394aa))

## 0.1.0-alpha.176 (2025-02-10)

Full Changelog: [v0.1.0-alpha.175...v0.1.0-alpha.176](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.175...v0.1.0-alpha.176)

### Chores

* **internal:** version bump ([#352](https://github.com/OneBusAway/ruby-sdk/issues/352)) ([0bd7b9e](https://github.com/OneBusAway/ruby-sdk/commit/0bd7b9e5c03c373b5127b03c9333fe18265c6bc1))

## 0.1.0-alpha.175 (2025-02-10)

Full Changelog: [v0.1.0-alpha.174...v0.1.0-alpha.175](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.174...v0.1.0-alpha.175)

### Chores

* **internal:** version bump ([#350](https://github.com/OneBusAway/ruby-sdk/issues/350)) ([428df4f](https://github.com/OneBusAway/ruby-sdk/commit/428df4f238162911400ac06f4c3b3a215c4a7c7f))

## 0.1.0-alpha.174 (2025-02-10)

Full Changelog: [v0.1.0-alpha.173...v0.1.0-alpha.174](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.173...v0.1.0-alpha.174)

### Chores

* **internal:** version bump ([#348](https://github.com/OneBusAway/ruby-sdk/issues/348)) ([58c4387](https://github.com/OneBusAway/ruby-sdk/commit/58c4387aeb7ecd56615414689942907c802e0c5f))

## 0.1.0-alpha.173 (2025-02-10)

Full Changelog: [v0.1.0-alpha.172...v0.1.0-alpha.173](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.172...v0.1.0-alpha.173)

### Chores

* **internal:** version bump ([#346](https://github.com/OneBusAway/ruby-sdk/issues/346)) ([256484b](https://github.com/OneBusAway/ruby-sdk/commit/256484b91da6f40d3b2197d8791f9110e0b38b7c))

## 0.1.0-alpha.172 (2025-02-10)

Full Changelog: [v0.1.0-alpha.171...v0.1.0-alpha.172](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.171...v0.1.0-alpha.172)

### Chores

* **internal:** version bump ([#344](https://github.com/OneBusAway/ruby-sdk/issues/344)) ([23d5891](https://github.com/OneBusAway/ruby-sdk/commit/23d5891c0a5c7d93add0e988cc66d7873a193f6c))

## 0.1.0-alpha.171 (2025-02-10)

Full Changelog: [v0.1.0-alpha.170...v0.1.0-alpha.171](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.170...v0.1.0-alpha.171)

### Chores

* **internal:** version bump ([#342](https://github.com/OneBusAway/ruby-sdk/issues/342)) ([c2ede02](https://github.com/OneBusAway/ruby-sdk/commit/c2ede02de90a9894645c0f0a311c0100d1918e41))

## 0.1.0-alpha.170 (2025-02-10)

Full Changelog: [v0.1.0-alpha.169...v0.1.0-alpha.170](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.169...v0.1.0-alpha.170)

### Chores

* **internal:** version bump ([#340](https://github.com/OneBusAway/ruby-sdk/issues/340)) ([8c08f60](https://github.com/OneBusAway/ruby-sdk/commit/8c08f602084f84da93630e48359dd94a84b37125))

## 0.1.0-alpha.169 (2025-02-10)

Full Changelog: [v0.1.0-alpha.168...v0.1.0-alpha.169](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.168...v0.1.0-alpha.169)

### Chores

* **internal:** version bump ([#338](https://github.com/OneBusAway/ruby-sdk/issues/338)) ([004f24d](https://github.com/OneBusAway/ruby-sdk/commit/004f24da34681216e48f0338e5ea7f72d8ca0321))

## 0.1.0-alpha.168 (2025-02-10)

Full Changelog: [v0.1.0-alpha.167...v0.1.0-alpha.168](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.167...v0.1.0-alpha.168)

### Chores

* **internal:** version bump ([#336](https://github.com/OneBusAway/ruby-sdk/issues/336)) ([61f94ae](https://github.com/OneBusAway/ruby-sdk/commit/61f94ae0f8319a5b5bd182219aeb2c80e229b646))

## 0.1.0-alpha.167 (2025-02-10)

Full Changelog: [v0.1.0-alpha.166...v0.1.0-alpha.167](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.166...v0.1.0-alpha.167)

### Chores

* **internal:** version bump ([#334](https://github.com/OneBusAway/ruby-sdk/issues/334)) ([f78caea](https://github.com/OneBusAway/ruby-sdk/commit/f78caeafeee8666e98cdd4752055ec0131dc57d5))

## 0.1.0-alpha.166 (2025-02-10)

Full Changelog: [v0.1.0-alpha.165...v0.1.0-alpha.166](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.165...v0.1.0-alpha.166)

### Chores

* **internal:** version bump ([#332](https://github.com/OneBusAway/ruby-sdk/issues/332)) ([142a1e6](https://github.com/OneBusAway/ruby-sdk/commit/142a1e625298ee88a6b7364caba7ea99ce86bde0))

## 0.1.0-alpha.165 (2025-02-10)

Full Changelog: [v0.1.0-alpha.164...v0.1.0-alpha.165](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.164...v0.1.0-alpha.165)

### Chores

* **internal:** version bump ([#330](https://github.com/OneBusAway/ruby-sdk/issues/330)) ([afe37d1](https://github.com/OneBusAway/ruby-sdk/commit/afe37d11fb0d4d1fea7eaab50eab42afbd9b1935))

## 0.1.0-alpha.164 (2025-02-10)

Full Changelog: [v0.1.0-alpha.163...v0.1.0-alpha.164](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.163...v0.1.0-alpha.164)

### Chores

* **internal:** version bump ([#328](https://github.com/OneBusAway/ruby-sdk/issues/328)) ([6f76414](https://github.com/OneBusAway/ruby-sdk/commit/6f764149a9599c95696a13bdb6e08e301632a179))

## 0.1.0-alpha.163 (2025-02-10)

Full Changelog: [v0.1.0-alpha.162...v0.1.0-alpha.163](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.162...v0.1.0-alpha.163)

### Chores

* **internal:** version bump ([#326](https://github.com/OneBusAway/ruby-sdk/issues/326)) ([fae5d7f](https://github.com/OneBusAway/ruby-sdk/commit/fae5d7ff2ef07d9592e28ab4835b9ae0f9cf8d68))

## 0.1.0-alpha.162 (2025-02-10)

Full Changelog: [v0.1.0-alpha.161...v0.1.0-alpha.162](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.161...v0.1.0-alpha.162)

### Chores

* **internal:** version bump ([#324](https://github.com/OneBusAway/ruby-sdk/issues/324)) ([6df6900](https://github.com/OneBusAway/ruby-sdk/commit/6df6900934bc45ee83129e96093e46a26114c59d))

## 0.1.0-alpha.161 (2025-02-10)

Full Changelog: [v0.1.0-alpha.160...v0.1.0-alpha.161](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.160...v0.1.0-alpha.161)

### Chores

* **internal:** version bump ([#322](https://github.com/OneBusAway/ruby-sdk/issues/322)) ([eda61b2](https://github.com/OneBusAway/ruby-sdk/commit/eda61b20be44c2bee74844f30b680f7b2adc978b))

## 0.1.0-alpha.160 (2025-02-10)

Full Changelog: [v0.1.0-alpha.159...v0.1.0-alpha.160](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.159...v0.1.0-alpha.160)

### Chores

* **internal:** version bump ([#320](https://github.com/OneBusAway/ruby-sdk/issues/320)) ([3924df2](https://github.com/OneBusAway/ruby-sdk/commit/3924df27c303d1697643dae31c6b89bacb61db1a))

## 0.1.0-alpha.159 (2025-02-10)

Full Changelog: [v0.1.0-alpha.158...v0.1.0-alpha.159](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.158...v0.1.0-alpha.159)

### Chores

* **internal:** version bump ([#318](https://github.com/OneBusAway/ruby-sdk/issues/318)) ([ab8a108](https://github.com/OneBusAway/ruby-sdk/commit/ab8a108f7d414ff6225526005f0af193f58c021a))

## 0.1.0-alpha.158 (2025-02-10)

Full Changelog: [v0.1.0-alpha.157...v0.1.0-alpha.158](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.157...v0.1.0-alpha.158)

### Chores

* **internal:** version bump ([#316](https://github.com/OneBusAway/ruby-sdk/issues/316)) ([9302cee](https://github.com/OneBusAway/ruby-sdk/commit/9302ceeae386533ca28c75cabb60d6f161aa306c))

## 0.1.0-alpha.157 (2025-02-10)

Full Changelog: [v0.1.0-alpha.156...v0.1.0-alpha.157](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.156...v0.1.0-alpha.157)

### Chores

* **internal:** version bump ([#314](https://github.com/OneBusAway/ruby-sdk/issues/314)) ([a6cab13](https://github.com/OneBusAway/ruby-sdk/commit/a6cab13f407fae9ecd4c95455e2c27d5be6f8c11))

## 0.1.0-alpha.156 (2025-02-10)

Full Changelog: [v0.1.0-alpha.155...v0.1.0-alpha.156](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.155...v0.1.0-alpha.156)

### Chores

* **internal:** version bump ([#312](https://github.com/OneBusAway/ruby-sdk/issues/312)) ([a2896f2](https://github.com/OneBusAway/ruby-sdk/commit/a2896f2c71ef742133ea5d2f10b149013b231b60))

## 0.1.0-alpha.155 (2025-02-10)

Full Changelog: [v0.1.0-alpha.154...v0.1.0-alpha.155](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.154...v0.1.0-alpha.155)

### Chores

* **internal:** version bump ([#310](https://github.com/OneBusAway/ruby-sdk/issues/310)) ([4d3cb07](https://github.com/OneBusAway/ruby-sdk/commit/4d3cb07810c8bc53fb6a76d39e13d1bc9c20692d))

## 0.1.0-alpha.154 (2025-02-10)

Full Changelog: [v0.1.0-alpha.153...v0.1.0-alpha.154](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.153...v0.1.0-alpha.154)

### Chores

* **internal:** version bump ([#308](https://github.com/OneBusAway/ruby-sdk/issues/308)) ([4f19544](https://github.com/OneBusAway/ruby-sdk/commit/4f195441293a8c8374865fbea26d4bfec8964727))

## 0.1.0-alpha.153 (2025-02-10)

Full Changelog: [v0.1.0-alpha.152...v0.1.0-alpha.153](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.152...v0.1.0-alpha.153)

### Chores

* **internal:** version bump ([#306](https://github.com/OneBusAway/ruby-sdk/issues/306)) ([03211c4](https://github.com/OneBusAway/ruby-sdk/commit/03211c4014cf53c9734bec96daa9e96ad4022a71))

## 0.1.0-alpha.152 (2025-02-10)

Full Changelog: [v0.1.0-alpha.151...v0.1.0-alpha.152](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.151...v0.1.0-alpha.152)

### Chores

* **internal:** version bump ([#304](https://github.com/OneBusAway/ruby-sdk/issues/304)) ([77a6146](https://github.com/OneBusAway/ruby-sdk/commit/77a6146f6585d48a85e9f82d6d536b1ba10350e6))

## 0.1.0-alpha.151 (2025-02-10)

Full Changelog: [v0.1.0-alpha.150...v0.1.0-alpha.151](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.150...v0.1.0-alpha.151)

### Chores

* **internal:** version bump ([#302](https://github.com/OneBusAway/ruby-sdk/issues/302)) ([0125e3c](https://github.com/OneBusAway/ruby-sdk/commit/0125e3c2a544f267e44142f6e0d50cc96b31d0e0))

## 0.1.0-alpha.150 (2025-02-10)

Full Changelog: [v0.1.0-alpha.149...v0.1.0-alpha.150](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.149...v0.1.0-alpha.150)

### Chores

* **internal:** version bump ([#300](https://github.com/OneBusAway/ruby-sdk/issues/300)) ([af5260f](https://github.com/OneBusAway/ruby-sdk/commit/af5260f14e2cf8986d187ae7625ebaf0e2f535cc))

## 0.1.0-alpha.149 (2025-02-10)

Full Changelog: [v0.1.0-alpha.148...v0.1.0-alpha.149](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.148...v0.1.0-alpha.149)

### Chores

* **internal:** version bump ([#298](https://github.com/OneBusAway/ruby-sdk/issues/298)) ([459f326](https://github.com/OneBusAway/ruby-sdk/commit/459f326b09b7d1a7a126c629013895936b070036))

## 0.1.0-alpha.148 (2025-02-10)

Full Changelog: [v0.1.0-alpha.147...v0.1.0-alpha.148](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.147...v0.1.0-alpha.148)

### Chores

* **internal:** version bump ([#296](https://github.com/OneBusAway/ruby-sdk/issues/296)) ([274f07b](https://github.com/OneBusAway/ruby-sdk/commit/274f07bb33857efc16cb7085676a42f125974985))

## 0.1.0-alpha.147 (2025-02-10)

Full Changelog: [v0.1.0-alpha.146...v0.1.0-alpha.147](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.146...v0.1.0-alpha.147)

### Chores

* **internal:** version bump ([#294](https://github.com/OneBusAway/ruby-sdk/issues/294)) ([a7e139d](https://github.com/OneBusAway/ruby-sdk/commit/a7e139dda88797ac67764b389cf3d0702e84a14d))

## 0.1.0-alpha.146 (2025-02-10)

Full Changelog: [v0.1.0-alpha.145...v0.1.0-alpha.146](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.145...v0.1.0-alpha.146)

### Chores

* **internal:** version bump ([#292](https://github.com/OneBusAway/ruby-sdk/issues/292)) ([bfc5ed7](https://github.com/OneBusAway/ruby-sdk/commit/bfc5ed78989cc09f8e375f655d04bd174e1b1293))

## 0.1.0-alpha.145 (2025-02-10)

Full Changelog: [v0.1.0-alpha.144...v0.1.0-alpha.145](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.144...v0.1.0-alpha.145)

### Chores

* **internal:** version bump ([#290](https://github.com/OneBusAway/ruby-sdk/issues/290)) ([e83b8fe](https://github.com/OneBusAway/ruby-sdk/commit/e83b8fee547d99c8040a3f8cdb327ef575eb2c78))

## 0.1.0-alpha.144 (2025-02-10)

Full Changelog: [v0.1.0-alpha.143...v0.1.0-alpha.144](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.143...v0.1.0-alpha.144)

### Chores

* **internal:** version bump ([#288](https://github.com/OneBusAway/ruby-sdk/issues/288)) ([848de2d](https://github.com/OneBusAway/ruby-sdk/commit/848de2d669e8424d1eca23c2d14e9583fcd79101))

## 0.1.0-alpha.143 (2025-02-10)

Full Changelog: [v0.1.0-alpha.142...v0.1.0-alpha.143](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.142...v0.1.0-alpha.143)

### Chores

* **internal:** version bump ([#286](https://github.com/OneBusAway/ruby-sdk/issues/286)) ([df97636](https://github.com/OneBusAway/ruby-sdk/commit/df97636161a3078eff8ad419579fe01ed2b72e70))

## 0.1.0-alpha.142 (2025-02-10)

Full Changelog: [v0.1.0-alpha.141...v0.1.0-alpha.142](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.141...v0.1.0-alpha.142)

### Chores

* **internal:** version bump ([#284](https://github.com/OneBusAway/ruby-sdk/issues/284)) ([919f877](https://github.com/OneBusAway/ruby-sdk/commit/919f87737394957162f85f6900df738c516582c1))

## 0.1.0-alpha.141 (2025-02-10)

Full Changelog: [v0.1.0-alpha.140...v0.1.0-alpha.141](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.140...v0.1.0-alpha.141)

### Chores

* **internal:** version bump ([#282](https://github.com/OneBusAway/ruby-sdk/issues/282)) ([06b67d4](https://github.com/OneBusAway/ruby-sdk/commit/06b67d4248e5c807cc53099e71bda68128e99cd7))

## 0.1.0-alpha.140 (2025-02-10)

Full Changelog: [v0.1.0-alpha.139...v0.1.0-alpha.140](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.139...v0.1.0-alpha.140)

### Chores

* **internal:** version bump ([#280](https://github.com/OneBusAway/ruby-sdk/issues/280)) ([3fdcbaf](https://github.com/OneBusAway/ruby-sdk/commit/3fdcbaf70e94d334b68d597e3a9b4b11c97e9fb9))

## 0.1.0-alpha.139 (2025-02-10)

Full Changelog: [v0.1.0-alpha.138...v0.1.0-alpha.139](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.138...v0.1.0-alpha.139)

### Chores

* **internal:** version bump ([#278](https://github.com/OneBusAway/ruby-sdk/issues/278)) ([2b10b13](https://github.com/OneBusAway/ruby-sdk/commit/2b10b13424cb4772453d25155be81748ca5d56e5))

## 0.1.0-alpha.138 (2025-02-10)

Full Changelog: [v0.1.0-alpha.137...v0.1.0-alpha.138](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.137...v0.1.0-alpha.138)

### Chores

* **internal:** version bump ([#276](https://github.com/OneBusAway/ruby-sdk/issues/276)) ([5aef57e](https://github.com/OneBusAway/ruby-sdk/commit/5aef57e42d30ca2e2f4f8a038c25d4bac9e47392))

## 0.1.0-alpha.137 (2025-02-10)

Full Changelog: [v0.1.0-alpha.136...v0.1.0-alpha.137](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.136...v0.1.0-alpha.137)

### Chores

* **internal:** version bump ([#274](https://github.com/OneBusAway/ruby-sdk/issues/274)) ([7e7cbc7](https://github.com/OneBusAway/ruby-sdk/commit/7e7cbc743f97c23faabf2792e1cee9e5e378e54f))

## 0.1.0-alpha.136 (2025-02-10)

Full Changelog: [v0.1.0-alpha.135...v0.1.0-alpha.136](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.135...v0.1.0-alpha.136)

### Chores

* **internal:** version bump ([#272](https://github.com/OneBusAway/ruby-sdk/issues/272)) ([1c518c9](https://github.com/OneBusAway/ruby-sdk/commit/1c518c97aefb9d9c0a114648a59a343cf1c740e7))

## 0.1.0-alpha.135 (2025-02-10)

Full Changelog: [v0.1.0-alpha.134...v0.1.0-alpha.135](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.134...v0.1.0-alpha.135)

### Chores

* **internal:** version bump ([#270](https://github.com/OneBusAway/ruby-sdk/issues/270)) ([bfbad5d](https://github.com/OneBusAway/ruby-sdk/commit/bfbad5da49e7ffcaa3e145bdbffb42a2f6a8603b))

## 0.1.0-alpha.134 (2025-02-10)

Full Changelog: [v0.1.0-alpha.133...v0.1.0-alpha.134](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.133...v0.1.0-alpha.134)

### Chores

* **internal:** version bump ([#268](https://github.com/OneBusAway/ruby-sdk/issues/268)) ([27faeeb](https://github.com/OneBusAway/ruby-sdk/commit/27faeeb14cb6e046f2e89e5191a01a60d12bf212))

## 0.1.0-alpha.133 (2025-02-10)

Full Changelog: [v0.1.0-alpha.132...v0.1.0-alpha.133](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.132...v0.1.0-alpha.133)

### Chores

* **internal:** version bump ([#266](https://github.com/OneBusAway/ruby-sdk/issues/266)) ([0e7364d](https://github.com/OneBusAway/ruby-sdk/commit/0e7364da51154f134939d9b0be97ab4a26543679))

## 0.1.0-alpha.132 (2025-02-10)

Full Changelog: [v0.1.0-alpha.131...v0.1.0-alpha.132](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.131...v0.1.0-alpha.132)

### Chores

* **internal:** version bump ([#264](https://github.com/OneBusAway/ruby-sdk/issues/264)) ([e5c4199](https://github.com/OneBusAway/ruby-sdk/commit/e5c41991bc98e68b4119bcad22cc3d0088c4844e))

## 0.1.0-alpha.131 (2025-02-10)

Full Changelog: [v0.1.0-alpha.130...v0.1.0-alpha.131](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.130...v0.1.0-alpha.131)

### Chores

* **internal:** version bump ([#262](https://github.com/OneBusAway/ruby-sdk/issues/262)) ([4071c17](https://github.com/OneBusAway/ruby-sdk/commit/4071c17af607ba1cad3b642fabb95b4637eed831))

## 0.1.0-alpha.130 (2025-02-10)

Full Changelog: [v0.1.0-alpha.129...v0.1.0-alpha.130](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.129...v0.1.0-alpha.130)

### Chores

* **internal:** version bump ([#260](https://github.com/OneBusAway/ruby-sdk/issues/260)) ([f8030fc](https://github.com/OneBusAway/ruby-sdk/commit/f8030fc2ac3eecdfe84383afa109be60e9cd86e4))

## 0.1.0-alpha.129 (2025-02-10)

Full Changelog: [v0.1.0-alpha.128...v0.1.0-alpha.129](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.128...v0.1.0-alpha.129)

### Chores

* **internal:** version bump ([#258](https://github.com/OneBusAway/ruby-sdk/issues/258)) ([762c7b4](https://github.com/OneBusAway/ruby-sdk/commit/762c7b41f5d089cc09835459ca710488a5d19d5a))

## 0.1.0-alpha.128 (2025-02-09)

Full Changelog: [v0.1.0-alpha.127...v0.1.0-alpha.128](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.127...v0.1.0-alpha.128)

### Chores

* **internal:** version bump ([#256](https://github.com/OneBusAway/ruby-sdk/issues/256)) ([26f54ec](https://github.com/OneBusAway/ruby-sdk/commit/26f54ec91746e770791f1445875ebb1b4295ebc0))

## 0.1.0-alpha.127 (2025-02-09)

Full Changelog: [v0.1.0-alpha.126...v0.1.0-alpha.127](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.126...v0.1.0-alpha.127)

### Chores

* **internal:** version bump ([#254](https://github.com/OneBusAway/ruby-sdk/issues/254)) ([2cf4b08](https://github.com/OneBusAway/ruby-sdk/commit/2cf4b08b1bfa6fcd832f08f95e4fa8c663326843))

## 0.1.0-alpha.126 (2025-02-09)

Full Changelog: [v0.1.0-alpha.125...v0.1.0-alpha.126](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.125...v0.1.0-alpha.126)

### Chores

* **internal:** version bump ([#252](https://github.com/OneBusAway/ruby-sdk/issues/252)) ([af6f587](https://github.com/OneBusAway/ruby-sdk/commit/af6f5876edcf7c782addb3aae98bf7c156435b08))

## 0.1.0-alpha.125 (2025-02-09)

Full Changelog: [v0.1.0-alpha.124...v0.1.0-alpha.125](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.124...v0.1.0-alpha.125)

### Chores

* **internal:** version bump ([#250](https://github.com/OneBusAway/ruby-sdk/issues/250)) ([f06ca77](https://github.com/OneBusAway/ruby-sdk/commit/f06ca775475f94ce83034ee4af8cd35470bcf0b8))

## 0.1.0-alpha.124 (2025-02-09)

Full Changelog: [v0.1.0-alpha.123...v0.1.0-alpha.124](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.123...v0.1.0-alpha.124)

### Chores

* **internal:** version bump ([#248](https://github.com/OneBusAway/ruby-sdk/issues/248)) ([12f09e7](https://github.com/OneBusAway/ruby-sdk/commit/12f09e7e90acccc1cb64b0d79eb4fc2c138e252e))

## 0.1.0-alpha.123 (2025-02-09)

Full Changelog: [v0.1.0-alpha.122...v0.1.0-alpha.123](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.122...v0.1.0-alpha.123)

### Chores

* **internal:** version bump ([#246](https://github.com/OneBusAway/ruby-sdk/issues/246)) ([fb9ec24](https://github.com/OneBusAway/ruby-sdk/commit/fb9ec248fccd34eb30e301b7d55cffae7a3cca5e))

## 0.1.0-alpha.122 (2025-02-09)

Full Changelog: [v0.1.0-alpha.121...v0.1.0-alpha.122](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.121...v0.1.0-alpha.122)

### Chores

* **internal:** version bump ([#244](https://github.com/OneBusAway/ruby-sdk/issues/244)) ([6b780f8](https://github.com/OneBusAway/ruby-sdk/commit/6b780f8cd5404992b69f306232b838713f731933))

## 0.1.0-alpha.121 (2025-02-09)

Full Changelog: [v0.1.0-alpha.120...v0.1.0-alpha.121](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.120...v0.1.0-alpha.121)

### Chores

* **internal:** version bump ([#242](https://github.com/OneBusAway/ruby-sdk/issues/242)) ([dcc1498](https://github.com/OneBusAway/ruby-sdk/commit/dcc1498d5780e86e12034158a7df47effb47f82d))

## 0.1.0-alpha.120 (2025-02-09)

Full Changelog: [v0.1.0-alpha.119...v0.1.0-alpha.120](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.119...v0.1.0-alpha.120)

### Chores

* **internal:** version bump ([#240](https://github.com/OneBusAway/ruby-sdk/issues/240)) ([fc55cdb](https://github.com/OneBusAway/ruby-sdk/commit/fc55cdb0dc629f39509d7374bcc9f89fcc296c85))

## 0.1.0-alpha.119 (2025-02-09)

Full Changelog: [v0.1.0-alpha.118...v0.1.0-alpha.119](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.118...v0.1.0-alpha.119)

### Chores

* **internal:** version bump ([#238](https://github.com/OneBusAway/ruby-sdk/issues/238)) ([4d152bc](https://github.com/OneBusAway/ruby-sdk/commit/4d152bc2509e3a176191e30cb6822478f45725c9))

## 0.1.0-alpha.118 (2025-02-09)

Full Changelog: [v0.1.0-alpha.117...v0.1.0-alpha.118](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.117...v0.1.0-alpha.118)

### Chores

* **internal:** version bump ([#236](https://github.com/OneBusAway/ruby-sdk/issues/236)) ([f0c936e](https://github.com/OneBusAway/ruby-sdk/commit/f0c936e970c7bc1e2fbebd190541d8bf505a8112))

## 0.1.0-alpha.117 (2025-02-09)

Full Changelog: [v0.1.0-alpha.116...v0.1.0-alpha.117](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.116...v0.1.0-alpha.117)

### Chores

* **internal:** version bump ([#234](https://github.com/OneBusAway/ruby-sdk/issues/234)) ([62d7de6](https://github.com/OneBusAway/ruby-sdk/commit/62d7de67497bd4faeca73485b0acaea37990bc8c))

## 0.1.0-alpha.116 (2025-02-09)

Full Changelog: [v0.1.0-alpha.115...v0.1.0-alpha.116](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.115...v0.1.0-alpha.116)

### Chores

* **internal:** version bump ([#232](https://github.com/OneBusAway/ruby-sdk/issues/232)) ([ac535d9](https://github.com/OneBusAway/ruby-sdk/commit/ac535d9921401222f1ebccffc0bb3048b0f61ca8))

## 0.1.0-alpha.115 (2025-02-09)

Full Changelog: [v0.1.0-alpha.114...v0.1.0-alpha.115](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.114...v0.1.0-alpha.115)

### Chores

* **internal:** version bump ([#230](https://github.com/OneBusAway/ruby-sdk/issues/230)) ([306523d](https://github.com/OneBusAway/ruby-sdk/commit/306523d1649a42fecda5421f9678dfe44e5b5e93))

## 0.1.0-alpha.114 (2025-02-09)

Full Changelog: [v0.1.0-alpha.113...v0.1.0-alpha.114](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.113...v0.1.0-alpha.114)

### Chores

* **internal:** version bump ([#228](https://github.com/OneBusAway/ruby-sdk/issues/228)) ([3d196a5](https://github.com/OneBusAway/ruby-sdk/commit/3d196a50e6ad0674994d6180756f064ad66120bd))

## 0.1.0-alpha.113 (2025-02-09)

Full Changelog: [v0.1.0-alpha.112...v0.1.0-alpha.113](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.112...v0.1.0-alpha.113)

### Chores

* **internal:** version bump ([#226](https://github.com/OneBusAway/ruby-sdk/issues/226)) ([378f0e9](https://github.com/OneBusAway/ruby-sdk/commit/378f0e9a7eee3860995a173edb7d420fe1701bea))

## 0.1.0-alpha.112 (2025-02-09)

Full Changelog: [v0.1.0-alpha.111...v0.1.0-alpha.112](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.111...v0.1.0-alpha.112)

### Chores

* **internal:** version bump ([#224](https://github.com/OneBusAway/ruby-sdk/issues/224)) ([476104a](https://github.com/OneBusAway/ruby-sdk/commit/476104a791fc0f1440fe636b03a0bcd0bf6bc6f5))

## 0.1.0-alpha.111 (2025-02-09)

Full Changelog: [v0.1.0-alpha.110...v0.1.0-alpha.111](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.110...v0.1.0-alpha.111)

### Chores

* **internal:** version bump ([#222](https://github.com/OneBusAway/ruby-sdk/issues/222)) ([dd6becd](https://github.com/OneBusAway/ruby-sdk/commit/dd6becd9f830c039dbd07fcdfaa61f0702f55630))

## 0.1.0-alpha.110 (2025-02-09)

Full Changelog: [v0.1.0-alpha.109...v0.1.0-alpha.110](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.109...v0.1.0-alpha.110)

### Chores

* **internal:** version bump ([#220](https://github.com/OneBusAway/ruby-sdk/issues/220)) ([50a9a4a](https://github.com/OneBusAway/ruby-sdk/commit/50a9a4a4fb7932bb7608366e22766a121d5e21c8))

## 0.1.0-alpha.109 (2025-02-09)

Full Changelog: [v0.1.0-alpha.108...v0.1.0-alpha.109](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.108...v0.1.0-alpha.109)

### Chores

* **internal:** version bump ([#218](https://github.com/OneBusAway/ruby-sdk/issues/218)) ([30fab03](https://github.com/OneBusAway/ruby-sdk/commit/30fab0354df53ccb219dc3a5b43596125b681d07))

## 0.1.0-alpha.108 (2025-02-09)

Full Changelog: [v0.1.0-alpha.107...v0.1.0-alpha.108](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.107...v0.1.0-alpha.108)

### Chores

* **internal:** version bump ([#216](https://github.com/OneBusAway/ruby-sdk/issues/216)) ([26de321](https://github.com/OneBusAway/ruby-sdk/commit/26de32143bcf769e4db625bf756f7d70911f3d07))

## 0.1.0-alpha.107 (2025-02-09)

Full Changelog: [v0.1.0-alpha.106...v0.1.0-alpha.107](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.106...v0.1.0-alpha.107)

### Chores

* **internal:** version bump ([#214](https://github.com/OneBusAway/ruby-sdk/issues/214)) ([04af1d4](https://github.com/OneBusAway/ruby-sdk/commit/04af1d4d15e67ecfa2d6d3241b74ec784430f3f8))

## 0.1.0-alpha.106 (2025-02-09)

Full Changelog: [v0.1.0-alpha.105...v0.1.0-alpha.106](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.105...v0.1.0-alpha.106)

### Chores

* **internal:** version bump ([#212](https://github.com/OneBusAway/ruby-sdk/issues/212)) ([f3a06be](https://github.com/OneBusAway/ruby-sdk/commit/f3a06becb4784424b0c388e6afcaf2bad2cb6510))

## 0.1.0-alpha.105 (2025-02-09)

Full Changelog: [v0.1.0-alpha.104...v0.1.0-alpha.105](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.104...v0.1.0-alpha.105)

### Chores

* **internal:** version bump ([#210](https://github.com/OneBusAway/ruby-sdk/issues/210)) ([931de48](https://github.com/OneBusAway/ruby-sdk/commit/931de48c1098b4dbc7339bd7ac0c544dd991dcf0))

## 0.1.0-alpha.104 (2025-02-09)

Full Changelog: [v0.1.0-alpha.103...v0.1.0-alpha.104](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.103...v0.1.0-alpha.104)

### Chores

* **internal:** version bump ([#208](https://github.com/OneBusAway/ruby-sdk/issues/208)) ([07948d6](https://github.com/OneBusAway/ruby-sdk/commit/07948d6e0f93e37162c020a0b34610deec6637c5))

## 0.1.0-alpha.103 (2025-02-09)

Full Changelog: [v0.1.0-alpha.102...v0.1.0-alpha.103](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.102...v0.1.0-alpha.103)

### Chores

* **internal:** version bump ([#206](https://github.com/OneBusAway/ruby-sdk/issues/206)) ([fc33afc](https://github.com/OneBusAway/ruby-sdk/commit/fc33afcfbe94f15cb2587e8fa109f4c6cc99da42))

## 0.1.0-alpha.102 (2025-02-09)

Full Changelog: [v0.1.0-alpha.101...v0.1.0-alpha.102](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.101...v0.1.0-alpha.102)

### Chores

* **internal:** version bump ([#204](https://github.com/OneBusAway/ruby-sdk/issues/204)) ([f812f67](https://github.com/OneBusAway/ruby-sdk/commit/f812f6772c7deda4f09de74c7ca9c7e8fa8a4eed))

## 0.1.0-alpha.101 (2025-02-09)

Full Changelog: [v0.1.0-alpha.100...v0.1.0-alpha.101](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.100...v0.1.0-alpha.101)

### Chores

* **internal:** version bump ([#202](https://github.com/OneBusAway/ruby-sdk/issues/202)) ([6801595](https://github.com/OneBusAway/ruby-sdk/commit/68015959db479838254ed1b1aa2cce370aa2a10b))

## 0.1.0-alpha.100 (2025-02-09)

Full Changelog: [v0.1.0-alpha.99...v0.1.0-alpha.100](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.99...v0.1.0-alpha.100)

### Chores

* **internal:** version bump ([#200](https://github.com/OneBusAway/ruby-sdk/issues/200)) ([9f9776e](https://github.com/OneBusAway/ruby-sdk/commit/9f9776e44fb8c8ef804098c4e3eb79e86bd5f924))

## 0.1.0-alpha.99 (2025-02-09)

Full Changelog: [v0.1.0-alpha.98...v0.1.0-alpha.99](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.98...v0.1.0-alpha.99)

### Chores

* **internal:** version bump ([#198](https://github.com/OneBusAway/ruby-sdk/issues/198)) ([5575862](https://github.com/OneBusAway/ruby-sdk/commit/5575862c7e951302c42d38fcf57eb3c8013ea265))

## 0.1.0-alpha.98 (2025-02-09)

Full Changelog: [v0.1.0-alpha.97...v0.1.0-alpha.98](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.97...v0.1.0-alpha.98)

### Chores

* **internal:** version bump ([#196](https://github.com/OneBusAway/ruby-sdk/issues/196)) ([8bd0280](https://github.com/OneBusAway/ruby-sdk/commit/8bd0280b57d1d875490aaf62efd30b373bb81091))

## 0.1.0-alpha.97 (2025-02-09)

Full Changelog: [v0.1.0-alpha.96...v0.1.0-alpha.97](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.96...v0.1.0-alpha.97)

### Chores

* **internal:** version bump ([#194](https://github.com/OneBusAway/ruby-sdk/issues/194)) ([16a344e](https://github.com/OneBusAway/ruby-sdk/commit/16a344e699bd4d584dd15e178988ca06bbffd13e))

## 0.1.0-alpha.96 (2025-02-09)

Full Changelog: [v0.1.0-alpha.95...v0.1.0-alpha.96](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.95...v0.1.0-alpha.96)

### Chores

* **internal:** version bump ([#192](https://github.com/OneBusAway/ruby-sdk/issues/192)) ([5c8a9b6](https://github.com/OneBusAway/ruby-sdk/commit/5c8a9b66b43b645b82687834ed27e0ad4a5e1eab))

## 0.1.0-alpha.95 (2025-02-09)

Full Changelog: [v0.1.0-alpha.94...v0.1.0-alpha.95](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.94...v0.1.0-alpha.95)

### Chores

* **internal:** version bump ([#190](https://github.com/OneBusAway/ruby-sdk/issues/190)) ([9f19598](https://github.com/OneBusAway/ruby-sdk/commit/9f19598023104029d8cf569331cdd9a30ada3c36))

## 0.1.0-alpha.94 (2025-02-09)

Full Changelog: [v0.1.0-alpha.93...v0.1.0-alpha.94](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.93...v0.1.0-alpha.94)

### Chores

* **internal:** version bump ([#188](https://github.com/OneBusAway/ruby-sdk/issues/188)) ([6a7827a](https://github.com/OneBusAway/ruby-sdk/commit/6a7827a39f7aea67569d97bbd34a00ded0d16fb0))

## 0.1.0-alpha.93 (2025-02-09)

Full Changelog: [v0.1.0-alpha.92...v0.1.0-alpha.93](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.92...v0.1.0-alpha.93)

### Chores

* **internal:** version bump ([#186](https://github.com/OneBusAway/ruby-sdk/issues/186)) ([d53be5a](https://github.com/OneBusAway/ruby-sdk/commit/d53be5ae10ab1efe8fb8b49eb490e74aa0177c86))

## 0.1.0-alpha.92 (2025-02-09)

Full Changelog: [v0.1.0-alpha.91...v0.1.0-alpha.92](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.91...v0.1.0-alpha.92)

### Chores

* **internal:** version bump ([#184](https://github.com/OneBusAway/ruby-sdk/issues/184)) ([aa59c59](https://github.com/OneBusAway/ruby-sdk/commit/aa59c599a8c60a3b5296833ad19e7b53a4be0a0c))

## 0.1.0-alpha.91 (2025-02-09)

Full Changelog: [v0.1.0-alpha.90...v0.1.0-alpha.91](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.90...v0.1.0-alpha.91)

### Chores

* **internal:** version bump ([#182](https://github.com/OneBusAway/ruby-sdk/issues/182)) ([ea60954](https://github.com/OneBusAway/ruby-sdk/commit/ea60954a20be12db7665795d767b76946b06bd9e))

## 0.1.0-alpha.90 (2025-02-09)

Full Changelog: [v0.1.0-alpha.89...v0.1.0-alpha.90](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.89...v0.1.0-alpha.90)

### Chores

* **internal:** version bump ([#180](https://github.com/OneBusAway/ruby-sdk/issues/180)) ([3d8e3ac](https://github.com/OneBusAway/ruby-sdk/commit/3d8e3ac3c6e94c1c636c434a1b32bf2455869a85))

## 0.1.0-alpha.89 (2025-02-09)

Full Changelog: [v0.1.0-alpha.88...v0.1.0-alpha.89](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.88...v0.1.0-alpha.89)

### Chores

* **internal:** version bump ([#178](https://github.com/OneBusAway/ruby-sdk/issues/178)) ([659485c](https://github.com/OneBusAway/ruby-sdk/commit/659485c63b2a56cbf73dda5c39ecf19c4a72406c))

## 0.1.0-alpha.88 (2025-02-09)

Full Changelog: [v0.1.0-alpha.87...v0.1.0-alpha.88](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.87...v0.1.0-alpha.88)

### Chores

* **internal:** version bump ([#176](https://github.com/OneBusAway/ruby-sdk/issues/176)) ([b3bdf18](https://github.com/OneBusAway/ruby-sdk/commit/b3bdf1825603c4d9cc915ec3ffa39c4ec8c51f97))

## 0.1.0-alpha.87 (2025-02-09)

Full Changelog: [v0.1.0-alpha.86...v0.1.0-alpha.87](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.86...v0.1.0-alpha.87)

### Chores

* **internal:** version bump ([#174](https://github.com/OneBusAway/ruby-sdk/issues/174)) ([6f7ed57](https://github.com/OneBusAway/ruby-sdk/commit/6f7ed578f01bcac24410075298cc9980787cd257))

## 0.1.0-alpha.86 (2025-02-09)

Full Changelog: [v0.1.0-alpha.85...v0.1.0-alpha.86](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.85...v0.1.0-alpha.86)

### Chores

* **internal:** version bump ([#172](https://github.com/OneBusAway/ruby-sdk/issues/172)) ([26d9887](https://github.com/OneBusAway/ruby-sdk/commit/26d9887ac6358d90f21307b10208c7507b58d4b6))

## 0.1.0-alpha.85 (2025-02-09)

Full Changelog: [v0.1.0-alpha.84...v0.1.0-alpha.85](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.84...v0.1.0-alpha.85)

### Chores

* **internal:** version bump ([#170](https://github.com/OneBusAway/ruby-sdk/issues/170)) ([ae4af8f](https://github.com/OneBusAway/ruby-sdk/commit/ae4af8f16c36f80b4c0facfb0be653df87dc6321))

## 0.1.0-alpha.84 (2025-02-09)

Full Changelog: [v0.1.0-alpha.83...v0.1.0-alpha.84](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.83...v0.1.0-alpha.84)

### Chores

* **internal:** version bump ([#168](https://github.com/OneBusAway/ruby-sdk/issues/168)) ([9ded519](https://github.com/OneBusAway/ruby-sdk/commit/9ded5198aa14983f8f00ef5bafce0a8fa8ec7b5a))

## 0.1.0-alpha.83 (2025-02-09)

Full Changelog: [v0.1.0-alpha.82...v0.1.0-alpha.83](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.82...v0.1.0-alpha.83)

### Chores

* **internal:** version bump ([#166](https://github.com/OneBusAway/ruby-sdk/issues/166)) ([25710ef](https://github.com/OneBusAway/ruby-sdk/commit/25710ef3b5b36c7bb802fb91a36cbc1916b45830))

## 0.1.0-alpha.82 (2025-02-09)

Full Changelog: [v0.1.0-alpha.81...v0.1.0-alpha.82](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.81...v0.1.0-alpha.82)

### Chores

* **internal:** version bump ([#164](https://github.com/OneBusAway/ruby-sdk/issues/164)) ([fe8606a](https://github.com/OneBusAway/ruby-sdk/commit/fe8606a21b232aa7d69e2b22869d50f05f3b7f81))

## 0.1.0-alpha.81 (2025-02-09)

Full Changelog: [v0.1.0-alpha.80...v0.1.0-alpha.81](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.80...v0.1.0-alpha.81)

### Chores

* **internal:** version bump ([#162](https://github.com/OneBusAway/ruby-sdk/issues/162)) ([d6e946c](https://github.com/OneBusAway/ruby-sdk/commit/d6e946c1e61bd53e7e1622e406e0b31116cb055e))

## 0.1.0-alpha.80 (2025-02-09)

Full Changelog: [v0.1.0-alpha.79...v0.1.0-alpha.80](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.79...v0.1.0-alpha.80)

### Chores

* **internal:** version bump ([#160](https://github.com/OneBusAway/ruby-sdk/issues/160)) ([5d8d548](https://github.com/OneBusAway/ruby-sdk/commit/5d8d548f7edc279931021e37f8fbc23ea15323c8))

## 0.1.0-alpha.79 (2025-02-09)

Full Changelog: [v0.1.0-alpha.78...v0.1.0-alpha.79](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.78...v0.1.0-alpha.79)

### Chores

* **internal:** version bump ([#158](https://github.com/OneBusAway/ruby-sdk/issues/158)) ([dc48d9c](https://github.com/OneBusAway/ruby-sdk/commit/dc48d9c54de55f3d0e300048449cf2c9231f7cf8))

## 0.1.0-alpha.78 (2025-02-09)

Full Changelog: [v0.1.0-alpha.77...v0.1.0-alpha.78](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.77...v0.1.0-alpha.78)

### Chores

* **internal:** version bump ([#156](https://github.com/OneBusAway/ruby-sdk/issues/156)) ([b86ecb9](https://github.com/OneBusAway/ruby-sdk/commit/b86ecb90d7b2cfafd42ee4f745f0b1d01bdb21e7))

## 0.1.0-alpha.77 (2025-02-09)

Full Changelog: [v0.1.0-alpha.76...v0.1.0-alpha.77](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.76...v0.1.0-alpha.77)

### Chores

* **internal:** version bump ([#154](https://github.com/OneBusAway/ruby-sdk/issues/154)) ([cac83d9](https://github.com/OneBusAway/ruby-sdk/commit/cac83d968674da58367b09950a25bc210ffd0f23))

## 0.1.0-alpha.76 (2025-02-09)

Full Changelog: [v0.1.0-alpha.75...v0.1.0-alpha.76](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.75...v0.1.0-alpha.76)

### Chores

* **internal:** version bump ([#152](https://github.com/OneBusAway/ruby-sdk/issues/152)) ([722af8b](https://github.com/OneBusAway/ruby-sdk/commit/722af8b3d1ffcccb22816ab21f0971acb6bbea8c))

## 0.1.0-alpha.75 (2025-02-09)

Full Changelog: [v0.1.0-alpha.74...v0.1.0-alpha.75](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.74...v0.1.0-alpha.75)

### Chores

* **internal:** version bump ([#150](https://github.com/OneBusAway/ruby-sdk/issues/150)) ([edff951](https://github.com/OneBusAway/ruby-sdk/commit/edff951c99073f83fefd93ab76093f133bb478f7))

## 0.1.0-alpha.74 (2025-02-09)

Full Changelog: [v0.1.0-alpha.73...v0.1.0-alpha.74](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.73...v0.1.0-alpha.74)

### Chores

* **internal:** version bump ([#148](https://github.com/OneBusAway/ruby-sdk/issues/148)) ([3753232](https://github.com/OneBusAway/ruby-sdk/commit/3753232cb84475b32eab045344690ef29651d653))

## 0.1.0-alpha.73 (2025-02-09)

Full Changelog: [v0.1.0-alpha.72...v0.1.0-alpha.73](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.72...v0.1.0-alpha.73)

### Chores

* **internal:** version bump ([#146](https://github.com/OneBusAway/ruby-sdk/issues/146)) ([b2f6011](https://github.com/OneBusAway/ruby-sdk/commit/b2f60112d426f292875c5ce28a9b3cb0e1828814))

## 0.1.0-alpha.72 (2025-02-09)

Full Changelog: [v0.1.0-alpha.71...v0.1.0-alpha.72](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.71...v0.1.0-alpha.72)

### Chores

* **internal:** version bump ([#144](https://github.com/OneBusAway/ruby-sdk/issues/144)) ([86f17f8](https://github.com/OneBusAway/ruby-sdk/commit/86f17f8ea46c31c876b6e67717bb812b0eb04ee5))

## 0.1.0-alpha.71 (2025-02-09)

Full Changelog: [v0.1.0-alpha.70...v0.1.0-alpha.71](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.70...v0.1.0-alpha.71)

### Chores

* **internal:** version bump ([#142](https://github.com/OneBusAway/ruby-sdk/issues/142)) ([9b2c92a](https://github.com/OneBusAway/ruby-sdk/commit/9b2c92af68c3d93d5a60daccb0dd35e62dc3fa2d))

## 0.1.0-alpha.70 (2025-02-09)

Full Changelog: [v0.1.0-alpha.69...v0.1.0-alpha.70](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.69...v0.1.0-alpha.70)

### Chores

* **internal:** version bump ([#140](https://github.com/OneBusAway/ruby-sdk/issues/140)) ([6f25e7a](https://github.com/OneBusAway/ruby-sdk/commit/6f25e7a89890a4f8476517ab95d5d5e972e3addf))

## 0.1.0-alpha.69 (2025-02-09)

Full Changelog: [v0.1.0-alpha.68...v0.1.0-alpha.69](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.68...v0.1.0-alpha.69)

### Chores

* **internal:** version bump ([#138](https://github.com/OneBusAway/ruby-sdk/issues/138)) ([e1a6719](https://github.com/OneBusAway/ruby-sdk/commit/e1a67196bbf8caae6702da8bd0e92eaa778c6d5c))

## 0.1.0-alpha.68 (2025-02-08)

Full Changelog: [v0.1.0-alpha.67...v0.1.0-alpha.68](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.67...v0.1.0-alpha.68)

### Chores

* **internal:** version bump ([#136](https://github.com/OneBusAway/ruby-sdk/issues/136)) ([000e2f6](https://github.com/OneBusAway/ruby-sdk/commit/000e2f624291b9a15fe90fab0a507ee440ddeab6))

## 0.1.0-alpha.67 (2025-02-08)

Full Changelog: [v0.1.0-alpha.66...v0.1.0-alpha.67](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.66...v0.1.0-alpha.67)

### Chores

* **internal:** version bump ([#134](https://github.com/OneBusAway/ruby-sdk/issues/134)) ([835d35c](https://github.com/OneBusAway/ruby-sdk/commit/835d35ce733fdd1bcc7741f53b6e9c976905de06))

## 0.1.0-alpha.66 (2025-02-08)

Full Changelog: [v0.1.0-alpha.65...v0.1.0-alpha.66](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.65...v0.1.0-alpha.66)

### Chores

* **internal:** version bump ([#132](https://github.com/OneBusAway/ruby-sdk/issues/132)) ([0cd2df8](https://github.com/OneBusAway/ruby-sdk/commit/0cd2df8fa8c31dd5324f377a8ca980b4f963d701))

## 0.1.0-alpha.65 (2025-02-08)

Full Changelog: [v0.1.0-alpha.64...v0.1.0-alpha.65](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.64...v0.1.0-alpha.65)

### Chores

* **internal:** version bump ([#130](https://github.com/OneBusAway/ruby-sdk/issues/130)) ([aab82bf](https://github.com/OneBusAway/ruby-sdk/commit/aab82bf378685191fcb73d0ee4e3ec2d52d05f91))

## 0.1.0-alpha.64 (2025-02-08)

Full Changelog: [v0.1.0-alpha.63...v0.1.0-alpha.64](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.63...v0.1.0-alpha.64)

### Chores

* **internal:** version bump ([#128](https://github.com/OneBusAway/ruby-sdk/issues/128)) ([e3bf7e7](https://github.com/OneBusAway/ruby-sdk/commit/e3bf7e7926aadeabca8b1f5c4630b5eae6ca7bf3))

## 0.1.0-alpha.63 (2025-02-08)

Full Changelog: [v0.1.0-alpha.62...v0.1.0-alpha.63](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.62...v0.1.0-alpha.63)

### Chores

* **internal:** version bump ([#126](https://github.com/OneBusAway/ruby-sdk/issues/126)) ([81aa91b](https://github.com/OneBusAway/ruby-sdk/commit/81aa91b204242759f1d94177f39b71e0d0a7e6a8))

## 0.1.0-alpha.62 (2025-02-08)

Full Changelog: [v0.1.0-alpha.61...v0.1.0-alpha.62](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.61...v0.1.0-alpha.62)

### Chores

* **internal:** version bump ([#124](https://github.com/OneBusAway/ruby-sdk/issues/124)) ([c3e16fb](https://github.com/OneBusAway/ruby-sdk/commit/c3e16fb4f339a58b91d53a987a7858df03d2baad))

## 0.1.0-alpha.61 (2025-02-08)

Full Changelog: [v0.1.0-alpha.60...v0.1.0-alpha.61](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.60...v0.1.0-alpha.61)

### Chores

* **internal:** version bump ([#122](https://github.com/OneBusAway/ruby-sdk/issues/122)) ([d608b7a](https://github.com/OneBusAway/ruby-sdk/commit/d608b7ade684a7832c7f10cb4d8e52c960c532ab))

## 0.1.0-alpha.60 (2025-02-08)

Full Changelog: [v0.1.0-alpha.59...v0.1.0-alpha.60](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.59...v0.1.0-alpha.60)

### Chores

* **internal:** version bump ([#120](https://github.com/OneBusAway/ruby-sdk/issues/120)) ([6541b0c](https://github.com/OneBusAway/ruby-sdk/commit/6541b0c90a3c2a1d65c40dd68ed4a77787b273bb))

## 0.1.0-alpha.59 (2025-02-08)

Full Changelog: [v0.1.0-alpha.58...v0.1.0-alpha.59](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.58...v0.1.0-alpha.59)

### Chores

* **internal:** version bump ([#118](https://github.com/OneBusAway/ruby-sdk/issues/118)) ([6da2ea7](https://github.com/OneBusAway/ruby-sdk/commit/6da2ea79852071d0169be2f752775879ff14da5c))

## 0.1.0-alpha.58 (2025-02-08)

Full Changelog: [v0.1.0-alpha.57...v0.1.0-alpha.58](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.57...v0.1.0-alpha.58)

### Chores

* **internal:** version bump ([#116](https://github.com/OneBusAway/ruby-sdk/issues/116)) ([ed08303](https://github.com/OneBusAway/ruby-sdk/commit/ed08303493eb2f7c8690f415c8e1c0cc6a0a0c88))

## 0.1.0-alpha.57 (2025-02-08)

Full Changelog: [v0.1.0-alpha.56...v0.1.0-alpha.57](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.56...v0.1.0-alpha.57)

### Chores

* **internal:** version bump ([#114](https://github.com/OneBusAway/ruby-sdk/issues/114)) ([ace5904](https://github.com/OneBusAway/ruby-sdk/commit/ace59047ee7cef882fe53e09b6da7e9f11575051))

## 0.1.0-alpha.56 (2025-02-08)

Full Changelog: [v0.1.0-alpha.55...v0.1.0-alpha.56](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.55...v0.1.0-alpha.56)

### Chores

* **internal:** version bump ([#112](https://github.com/OneBusAway/ruby-sdk/issues/112)) ([3fc8983](https://github.com/OneBusAway/ruby-sdk/commit/3fc898380d1d6abe39189a00e5de06633847bbd1))

## 0.1.0-alpha.55 (2025-02-08)

Full Changelog: [v0.1.0-alpha.54...v0.1.0-alpha.55](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.54...v0.1.0-alpha.55)

### Chores

* **internal:** version bump ([#110](https://github.com/OneBusAway/ruby-sdk/issues/110)) ([a4e0ec9](https://github.com/OneBusAway/ruby-sdk/commit/a4e0ec956e31ae6b87bcb52adeeaf7e8a1656341))

## 0.1.0-alpha.54 (2025-02-08)

Full Changelog: [v0.1.0-alpha.53...v0.1.0-alpha.54](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.53...v0.1.0-alpha.54)

### Chores

* **internal:** version bump ([#108](https://github.com/OneBusAway/ruby-sdk/issues/108)) ([8d30405](https://github.com/OneBusAway/ruby-sdk/commit/8d304051d47c58b7f923031c51f74ce11491c577))

## 0.1.0-alpha.53 (2025-02-08)

Full Changelog: [v0.1.0-alpha.52...v0.1.0-alpha.53](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.52...v0.1.0-alpha.53)

### Chores

* **internal:** version bump ([#106](https://github.com/OneBusAway/ruby-sdk/issues/106)) ([c43899c](https://github.com/OneBusAway/ruby-sdk/commit/c43899c5f03c3e39f21d7840901e3e2bc7e067c7))

## 0.1.0-alpha.52 (2025-02-08)

Full Changelog: [v0.1.0-alpha.51...v0.1.0-alpha.52](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.51...v0.1.0-alpha.52)

### Chores

* **internal:** version bump ([#104](https://github.com/OneBusAway/ruby-sdk/issues/104)) ([3acd026](https://github.com/OneBusAway/ruby-sdk/commit/3acd026c5e14f093db03a2d12bec83189fa9b401))

## 0.1.0-alpha.51 (2025-02-08)

Full Changelog: [v0.1.0-alpha.50...v0.1.0-alpha.51](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.50...v0.1.0-alpha.51)

### Chores

* **internal:** version bump ([#102](https://github.com/OneBusAway/ruby-sdk/issues/102)) ([a9c2596](https://github.com/OneBusAway/ruby-sdk/commit/a9c2596a7021b3ec633a050a88a6bfcc45edceb6))

## 0.1.0-alpha.50 (2025-02-08)

Full Changelog: [v0.1.0-alpha.49...v0.1.0-alpha.50](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.49...v0.1.0-alpha.50)

### Chores

* **internal:** version bump ([#100](https://github.com/OneBusAway/ruby-sdk/issues/100)) ([53933b7](https://github.com/OneBusAway/ruby-sdk/commit/53933b7fa2deecb695d44afebdd61ac12d681f2d))

## 0.1.0-alpha.49 (2025-02-08)

Full Changelog: [v0.1.0-alpha.48...v0.1.0-alpha.49](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.48...v0.1.0-alpha.49)

### Chores

* **internal:** version bump ([#98](https://github.com/OneBusAway/ruby-sdk/issues/98)) ([ab2b5c8](https://github.com/OneBusAway/ruby-sdk/commit/ab2b5c8009edfd25ae5f65e6f6b17f44aee5823b))

## 0.1.0-alpha.48 (2025-02-08)

Full Changelog: [v0.1.0-alpha.47...v0.1.0-alpha.48](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.47...v0.1.0-alpha.48)

### Chores

* **internal:** version bump ([#96](https://github.com/OneBusAway/ruby-sdk/issues/96)) ([98e723d](https://github.com/OneBusAway/ruby-sdk/commit/98e723dea9f30eb672db61fcbf2006e348b36b7e))

## 0.1.0-alpha.47 (2025-02-08)

Full Changelog: [v0.1.0-alpha.46...v0.1.0-alpha.47](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.46...v0.1.0-alpha.47)

### Chores

* **internal:** version bump ([#94](https://github.com/OneBusAway/ruby-sdk/issues/94)) ([42f0229](https://github.com/OneBusAway/ruby-sdk/commit/42f02298d1bd448f13d77005aa6f1b941e66978e))

## 0.1.0-alpha.46 (2025-02-08)

Full Changelog: [v0.1.0-alpha.45...v0.1.0-alpha.46](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.45...v0.1.0-alpha.46)

### Chores

* **internal:** version bump ([#92](https://github.com/OneBusAway/ruby-sdk/issues/92)) ([5fd2c42](https://github.com/OneBusAway/ruby-sdk/commit/5fd2c42a65e8a14a9507a7dc66049ab96354a706))

## 0.1.0-alpha.45 (2025-02-08)

Full Changelog: [v0.1.0-alpha.44...v0.1.0-alpha.45](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.44...v0.1.0-alpha.45)

### Chores

* **internal:** version bump ([#90](https://github.com/OneBusAway/ruby-sdk/issues/90)) ([5d49092](https://github.com/OneBusAway/ruby-sdk/commit/5d490925a9a52768414624fe0f38c0e127e04c3f))

## 0.1.0-alpha.44 (2025-02-08)

Full Changelog: [v0.1.0-alpha.43...v0.1.0-alpha.44](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.43...v0.1.0-alpha.44)

### Chores

* **internal:** version bump ([#88](https://github.com/OneBusAway/ruby-sdk/issues/88)) ([be61561](https://github.com/OneBusAway/ruby-sdk/commit/be615610b423af20d864a20a64633018c665b08e))

## 0.1.0-alpha.43 (2025-02-08)

Full Changelog: [v0.1.0-alpha.42...v0.1.0-alpha.43](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.42...v0.1.0-alpha.43)

### Chores

* **internal:** version bump ([#86](https://github.com/OneBusAway/ruby-sdk/issues/86)) ([6fec3fe](https://github.com/OneBusAway/ruby-sdk/commit/6fec3fedbc7a64954347b4218b6962cf2057ed9e))

## 0.1.0-alpha.42 (2025-02-08)

Full Changelog: [v0.1.0-alpha.41...v0.1.0-alpha.42](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.41...v0.1.0-alpha.42)

### Chores

* **internal:** version bump ([#84](https://github.com/OneBusAway/ruby-sdk/issues/84)) ([7a15648](https://github.com/OneBusAway/ruby-sdk/commit/7a156486a607d90900397f12f97b2ab4bdae883c))

## 0.1.0-alpha.41 (2025-02-08)

Full Changelog: [v0.1.0-alpha.40...v0.1.0-alpha.41](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.40...v0.1.0-alpha.41)

### Chores

* **internal:** version bump ([#82](https://github.com/OneBusAway/ruby-sdk/issues/82)) ([ef49b8a](https://github.com/OneBusAway/ruby-sdk/commit/ef49b8a5e89333060f9c7a91cf50a043e48b7042))

## 0.1.0-alpha.40 (2025-02-08)

Full Changelog: [v0.1.0-alpha.39...v0.1.0-alpha.40](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.39...v0.1.0-alpha.40)

### Chores

* **internal:** version bump ([#80](https://github.com/OneBusAway/ruby-sdk/issues/80)) ([e34bf52](https://github.com/OneBusAway/ruby-sdk/commit/e34bf528ecf0e5c73ebcb2ae51f81fd4c500244d))

## 0.1.0-alpha.39 (2025-02-08)

Full Changelog: [v0.1.0-alpha.38...v0.1.0-alpha.39](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.38...v0.1.0-alpha.39)

### Chores

* **internal:** version bump ([#78](https://github.com/OneBusAway/ruby-sdk/issues/78)) ([4632fd5](https://github.com/OneBusAway/ruby-sdk/commit/4632fd5e7e4fabf83a265525029e419f108f06bd))

## 0.1.0-alpha.38 (2025-02-08)

Full Changelog: [v0.1.0-alpha.37...v0.1.0-alpha.38](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.37...v0.1.0-alpha.38)

### Chores

* **internal:** version bump ([#76](https://github.com/OneBusAway/ruby-sdk/issues/76)) ([d8c2095](https://github.com/OneBusAway/ruby-sdk/commit/d8c20954c73b0bc2aba08caa358e359de4dd18bc))

## 0.1.0-alpha.37 (2025-02-08)

Full Changelog: [v0.1.0-alpha.36...v0.1.0-alpha.37](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.36...v0.1.0-alpha.37)

### Chores

* **internal:** version bump ([#74](https://github.com/OneBusAway/ruby-sdk/issues/74)) ([4bb44f6](https://github.com/OneBusAway/ruby-sdk/commit/4bb44f660eb48361dc04bee34e5c8fa1c9581cbe))

## 0.1.0-alpha.36 (2025-02-08)

Full Changelog: [v0.1.0-alpha.35...v0.1.0-alpha.36](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.35...v0.1.0-alpha.36)

### Chores

* **internal:** version bump ([#72](https://github.com/OneBusAway/ruby-sdk/issues/72)) ([d387ade](https://github.com/OneBusAway/ruby-sdk/commit/d387adea35ac7c37f6f4aac1b63285c519d6e414))

## 0.1.0-alpha.35 (2025-02-08)

Full Changelog: [v0.1.0-alpha.34...v0.1.0-alpha.35](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.34...v0.1.0-alpha.35)

### Chores

* **internal:** version bump ([#70](https://github.com/OneBusAway/ruby-sdk/issues/70)) ([de21c5c](https://github.com/OneBusAway/ruby-sdk/commit/de21c5c7bc7e227eb6dcc1c8de5deb9139a5112f))

## 0.1.0-alpha.34 (2025-02-08)

Full Changelog: [v0.1.0-alpha.33...v0.1.0-alpha.34](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.33...v0.1.0-alpha.34)

### Chores

* **internal:** version bump ([#68](https://github.com/OneBusAway/ruby-sdk/issues/68)) ([24b9816](https://github.com/OneBusAway/ruby-sdk/commit/24b9816c0a22b0343063f3c191c7405ef4e80825))

## 0.1.0-alpha.33 (2025-02-08)

Full Changelog: [v0.1.0-alpha.32...v0.1.0-alpha.33](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.32...v0.1.0-alpha.33)

### Chores

* **internal:** version bump ([#66](https://github.com/OneBusAway/ruby-sdk/issues/66)) ([dcdda48](https://github.com/OneBusAway/ruby-sdk/commit/dcdda48f063ecc84ffe933e74a678923fe5a505e))

## 0.1.0-alpha.32 (2025-02-08)

Full Changelog: [v0.1.0-alpha.31...v0.1.0-alpha.32](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.31...v0.1.0-alpha.32)

### Chores

* **internal:** version bump ([#64](https://github.com/OneBusAway/ruby-sdk/issues/64)) ([3cf706f](https://github.com/OneBusAway/ruby-sdk/commit/3cf706f2db798be7ea67259159616ecd9b13a919))

## 0.1.0-alpha.31 (2025-02-08)

Full Changelog: [v0.1.0-alpha.30...v0.1.0-alpha.31](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.30...v0.1.0-alpha.31)

### Chores

* **internal:** version bump ([#62](https://github.com/OneBusAway/ruby-sdk/issues/62)) ([d26f01d](https://github.com/OneBusAway/ruby-sdk/commit/d26f01daabb708343f2c6284f58e7fc96cc3f590))

## 0.1.0-alpha.30 (2025-02-08)

Full Changelog: [v0.1.0-alpha.29...v0.1.0-alpha.30](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.29...v0.1.0-alpha.30)

### Chores

* **internal:** version bump ([#60](https://github.com/OneBusAway/ruby-sdk/issues/60)) ([50922e0](https://github.com/OneBusAway/ruby-sdk/commit/50922e0064ce2b07864823d6c54965c9b73f010e))

## 0.1.0-alpha.29 (2025-02-08)

Full Changelog: [v0.1.0-alpha.28...v0.1.0-alpha.29](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.28...v0.1.0-alpha.29)

### Chores

* **internal:** version bump ([#58](https://github.com/OneBusAway/ruby-sdk/issues/58)) ([c599e0b](https://github.com/OneBusAway/ruby-sdk/commit/c599e0b485ce79a856b19ee66a5a5c022400bcd8))

## 0.1.0-alpha.28 (2025-02-08)

Full Changelog: [v0.1.0-alpha.27...v0.1.0-alpha.28](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.27...v0.1.0-alpha.28)

### Chores

* **internal:** version bump ([#56](https://github.com/OneBusAway/ruby-sdk/issues/56)) ([516e96b](https://github.com/OneBusAway/ruby-sdk/commit/516e96bfe2541a6c518488e1108a87b6eeb069b7))

## 0.1.0-alpha.27 (2025-02-08)

Full Changelog: [v0.1.0-alpha.26...v0.1.0-alpha.27](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.26...v0.1.0-alpha.27)

### Chores

* **internal:** version bump ([#54](https://github.com/OneBusAway/ruby-sdk/issues/54)) ([476dee0](https://github.com/OneBusAway/ruby-sdk/commit/476dee0d0b1af6b81b153d12f3919ddfbdfc6cdd))

## 0.1.0-alpha.26 (2025-02-08)

Full Changelog: [v0.1.0-alpha.25...v0.1.0-alpha.26](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.25...v0.1.0-alpha.26)

### Chores

* **internal:** version bump ([#52](https://github.com/OneBusAway/ruby-sdk/issues/52)) ([8527447](https://github.com/OneBusAway/ruby-sdk/commit/85274476bbe272a2bc2d45992e3f6de2675a1759))

## 0.1.0-alpha.25 (2025-02-08)

Full Changelog: [v0.1.0-alpha.24...v0.1.0-alpha.25](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.24...v0.1.0-alpha.25)

### Chores

* **internal:** version bump ([#50](https://github.com/OneBusAway/ruby-sdk/issues/50)) ([8b20f24](https://github.com/OneBusAway/ruby-sdk/commit/8b20f2427abb78a278fb8ec80fe01030aab67d43))

## 0.1.0-alpha.24 (2025-02-08)

Full Changelog: [v0.1.0-alpha.23...v0.1.0-alpha.24](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.23...v0.1.0-alpha.24)

### Chores

* **internal:** version bump ([#48](https://github.com/OneBusAway/ruby-sdk/issues/48)) ([e3e6480](https://github.com/OneBusAway/ruby-sdk/commit/e3e64808b8c30ac8fa8512af9d361e4f8447fad4))

## 0.1.0-alpha.23 (2025-02-08)

Full Changelog: [v0.1.0-alpha.22...v0.1.0-alpha.23](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.22...v0.1.0-alpha.23)

### Chores

* **internal:** version bump ([#46](https://github.com/OneBusAway/ruby-sdk/issues/46)) ([6f7a665](https://github.com/OneBusAway/ruby-sdk/commit/6f7a66511375f0358aa513c3645d401cd8b688f0))

## 0.1.0-alpha.22 (2025-02-08)

Full Changelog: [v0.1.0-alpha.21...v0.1.0-alpha.22](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.21...v0.1.0-alpha.22)

### Chores

* **internal:** version bump ([#44](https://github.com/OneBusAway/ruby-sdk/issues/44)) ([05c404e](https://github.com/OneBusAway/ruby-sdk/commit/05c404ee6ed65e3acbb7206a3382159655dacc38))

## 0.1.0-alpha.21 (2025-02-08)

Full Changelog: [v0.1.0-alpha.20...v0.1.0-alpha.21](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.20...v0.1.0-alpha.21)

### Chores

* **internal:** version bump ([#42](https://github.com/OneBusAway/ruby-sdk/issues/42)) ([28631cc](https://github.com/OneBusAway/ruby-sdk/commit/28631cc6478b635f4122cc48948d7b00579f9f61))

## 0.1.0-alpha.20 (2025-02-08)

Full Changelog: [v0.1.0-alpha.19...v0.1.0-alpha.20](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.19...v0.1.0-alpha.20)

### Chores

* **internal:** version bump ([#40](https://github.com/OneBusAway/ruby-sdk/issues/40)) ([743e74c](https://github.com/OneBusAway/ruby-sdk/commit/743e74c451c58b1ce7f7f606dedf7bcf141ad8b8))

## 0.1.0-alpha.19 (2025-02-08)

Full Changelog: [v0.1.0-alpha.18...v0.1.0-alpha.19](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.18...v0.1.0-alpha.19)

### Chores

* **internal:** version bump ([#38](https://github.com/OneBusAway/ruby-sdk/issues/38)) ([29c0723](https://github.com/OneBusAway/ruby-sdk/commit/29c0723a4d0c0d390e019a6ba5240925da66ff55))

## 0.1.0-alpha.18 (2025-02-08)

Full Changelog: [v0.1.0-alpha.17...v0.1.0-alpha.18](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.17...v0.1.0-alpha.18)

### Chores

* **internal:** version bump ([#36](https://github.com/OneBusAway/ruby-sdk/issues/36)) ([e161770](https://github.com/OneBusAway/ruby-sdk/commit/e1617708d980a4f8aad4dea0d433092f49daffbd))

## 0.1.0-alpha.17 (2025-02-08)

Full Changelog: [v0.1.0-alpha.16...v0.1.0-alpha.17](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.16...v0.1.0-alpha.17)

### Chores

* **internal:** version bump ([#34](https://github.com/OneBusAway/ruby-sdk/issues/34)) ([81abc82](https://github.com/OneBusAway/ruby-sdk/commit/81abc829b80746982c42292457676a2b5e4461e8))

## 0.1.0-alpha.16 (2025-02-08)

Full Changelog: [v0.1.0-alpha.15...v0.1.0-alpha.16](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.15...v0.1.0-alpha.16)

### Chores

* **internal:** version bump ([#32](https://github.com/OneBusAway/ruby-sdk/issues/32)) ([ec95404](https://github.com/OneBusAway/ruby-sdk/commit/ec954047c8184890ab67f4210a685c2a275260c4))

## 0.1.0-alpha.15 (2025-02-08)

Full Changelog: [v0.1.0-alpha.14...v0.1.0-alpha.15](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.14...v0.1.0-alpha.15)

### Chores

* **internal:** version bump ([#30](https://github.com/OneBusAway/ruby-sdk/issues/30)) ([d436fef](https://github.com/OneBusAway/ruby-sdk/commit/d436fef2517ea99855d88622274e04a61ccaf3a1))

## 0.1.0-alpha.14 (2025-02-08)

Full Changelog: [v0.1.0-alpha.13...v0.1.0-alpha.14](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.13...v0.1.0-alpha.14)

### Chores

* **internal:** version bump ([#28](https://github.com/OneBusAway/ruby-sdk/issues/28)) ([67f28a2](https://github.com/OneBusAway/ruby-sdk/commit/67f28a26d5a079d2ef8ab849fc5d778833a52079))

## 0.1.0-alpha.13 (2025-02-08)

Full Changelog: [v0.1.0-alpha.12...v0.1.0-alpha.13](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.12...v0.1.0-alpha.13)

### Chores

* **internal:** version bump ([#26](https://github.com/OneBusAway/ruby-sdk/issues/26)) ([5e140a2](https://github.com/OneBusAway/ruby-sdk/commit/5e140a21141535a339007e88dd85b61a0deba6ed))

## 0.1.0-alpha.12 (2025-02-08)

Full Changelog: [v0.1.0-alpha.11...v0.1.0-alpha.12](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.11...v0.1.0-alpha.12)

### Chores

* **internal:** version bump ([#24](https://github.com/OneBusAway/ruby-sdk/issues/24)) ([3d2415f](https://github.com/OneBusAway/ruby-sdk/commit/3d2415f0533b5a296536bd531629f540df5267a9))

## 0.1.0-alpha.11 (2025-02-08)

Full Changelog: [v0.1.0-alpha.10...v0.1.0-alpha.11](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.10...v0.1.0-alpha.11)

### Chores

* **internal:** version bump ([#22](https://github.com/OneBusAway/ruby-sdk/issues/22)) ([d8d716d](https://github.com/OneBusAway/ruby-sdk/commit/d8d716dd2e4e9c8a889489431ec8eda7d2d5a090))

## 0.1.0-alpha.10 (2025-02-08)

Full Changelog: [v0.1.0-alpha.9...v0.1.0-alpha.10](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.9...v0.1.0-alpha.10)

### Chores

* **internal:** version bump ([#20](https://github.com/OneBusAway/ruby-sdk/issues/20)) ([7460990](https://github.com/OneBusAway/ruby-sdk/commit/746099024a3a49b77a9ecdaecc050da3da7327a8))

## 0.1.0-alpha.9 (2025-02-08)

Full Changelog: [v0.1.0-alpha.8...v0.1.0-alpha.9](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.8...v0.1.0-alpha.9)

### Chores

* **internal:** version bump ([#18](https://github.com/OneBusAway/ruby-sdk/issues/18)) ([e46bd60](https://github.com/OneBusAway/ruby-sdk/commit/e46bd60673c9e22219ae04626f472d0bb0b911f5))

## 0.1.0-alpha.8 (2025-02-08)

Full Changelog: [v0.1.0-alpha.7...v0.1.0-alpha.8](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.7...v0.1.0-alpha.8)

### Chores

* **internal:** version bump ([#16](https://github.com/OneBusAway/ruby-sdk/issues/16)) ([3ad5777](https://github.com/OneBusAway/ruby-sdk/commit/3ad57777bd73002a4c1b3f30e65395e96b9c3468))

## 0.1.0-alpha.7 (2025-02-08)

Full Changelog: [v0.1.0-alpha.6...v0.1.0-alpha.7](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.6...v0.1.0-alpha.7)

### Chores

* **internal:** version bump ([#14](https://github.com/OneBusAway/ruby-sdk/issues/14)) ([6830821](https://github.com/OneBusAway/ruby-sdk/commit/6830821fb92473a0453f776c1ef0865590c4b726))

## 0.1.0-alpha.6 (2025-02-08)

Full Changelog: [v0.1.0-alpha.5...v0.1.0-alpha.6](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.5...v0.1.0-alpha.6)

### Chores

* **internal:** version bump ([#12](https://github.com/OneBusAway/ruby-sdk/issues/12)) ([a8c8c63](https://github.com/OneBusAway/ruby-sdk/commit/a8c8c6349f9b30f9601f664cbc727fb30448e08f))

## 0.1.0-alpha.5 (2025-02-08)

Full Changelog: [v0.1.0-alpha.4...v0.1.0-alpha.5](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.4...v0.1.0-alpha.5)

### Chores

* **internal:** version bump ([#10](https://github.com/OneBusAway/ruby-sdk/issues/10)) ([8b52df6](https://github.com/OneBusAway/ruby-sdk/commit/8b52df683aa14177afdb6cb083c6cc22c1ac168f))

## 0.1.0-alpha.4 (2025-02-08)

Full Changelog: [v0.1.0-alpha.3...v0.1.0-alpha.4](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.3...v0.1.0-alpha.4)

### Chores

* update SDK settings ([#8](https://github.com/OneBusAway/ruby-sdk/issues/8)) ([684cdc2](https://github.com/OneBusAway/ruby-sdk/commit/684cdc2d9e818fdb6d2075ddf6eeb568c3e21739))

## 0.1.0-alpha.3 (2025-02-08)

Full Changelog: [v0.1.0-alpha.2...v0.1.0-alpha.3](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.2...v0.1.0-alpha.3)

### Chores

* update SDK settings ([#6](https://github.com/OneBusAway/ruby-sdk/issues/6)) ([af28802](https://github.com/OneBusAway/ruby-sdk/commit/af28802936abb902bb1e556161a0605ed0ba5778))

## 0.1.0-alpha.2 (2025-02-08)

Full Changelog: [v0.1.0-alpha.1...v0.1.0-alpha.2](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.1...v0.1.0-alpha.2)

### Chores

* update SDK settings ([#4](https://github.com/OneBusAway/ruby-sdk/issues/4)) ([4bc5181](https://github.com/OneBusAway/ruby-sdk/commit/4bc5181e975147239e3fc84d1caa4f7f908811eb))

## 0.1.0-alpha.1 (2025-02-08)

Full Changelog: [v0.0.1-alpha.0...v0.1.0-alpha.1](https://github.com/OneBusAway/ruby-sdk/compare/v0.0.1-alpha.0...v0.1.0-alpha.1)

### Features

* **api:** manual updates ([abc9c0b](https://github.com/OneBusAway/ruby-sdk/commit/abc9c0b66ea0fd32a92910fec72b5fabab99ba37))
* **api:** manual updates ([61057c6](https://github.com/OneBusAway/ruby-sdk/commit/61057c65a7e57ca5437f68da4e1fcc30e7e8b2ed))
* bundle typing manifests with gem release ([1afa8a1](https://github.com/OneBusAway/ruby-sdk/commit/1afa8a194c360da3b37503092f7c8456e03d24e7))


### Chores

* configure new SDK language ([266bd2f](https://github.com/OneBusAway/ruby-sdk/commit/266bd2f4d358742de78435b6ada3dbeeb32ae037))
* do not git ignore `bin/` ([4ced9bf](https://github.com/OneBusAway/ruby-sdk/commit/4ced9bf4d69c5320848225c14d7f3b83f3599802))
* fully qualify `Array` and `Hash` in rbs files to avoid collisions ([06f502d](https://github.com/OneBusAway/ruby-sdk/commit/06f502d2bc257c3216e02f19805c1cd01513b457))
* go live ([#2](https://github.com/OneBusAway/ruby-sdk/issues/2)) ([bc33dfb](https://github.com/OneBusAway/ruby-sdk/commit/bc33dfbfce229c48ccfaaa9b84cd5d0124b306e4))
* **internal:** codegen related update ([ebb7020](https://github.com/OneBusAway/ruby-sdk/commit/ebb7020b858108ef98a6b8f13704cb71b8ab6f83))
