# Changelog

## 1.2.11 (2026-02-07)

Full Changelog: [v1.2.10...v1.2.11](https://github.com/OneBusAway/ruby-sdk/compare/v1.2.10...v1.2.11)

### Bug Fixes

* **client:** loosen json header parsing ([f9c8d4a](https://github.com/OneBusAway/ruby-sdk/commit/f9c8d4a6cd534a2f49e6503a17bfae7f9f68bb4c))

## 1.2.10 (2026-02-04)

Full Changelog: [v1.2.9...v1.2.10](https://github.com/OneBusAway/ruby-sdk/compare/v1.2.9...v1.2.10)

### Chores

* **docs:** remove www prefix ([841bc2a](https://github.com/OneBusAway/ruby-sdk/commit/841bc2a4d51efcbf4c1860ecf0a2a4ae194730a9))

## 1.2.9 (2026-02-03)

Full Changelog: [v1.2.8...v1.2.9](https://github.com/OneBusAway/ruby-sdk/compare/v1.2.8...v1.2.9)

### Bug Fixes

* **client:** always add content-length to post body, even when empty ([2803594](https://github.com/OneBusAway/ruby-sdk/commit/2803594141f295c07c381fdadb67ed2e422fe7c7))

## 1.2.8 (2026-01-17)

Full Changelog: [v1.2.7...v1.2.8](https://github.com/OneBusAway/ruby-sdk/compare/v1.2.7...v1.2.8)

### Chores

* **internal:** update `actions/checkout` version ([b0a6a3c](https://github.com/OneBusAway/ruby-sdk/commit/b0a6a3c0f4dffa7f78b61bfdbc29f2ac2f42ef8d))

## 1.2.7 (2026-01-10)

Full Changelog: [v1.2.6...v1.2.7](https://github.com/OneBusAway/ruby-sdk/compare/v1.2.6...v1.2.7)

### Chores

* move `cgi` into dependencies for ruby 4 ([2e10f48](https://github.com/OneBusAway/ruby-sdk/commit/2e10f483af68afb8e78611cedbefcbf2ebe9dc6a))

## 1.2.6 (2026-01-06)

Full Changelog: [v1.2.5...v1.2.6](https://github.com/OneBusAway/ruby-sdk/compare/v1.2.5...v1.2.6)

### Chores

* **internal:** codegen related update ([f602c6f](https://github.com/OneBusAway/ruby-sdk/commit/f602c6fb44fab9a8c62de9bc6252b79a96245b61))

## 1.2.5 (2025-12-19)

Full Changelog: [v1.2.4...v1.2.5](https://github.com/OneBusAway/ruby-sdk/compare/v1.2.4...v1.2.5)

### Bug Fixes

* issue where json.parse errors when receiving HTTP 204 with nobody ([862df13](https://github.com/OneBusAway/ruby-sdk/commit/862df13cf5d8d75baa25299a1ca160f4e3c436a5))

## 1.2.4 (2025-12-17)

Full Changelog: [v1.2.3...v1.2.4](https://github.com/OneBusAway/ruby-sdk/compare/v1.2.3...v1.2.4)

### Bug Fixes

* calling `break` out of streams should be instantaneous ([649a4ca](https://github.com/OneBusAway/ruby-sdk/commit/649a4ca8c13aa15c28e5e41a9b1ae33cf63562b6))

## 1.2.3 (2025-11-21)

Full Changelog: [v1.2.2...v1.2.3](https://github.com/OneBusAway/ruby-sdk/compare/v1.2.2...v1.2.3)

### Chores

* explicitly require "base64" gem ([9a4b451](https://github.com/OneBusAway/ruby-sdk/commit/9a4b4511aeba5c3b272b4d2f70154c87583c3a5e))

## 1.2.2 (2025-11-05)

Full Changelog: [v1.2.1...v1.2.2](https://github.com/OneBusAway/ruby-sdk/compare/v1.2.1...v1.2.2)

### Bug Fixes

* better thread safety via early initializing SSL store during HTTP client creation ([ca9ceed](https://github.com/OneBusAway/ruby-sdk/commit/ca9ceed410e516f1487afb30f84d80eb897cf66f))

## 1.2.1 (2025-11-04)

Full Changelog: [v1.2.0...v1.2.1](https://github.com/OneBusAway/ruby-sdk/compare/v1.2.0...v1.2.1)

### Chores

* bump dependency version and update sorbet types ([316d259](https://github.com/OneBusAway/ruby-sdk/commit/316d25916d82a7b0c65190ba1b7d25285a766910))

## 1.2.0 (2025-10-24)

Full Changelog: [v1.1.3...v1.2.0](https://github.com/OneBusAway/ruby-sdk/compare/v1.1.3...v1.2.0)

### Features

* handle thread interrupts in the core HTTP client ([53092d4](https://github.com/OneBusAway/ruby-sdk/commit/53092d4d8a2665c63273a4190c192ba3382bacb9))

## 1.1.3 (2025-10-16)

Full Changelog: [v1.1.2...v1.1.3](https://github.com/OneBusAway/ruby-sdk/compare/v1.1.2...v1.1.3)

### Bug Fixes

* absolutely qualified uris should always override the default ([a1e088f](https://github.com/OneBusAway/ruby-sdk/commit/a1e088fd89b1155765ca359d6dc3a2e9ae2fb67e))

## 1.1.2 (2025-10-15)

Full Changelog: [v1.1.1...v1.1.2](https://github.com/OneBusAway/ruby-sdk/compare/v1.1.1...v1.1.2)

### Bug Fixes

* always send `filename=...` for multipart requests where a file is expected ([ae0a463](https://github.com/OneBusAway/ruby-sdk/commit/ae0a4631df4a0ba4ebb386e4bcd228977b8554c3))
* coroutine leaks from connection pool ([5c3a6f1](https://github.com/OneBusAway/ruby-sdk/commit/5c3a6f121a63c3046f39ce62fba651a5e4e57ba8))
* shorten multipart boundary sep to less than RFC specificed max length ([eee0939](https://github.com/OneBusAway/ruby-sdk/commit/eee0939d23255dbd6b3de367bbba02ea0a346425))
* should not reuse buffers for `IO.copy_stream` interop ([29dd5d7](https://github.com/OneBusAway/ruby-sdk/commit/29dd5d7e0bcfbaf3027fca84a6338c37131843e6))


### Performance Improvements

* faster code formatting ([95c9921](https://github.com/OneBusAway/ruby-sdk/commit/95c99210f84f729076f9c6494a98729946bcb7d9))


### Chores

* allow fast-format to use bsd sed as well ([ac285dc](https://github.com/OneBusAway/ruby-sdk/commit/ac285dcaff516a5d8755da3534f83dfa588bcb6d))
* ignore linter error for tests having large collections ([88b7a09](https://github.com/OneBusAway/ruby-sdk/commit/88b7a092d8bab6f77ee3fdc351e0b7d0fe41713a))
* improve example values ([c2ea3c6](https://github.com/OneBusAway/ruby-sdk/commit/c2ea3c65ba37c82b323cffafad37b17b10d04c3b))
* **internal:** codegen related update ([2a3af55](https://github.com/OneBusAway/ruby-sdk/commit/2a3af55696978980ca69da2e42caecf15c72ba2d))

## 1.1.1 (2025-09-20)

Full Changelog: [v1.1.0...v1.1.1](https://github.com/OneBusAway/ruby-sdk/compare/v1.1.0...v1.1.1)

### Chores

* do not install brew dependencies in ./scripts/bootstrap by default ([97dbf93](https://github.com/OneBusAway/ruby-sdk/commit/97dbf93c14d3064070ecb77394ced604dcadd46a))

## 1.1.0 (2025-09-18)

Full Changelog: [v1.0.26...v1.1.0](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.26...v1.1.0)

### Features

* expose response headers for both streams and errors ([f90702c](https://github.com/OneBusAway/ruby-sdk/commit/f90702cb380ac938d665758b110f7d89490db021))

## 1.0.26 (2025-08-25)

Full Changelog: [v1.0.25...v1.0.26](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.25...v1.0.26)

### Chores

* add json schema comment for rubocop.yml ([30b36f9](https://github.com/OneBusAway/ruby-sdk/commit/30b36f9aa3a25a536adb207097f2088f96f6d899))

## 1.0.25 (2025-08-20)

Full Changelog: [v1.0.24...v1.0.25](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.24...v1.0.25)

### Bug Fixes

* bump sorbet version and fix new type errors from the breaking change ([c072aac](https://github.com/OneBusAway/ruby-sdk/commit/c072aac4d761e83878e4cb6a1ef9d66f277d5269))

## 1.0.24 (2025-08-10)

Full Changelog: [v1.0.23...v1.0.24](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.23...v1.0.24)

### Chores

* collect metadata from type DSL ([8c6ebea](https://github.com/OneBusAway/ruby-sdk/commit/8c6ebea6b7370965b7809e6747599dda37628a93))
* **internal:** update comment in script ([008e80f](https://github.com/OneBusAway/ruby-sdk/commit/008e80fd1d7f13cfe7c09f8cca1da9b11072388d))
* update @stainless-api/prism-cli to v5.15.0 ([2849a58](https://github.com/OneBusAway/ruby-sdk/commit/2849a582e1b7446b830f9e882575b9d5ba9e629c))

## 1.0.23 (2025-08-01)

Full Changelog: [v1.0.22...v1.0.23](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.22...v1.0.23)

### Chores

* **internal:** increase visibility of internal helper method ([98f8363](https://github.com/OneBusAway/ruby-sdk/commit/98f8363689bcfcd57d81ad5047da08ae578c8f2d))

## 1.0.22 (2025-07-29)

Full Changelog: [v1.0.21...v1.0.22](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.21...v1.0.22)

### Bug Fixes

* **internal:** ensure sorbet test always runs serially ([0bf462c](https://github.com/OneBusAway/ruby-sdk/commit/0bf462c257533fbb7557ce6bcc22c5ebcc55f7ad))

## 1.0.21 (2025-07-26)

Full Changelog: [v1.0.20...v1.0.21](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.20...v1.0.21)

### Chores

* **internal:** version bump ([a76e6c3](https://github.com/OneBusAway/ruby-sdk/commit/a76e6c371d8d8349344c7b96080be59f41d5b266))
* update contribute.md ([f4ba933](https://github.com/OneBusAway/ruby-sdk/commit/f4ba933ac272c4341532841925e4bc0fd1db363a))

## 1.0.20 (2025-07-14)

Full Changelog: [v1.0.19...v1.0.20](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.19...v1.0.20)

### Chores

* **internal:** version bump ([510caf5](https://github.com/OneBusAway/ruby-sdk/commit/510caf51ae2a3deec36b81490726c150af06e38c))

## 1.0.19 (2025-07-12)

Full Changelog: [v1.0.18...v1.0.19](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.18...v1.0.19)

### Chores

* **internal:** version bump ([522b950](https://github.com/OneBusAway/ruby-sdk/commit/522b95015cc83986c95d1491545de46cb17df136))

## 1.0.18 (2025-07-10)

Full Changelog: [v1.0.17...v1.0.18](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.17...v1.0.18)

### Chores

* **internal:** version bump ([45819e4](https://github.com/OneBusAway/ruby-sdk/commit/45819e48cc72e116619d9ae91f1011e3bacf29bf))

## 1.0.17 (2025-07-09)

Full Changelog: [v1.0.16...v1.0.17](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.16...v1.0.17)

### Chores

* **internal:** version bump ([6285bf1](https://github.com/OneBusAway/ruby-sdk/commit/6285bf161040ad3c3047512c3ab0d808e9292b25))

## 1.0.16 (2025-07-09)

Full Changelog: [v1.0.15...v1.0.16](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.15...v1.0.16)

### Chores

* **internal:** version bump ([93e8ce7](https://github.com/OneBusAway/ruby-sdk/commit/93e8ce798787cbb8d8d3fd02940934eec4e3f183))

## 1.0.15 (2025-07-07)

Full Changelog: [v1.0.14...v1.0.15](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.14...v1.0.15)

### Chores

* **internal:** version bump ([419617a](https://github.com/OneBusAway/ruby-sdk/commit/419617a61df29c9709577e6f55416e2d018d9cb1))

## 1.0.14 (2025-07-06)

Full Changelog: [v1.0.13...v1.0.14](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.13...v1.0.14)

### Chores

* **internal:** version bump ([bff7c05](https://github.com/OneBusAway/ruby-sdk/commit/bff7c053379593d18a30ac93b3d97434cdedf008))

## 1.0.13 (2025-07-06)

Full Changelog: [v1.0.12...v1.0.13](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.12...v1.0.13)

### Chores

* **internal:** version bump ([483abac](https://github.com/OneBusAway/ruby-sdk/commit/483abac62a1db08e3df87a4e692eb1010e50ba02))

## 1.0.12 (2025-07-06)

Full Changelog: [v1.0.11...v1.0.12](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.11...v1.0.12)

### Chores

* **internal:** version bump ([8c09526](https://github.com/OneBusAway/ruby-sdk/commit/8c09526cb47b454989666e41a7f0ca22c64bdb4c))

## 1.0.11 (2025-07-05)

Full Changelog: [v1.0.10...v1.0.11](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.10...v1.0.11)

### Chores

* **internal:** version bump ([894dcf1](https://github.com/OneBusAway/ruby-sdk/commit/894dcf12f6a7834f07e828a78e61c59ff8390799))

## 1.0.10 (2025-07-01)

Full Changelog: [v1.0.9...v1.0.10](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.9...v1.0.10)

### Chores

* **ci:** only run for pushes and fork pull requests ([64a0591](https://github.com/OneBusAway/ruby-sdk/commit/64a0591f91cc98b55b583d81727ae067c0c1d1c2))
* **internal:** allow streams to also be unwrapped on a per-row basis ([2710480](https://github.com/OneBusAway/ruby-sdk/commit/27104809a931e4c3e99cb3cc5949c531816e5b87))
* **internal:** version bump ([a8f4163](https://github.com/OneBusAway/ruby-sdk/commit/a8f416393445b3b824740a5159b5c35aa455048e))

## 1.0.9 (2025-06-27)

Full Changelog: [v1.0.8...v1.0.9](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.8...v1.0.9)

### Bug Fixes

* **ci:** release-doctor — report correct token name ([9c550bf](https://github.com/OneBusAway/ruby-sdk/commit/9c550bf5cff1eee21ffa66565ee5245e099f6a28))


### Chores

* **internal:** version bump ([0249814](https://github.com/OneBusAway/ruby-sdk/commit/02498140d38148e79738af88f5794f19949127ad))

## 1.0.8 (2025-06-18)

Full Changelog: [v1.0.7...v1.0.8](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.7...v1.0.8)

### Bug Fixes

* issue where we cannot mutate arrays on base model derivatives ([55a5d96](https://github.com/OneBusAway/ruby-sdk/commit/55a5d9660d81a48dc9cdc1ea3e7c46a6c6471d95))


### Chores

* **ci:** enable for pull requests ([91ac3d1](https://github.com/OneBusAway/ruby-sdk/commit/91ac3d152af0a13e43890803903fe9f02af838f5))
* **internal:** version bump ([64cc3cb](https://github.com/OneBusAway/ruby-sdk/commit/64cc3cb430a2dbacf7ba7e2463281d84100103e8))

## 1.0.7 (2025-06-12)

Full Changelog: [v1.0.6...v1.0.7](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.6...v1.0.7)

### Chores

* **ci:** link to correct github repo ([1130a85](https://github.com/OneBusAway/ruby-sdk/commit/1130a854cb3c9d371432fd6693aa07159064783b))
* **internal:** version bump ([7bc49b1](https://github.com/OneBusAway/ruby-sdk/commit/7bc49b108f0850199278adaa6c155a9080b757e5))

## 1.0.6 (2025-06-06)

Full Changelog: [v1.0.5...v1.0.6](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.5...v1.0.6)

### Chores

* **internal:** version bump ([d87adf0](https://github.com/OneBusAway/ruby-sdk/commit/d87adf0fcf9fc4d307ad7c95d50ad5f8307a3fdc))

## 1.0.5 (2025-06-05)

Full Changelog: [v1.0.4...v1.0.5](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.4...v1.0.5)

### Chores

* **internal:** version bump ([a685981](https://github.com/OneBusAway/ruby-sdk/commit/a685981b14d96d2e9f9d7cdb261746f32c4a193b))

## 1.0.4 (2025-06-05)

Full Changelog: [v1.0.3...v1.0.4](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.3...v1.0.4)

### Bug Fixes

* `to_sorbet_type` should not return branded types ([62260a5](https://github.com/OneBusAway/ruby-sdk/commit/62260a5beb28f955e636a8d8ae5054e81f0ddd1c))
* default content-type for text in multi-part formdata uploads should be text/plain ([642d274](https://github.com/OneBusAway/ruby-sdk/commit/642d274c1f710e6ec592ee5aab241f322c8d1d4a))


### Chores

* **internal:** version bump ([993b8ac](https://github.com/OneBusAway/ruby-sdk/commit/993b8ac7c60193de4157b5773da48ad76249564f))

## 1.0.3 (2025-05-28)

Full Changelog: [v1.0.2...v1.0.3](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.2...v1.0.3)

### Bug Fixes

* correctly instantiate sorbet type aliases for enums and unions ([c3220da](https://github.com/OneBusAway/ruby-sdk/commit/c3220da9c8dd308037e8713b34a9925c3b2305c9))
* prevent rubocop from mangling `===` to `is_a?` check ([4cc7c41](https://github.com/OneBusAway/ruby-sdk/commit/4cc7c41e75e9bc5589998af5b40398632242bd08))
* sorbet types for enums, and make tapioca detection ignore `tapioca dsl` ([457b3f7](https://github.com/OneBusAway/ruby-sdk/commit/457b3f74152c42720d9daa4d2050a3a93bd8a6ce))


### Chores

* **docs:** grammar improvements ([fb664c1](https://github.com/OneBusAway/ruby-sdk/commit/fb664c14ed7536ceb8f8e0a3981466572b9924b3))
* force utf-8 locale via `RUBYOPT` when formatting ([40072fa](https://github.com/OneBusAway/ruby-sdk/commit/40072fa08f936bb71c630cbab264def3d5f68fca))
* **internal:** version bump ([736a6f9](https://github.com/OneBusAway/ruby-sdk/commit/736a6f9a6f1536797d992536102ec93ff1c80984))
* refine Yard and Sorbet types and ensure linting is turned on for examples ([4491574](https://github.com/OneBusAway/ruby-sdk/commit/44915748e1ed515f15805d3f7a2f5e73d9d4e8f7))
* use fully qualified names for yard annotations and rbs aliases ([836f0a6](https://github.com/OneBusAway/ruby-sdk/commit/836f0a68ded83ff27a8dcf0c28e07bd1f29f8cba))
* whitespaces ([6588d9a](https://github.com/OneBusAway/ruby-sdk/commit/6588d9a87f890cdedbe288172f074332e34a48ff))

## 1.0.2 (2025-05-20)

Full Changelog: [v1.0.1...v1.0.2](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.1...v1.0.2)

### Chores

* **internal:** version bump ([dcdc73d](https://github.com/OneBusAway/ruby-sdk/commit/dcdc73d4ef0c34ae369c7a74e70d3f0d6b162b96))

## 1.0.1 (2025-05-17)

Full Changelog: [v1.0.0...v1.0.1](https://github.com/OneBusAway/ruby-sdk/compare/v1.0.0...v1.0.1)

### Chores

* **internal:** version bump ([4f870e1](https://github.com/OneBusAway/ruby-sdk/commit/4f870e1501bd3dbb308f9cb1e82426fffa06a820))

## 1.0.0 (2025-05-17)

Full Changelog: [v0.1.0-alpha.208...v1.0.0](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.208...v1.0.0)

### Features

* **api:** manual updates ([bd2c9c4](https://github.com/OneBusAway/ruby-sdk/commit/bd2c9c4aab540d4e5a7eb8fa6b5103a10d26f426))


### Chores

* configure new SDK language ([f00a06e](https://github.com/OneBusAway/ruby-sdk/commit/f00a06e0c296b6d168019b43a1e55f1375ee52b1))
* trigger release ([5d40578](https://github.com/OneBusAway/ruby-sdk/commit/5d405785499dedaaa8aaba077563c254b6077fe6))
* update SDK settings ([c0b720f](https://github.com/OneBusAway/ruby-sdk/commit/c0b720fa25631fb6456d19516f216f24e0ebde9e))

## 0.1.0-alpha.208 (2025-05-15)

Full Changelog: [v0.1.0-alpha.207...v0.1.0-alpha.208](https://github.com/OneBusAway/ruby-sdk/compare/v0.1.0-alpha.207...v0.1.0-alpha.208)

### ⚠ BREAKING CHANGES

* bump min supported ruby version to 3.1 (oldest non-EOL) ([#528](https://github.com/OneBusAway/ruby-sdk/issues/528))
* remove top level type aliases to relocated classes ([#527](https://github.com/OneBusAway/ruby-sdk/issues/527))
* use tagged enums in sorbet type definitions ([#494](https://github.com/OneBusAway/ruby-sdk/issues/494))
* support `for item in stream` style iteration on `Stream`s ([#492](https://github.com/OneBusAway/ruby-sdk/issues/492))
* **model:** base model should recursively store coerced base models ([#482](https://github.com/OneBusAway/ruby-sdk/issues/482))

### Features

* add reference links in yard ([#516](https://github.com/OneBusAway/ruby-sdk/issues/516)) ([a2d90e0](https://github.com/OneBusAway/ruby-sdk/commit/a2d90e0f80af85bd43c30635c263c48a5a9ac027))
* allow all valid `JSON` types to be encoded ([#538](https://github.com/OneBusAway/ruby-sdk/issues/538)) ([07f52fe](https://github.com/OneBusAway/ruby-sdk/commit/07f52fe208832b93f3f957adb63e07739edd4f30))
* bump default connection pool size limit to minimum of 99 ([9afd6b6](https://github.com/OneBusAway/ruby-sdk/commit/9afd6b69cfd1a84cd06d568a8b8a6e381c92ccb5))
* bump min supported ruby version to 3.1 (oldest non-EOL) ([#528](https://github.com/OneBusAway/ruby-sdk/issues/528)) ([f0c0b1f](https://github.com/OneBusAway/ruby-sdk/commit/f0c0b1f7bbb08b51595693a06c586fadc4063b91))
* **client:** enable setting base URL from environment variable ([657284a](https://github.com/OneBusAway/ruby-sdk/commit/657284a41700aec683b1bfed68ad0c8ac23327ad))
* consistently accept `AnyHash` types in parameter positions in sorbet ([#499](https://github.com/OneBusAway/ruby-sdk/issues/499)) ([43ca062](https://github.com/OneBusAway/ruby-sdk/commit/43ca0621be2c7a1476dae866b44c3cd7914b272b))
* expose base client options as read only attributes ([6dbafa4](https://github.com/OneBusAway/ruby-sdk/commit/6dbafa42512e13aae9ff17970247e33e493fc4c1))
* expose recursive `#to_h` conversion ([a79eb34](https://github.com/OneBusAway/ruby-sdk/commit/a79eb3469e45e2c0d0875089c6e42680052705ef))
* implement `#hash` for data containers ([8ed181a](https://github.com/OneBusAway/ruby-sdk/commit/8ed181ae3da850a94ea62fc104daa32e2677f464))
* implement `to_json` for base model ([#522](https://github.com/OneBusAway/ruby-sdk/issues/522)) ([397929d](https://github.com/OneBusAway/ruby-sdk/commit/397929d4a4abfd2f124b3b3c951850a9b2279777))
* **internal:** converter interface should recurse without schema ([#507](https://github.com/OneBusAway/ruby-sdk/issues/507)) ([2cc07cd](https://github.com/OneBusAway/ruby-sdk/commit/2cc07cdb9842faf17b30c19b31a242d87545c633))
* link response models to their methods in yard doc ([#518](https://github.com/OneBusAway/ruby-sdk/issues/518)) ([e762dff](https://github.com/OneBusAway/ruby-sdk/commit/e762dff11bd2fbe71aaa6c51446a7dc649ad7e42))
* prevent tapioca from introspecting the gem internals ([#498](https://github.com/OneBusAway/ruby-sdk/issues/498)) ([e4bf820](https://github.com/OneBusAway/ruby-sdk/commit/e4bf82056d2a7c12e99215bc3704b618e4227802))
* remove top level type aliases to relocated classes ([#527](https://github.com/OneBusAway/ruby-sdk/issues/527)) ([53260f4](https://github.com/OneBusAway/ruby-sdk/commit/53260f4831bec274f7782ab8a45cf791e7dbce00))
* support `for item in stream` style iteration on `Stream`s ([#492](https://github.com/OneBusAway/ruby-sdk/issues/492)) ([4b96909](https://github.com/OneBusAway/ruby-sdk/commit/4b9690939887dabfb6910a003bf5dbf104f22219))
* support query, header, and body params that have identical names ([#537](https://github.com/OneBusAway/ruby-sdk/issues/537)) ([308f6f2](https://github.com/OneBusAway/ruby-sdk/commit/308f6f25f0d43c7f1dd20a7fc4a4d62556c73bde))
* support solargraph generics ([#531](https://github.com/OneBusAway/ruby-sdk/issues/531)) ([bbd8ac6](https://github.com/OneBusAway/ruby-sdk/commit/bbd8ac6ce9128e987044f0622754f9b1b2aec1dd))
* support sorbet aliases at the runtime ([e7cd367](https://github.com/OneBusAway/ruby-sdk/commit/e7cd36771eaa6ef0f4c54dd451e5829de44b08c4))
* support specifying content-type with FilePart class ([58359d0](https://github.com/OneBusAway/ruby-sdk/commit/58359d0fdf47e56d0b2045788710141ce1c5d658))
* support webmock for testing ([b32dd33](https://github.com/OneBusAway/ruby-sdk/commit/b32dd33d696949b3844f8c3987fe1744e182a7ab))
* use Pathname alongside raw IO handles for file uploads ([#549](https://github.com/OneBusAway/ruby-sdk/issues/549)) ([246ac8b](https://github.com/OneBusAway/ruby-sdk/commit/246ac8b1f7cb9b2b8a346c2c75acbdaf5b063380))
* use tagged enums in sorbet type definitions ([#494](https://github.com/OneBusAway/ruby-sdk/issues/494)) ([574ea71](https://github.com/OneBusAway/ruby-sdk/commit/574ea7136c40905e50b79e4901a340a6c1b60d3e))


### Bug Fixes

* always send idempotency header when specified as a request option ([b3fe380](https://github.com/OneBusAway/ruby-sdk/commit/b3fe380ae176ee06bf23de5da75c7a850f2c04d8))
* **client:** send correct HTTP path ([e509d33](https://github.com/OneBusAway/ruby-sdk/commit/e509d33e31d9f7bc7b2ff4bd28d8946effc51bb5))
* converter should transform stringio into string where applicable ([#540](https://github.com/OneBusAway/ruby-sdk/issues/540)) ([0675048](https://github.com/OneBusAway/ruby-sdk/commit/067504854d1c4dc1158f635377b2d72bb1134d5d))
* ensure gem release is unaffected by renaming ([6e24a10](https://github.com/OneBusAway/ruby-sdk/commit/6e24a10e07dc9911ee5b1820aa0fd2579917519d))
* inaccuracies in the README.md ([f9c0fa5](https://github.com/OneBusAway/ruby-sdk/commit/f9c0fa54089e2078ad9e762a921db61ff9c86803))
* **internal:** ensure formatting always uses c.utf-8 locale ([ec9c1e1](https://github.com/OneBusAway/ruby-sdk/commit/ec9c1e14322175cb888678deaa66e87a810e611d))
* **internal:** fix formatting script for macos ([88cc1e2](https://github.com/OneBusAway/ruby-sdk/commit/88cc1e22405820d215641861bd1450e2dd47d89c))
* **internal:** update gemspec name ([15fc463](https://github.com/OneBusAway/ruby-sdk/commit/15fc463c5caa21d607a8dbf9cd4650ab5e800d50))
* **internal:** update release-please to use ruby strategy for README.md ([1f40a0f](https://github.com/OneBusAway/ruby-sdk/commit/1f40a0f35d1d664bee94110ad9baf3ad523073b6))
* label optional keyword arguments in *.rbs type definitions ([#490](https://github.com/OneBusAway/ruby-sdk/issues/490)) ([062194e](https://github.com/OneBusAway/ruby-sdk/commit/062194ef3452b24d6c62fed88221b7176c2b2d94))
* make a typo for `FilePart.content` ([398a05d](https://github.com/OneBusAway/ruby-sdk/commit/398a05d52272a3661dfaa26c192377472e7c1948))
* **model:** base model should recursively store coerced base models ([#482](https://github.com/OneBusAway/ruby-sdk/issues/482)) ([3c85e01](https://github.com/OneBusAway/ruby-sdk/commit/3c85e0107c80c25855950906872a56c63f16284b))
* path interpolation template strings ([#515](https://github.com/OneBusAway/ruby-sdk/issues/515)) ([a80b10c](https://github.com/OneBusAway/ruby-sdk/commit/a80b10cab762364e9a442951576e97a3b8015a6c))
* pre-release version string should match ruby, not semver conventions ([#530](https://github.com/OneBusAway/ruby-sdk/issues/530)) ([796a261](https://github.com/OneBusAway/ruby-sdk/commit/796a26179150f0f32ba3533c7bfc3e40c3c321e5))
* raise connection error for errors that result from HTTP transports ([#550](https://github.com/OneBusAway/ruby-sdk/issues/550)) ([9995174](https://github.com/OneBusAway/ruby-sdk/commit/99951744e81693320bdfe107dbca536e9f7eab56))
* resolve tapioca derived sorbet errors ([#493](https://github.com/OneBusAway/ruby-sdk/issues/493)) ([22031f6](https://github.com/OneBusAway/ruby-sdk/commit/22031f6225728cbeb96814909ad9fb9791cab184))
* switch to github compatible markdown engine ([#512](https://github.com/OneBusAway/ruby-sdk/issues/512)) ([4c168f0](https://github.com/OneBusAway/ruby-sdk/commit/4c168f08a5bee60ed564b92aaf567d8e8f3050a5))
* yard example tag formatting ([#496](https://github.com/OneBusAway/ruby-sdk/issues/496)) ([c15e2cd](https://github.com/OneBusAway/ruby-sdk/commit/c15e2cd2c617d92788eadd2b12628f79129cd22c))


### Chores

* `BaseModel` fields that are `BaseModel` typed should also accept `Hash` ([#495](https://github.com/OneBusAway/ruby-sdk/issues/495)) ([a2a7572](https://github.com/OneBusAway/ruby-sdk/commit/a2a757293f413d3c9ed5974eb49a325e0db99d63))
* accept all nd-json mimetype variants ([ab5bf20](https://github.com/OneBusAway/ruby-sdk/commit/ab5bf2008fae814ce4dbac95bb381199ed58331e))
* add `[@yieldparam](https://github.com/yieldparam)` to yard doc ([#486](https://github.com/OneBusAway/ruby-sdk/issues/486)) ([4e9370f](https://github.com/OneBusAway/ruby-sdk/commit/4e9370f48739854768bb71c9ff4d9213c8e90eb6))
* add example directory ([#489](https://github.com/OneBusAway/ruby-sdk/issues/489)) ([022b5a3](https://github.com/OneBusAway/ruby-sdk/commit/022b5a37fb849793527de510d1d4602256c688db))
* add generator safe directory ([047660b](https://github.com/OneBusAway/ruby-sdk/commit/047660bd2f76ea1ff6f4363d50c6514d9a42f3ec))
* add README docs for using solargraph when installing gem from git ([#548](https://github.com/OneBusAway/ruby-sdk/issues/548)) ([7642b7b](https://github.com/OneBusAway/ruby-sdk/commit/7642b7b66ec6e5a18f956fa3a568a985bf233eb1))
* add type annotations for enum and union member listing methods ([#497](https://github.com/OneBusAway/ruby-sdk/issues/497)) ([dfb89e4](https://github.com/OneBusAway/ruby-sdk/commit/dfb89e46b659d0ec0af86e3a3186a543aba4190d))
* always fold up method bodies in sorbet type definitions ([#544](https://github.com/OneBusAway/ruby-sdk/issues/544)) ([828cd2f](https://github.com/OneBusAway/ruby-sdk/commit/828cd2f7b52acb10937934a43f6bad2476c5c5e9))
* broadly detect json family of content-type headers ([c8b83ea](https://github.com/OneBusAway/ruby-sdk/commit/c8b83eaa2033bc92657f1d0fefe8b9ee0fdbfb43))
* **ci:** add timeout thresholds for CI jobs ([707385d](https://github.com/OneBusAway/ruby-sdk/commit/707385d661931d2adcc27a9ab44c926fe65e1b66))
* **ci:** only use depot for staging repos ([44a08c5](https://github.com/OneBusAway/ruby-sdk/commit/44a08c56e0a77333e236e40b76ed0721f5be356a))
* demonstrate how to make undocumented requests in README ([#529](https://github.com/OneBusAway/ruby-sdk/issues/529)) ([523ff9a](https://github.com/OneBusAway/ruby-sdk/commit/523ff9acb43c9c9f89337d96d80164f80ef3fc0b))
* disable dangerous rubocop auto correct rule ([#503](https://github.com/OneBusAway/ruby-sdk/issues/503)) ([9a036ef](https://github.com/OneBusAway/ruby-sdk/commit/9a036efd6d9bc280bd882494b3faa8a540f7f9e1))
* disable overloads in `*.rbs` definitions for readable LSP errors ([#491](https://github.com/OneBusAway/ruby-sdk/issues/491)) ([7035d1b](https://github.com/OneBusAway/ruby-sdk/commit/7035d1b5a8094fd392fe427cc1d1d82aa31328d4))
* disable unnecessary linter rules for sorbet manifests ([#485](https://github.com/OneBusAway/ruby-sdk/issues/485)) ([5b024ef](https://github.com/OneBusAway/ruby-sdk/commit/5b024ef4ee4f54000d45fc11d70b1dd6d156694c))
* do not use literals for version in type definitions ([#532](https://github.com/OneBusAway/ruby-sdk/issues/532)) ([ac20f94](https://github.com/OneBusAway/ruby-sdk/commit/ac20f9407e4ec31dda6fb8460615f7c206a50115))
* document Client's concurrency capability ([#484](https://github.com/OneBusAway/ruby-sdk/issues/484)) ([ade9ed3](https://github.com/OneBusAway/ruby-sdk/commit/ade9ed3350323f8c51a59f562e8a1f42e149eeb6))
* document LSP support in read me ([#536](https://github.com/OneBusAway/ruby-sdk/issues/536)) ([c9e97ae](https://github.com/OneBusAway/ruby-sdk/commit/c9e97ae9affc508abce8e9c5d67f4bf06220791a))
* documentation improvements ([e00b981](https://github.com/OneBusAway/ruby-sdk/commit/e00b9812370b82bbc8683b0b5e776ddcdf395b4f))
* ensure readme.md is bumped when release please updates versions ([6eb0377](https://github.com/OneBusAway/ruby-sdk/commit/6eb0377298bef5595b37740aa5a281ac4df297ae))
* explicitly mark apis public under `Internal` module ([6ca5a65](https://github.com/OneBusAway/ruby-sdk/commit/6ca5a65c20fb815a074d3ea6cf52b03b680c1576))
* extract error classes into own module ([#523](https://github.com/OneBusAway/ruby-sdk/issues/523)) ([6e14c92](https://github.com/OneBusAway/ruby-sdk/commit/6e14c92f0443fb8d140c6b07e79479275ebf5057))
* fix lsp configuration file for local development ([c2b758c](https://github.com/OneBusAway/ruby-sdk/commit/c2b758c753c5f4a1bebb548948a154315f385c12))
* fix misc linting / minor issues ([de75878](https://github.com/OneBusAway/ruby-sdk/commit/de75878cab4d6ad6ea96a022073c72b99854c776))
* fix misc rubocop errors ([#513](https://github.com/OneBusAway/ruby-sdk/issues/513)) ([d316442](https://github.com/OneBusAway/ruby-sdk/commit/d3164423a7909c1281e842d392b066d0ea547608))
* ignore some spurious linter warnings and formatting changes ([#483](https://github.com/OneBusAway/ruby-sdk/issues/483)) ([e4f04fa](https://github.com/OneBusAway/ruby-sdk/commit/e4f04fa4b7460cc9c9a18d2bd67363921cc61035))
* improve yard docs readability ([#517](https://github.com/OneBusAway/ruby-sdk/issues/517)) ([f357574](https://github.com/OneBusAway/ruby-sdk/commit/f357574a1406626a94f38032662394515bf110cf))
* **internal:** add sorbet config for SDK local development ([#488](https://github.com/OneBusAway/ruby-sdk/issues/488)) ([9424516](https://github.com/OneBusAway/ruby-sdk/commit/9424516aeefd41dc829bc9f8734598e4544da16a))
* **internal:** always run post-processing when formatting when syntax_tree ([ab95f15](https://github.com/OneBusAway/ruby-sdk/commit/ab95f15a473479c55f955c9c87b6ba2e2c18ff87))
* **internal:** annotate request options with type aliases in sorbet ([f0accda](https://github.com/OneBusAway/ruby-sdk/commit/f0accda1c067e890cb7299277d181caeec0a981e))
* **internal:** codegen related update ([43974b5](https://github.com/OneBusAway/ruby-sdk/commit/43974b58fb4f98e2e40679e378eff47710e9c7d1))
* **internal:** codegen related update ([3a963aa](https://github.com/OneBusAway/ruby-sdk/commit/3a963aa27f3c9b2f89056a94c1f96a15753a9663))
* **internal:** codegen related update ([4169535](https://github.com/OneBusAway/ruby-sdk/commit/4169535e2e0a3c299e530ac27623e48150e64c80))
* **internal:** codegen related update ([5a7b457](https://github.com/OneBusAway/ruby-sdk/commit/5a7b457d7cc271977620dd7428340f72b2a7fbde))
* **internal:** codegen related update ([0eaa6af](https://github.com/OneBusAway/ruby-sdk/commit/0eaa6afa4f21a659c9c13a8dec11020c103c26d7))
* **internal:** codegen related update ([9e8a51c](https://github.com/OneBusAway/ruby-sdk/commit/9e8a51cc7f33eb8776bb677956051739fcccb776))
* **internal:** codegen related update ([#519](https://github.com/OneBusAway/ruby-sdk/issues/519)) ([90e1c54](https://github.com/OneBusAway/ruby-sdk/commit/90e1c54442d058dc7d29cabb56056f19628c1ddc))
* **internal:** codegen related update ([#524](https://github.com/OneBusAway/ruby-sdk/issues/524)) ([a946720](https://github.com/OneBusAway/ruby-sdk/commit/a946720cad751b7cfb1a55b571b2b68a75ea63dd))
* **internal:** codegen related update ([#525](https://github.com/OneBusAway/ruby-sdk/issues/525)) ([23fc1de](https://github.com/OneBusAway/ruby-sdk/commit/23fc1de76c10d5809aa94f9d5840e19ad16f20c1))
* **internal:** contribute.md and contributor QoL improvements ([b1bb349](https://github.com/OneBusAway/ruby-sdk/commit/b1bb3492b4c8d694eb2df83cd3053cab238e75a6))
* **internal:** expand CI branch coverage ([1f10c84](https://github.com/OneBusAway/ruby-sdk/commit/1f10c84603769a04b5d6d455177c6827fd0660d6))
* **internal:** improve response envelope unwrap functionality ([4db3fcb](https://github.com/OneBusAway/ruby-sdk/commit/4db3fcbbd0da9ed987b4a6d76baaad03b0073c94))
* **internal:** loosen internal type restrictions ([1660551](https://github.com/OneBusAway/ruby-sdk/commit/166055121181433d6e1cd2164042cb3df9eb6666))
* **internal:** minor refactoring of utils ([#506](https://github.com/OneBusAway/ruby-sdk/issues/506)) ([760644c](https://github.com/OneBusAway/ruby-sdk/commit/760644c82f1649056b1992604d0adbfa61360c13))
* **internal:** minor touch ups on sdk internals ([b89e074](https://github.com/OneBusAway/ruby-sdk/commit/b89e0742c3b6612db6a1084305f8c360eb04a429))
* **internal:** minor type annotation improvements ([5aecec1](https://github.com/OneBusAway/ruby-sdk/commit/5aecec1a7552ac79d2f54bf7f7f3e96642d53897))
* **internal:** misc small improvements ([#541](https://github.com/OneBusAway/ruby-sdk/issues/541)) ([ad4b642](https://github.com/OneBusAway/ruby-sdk/commit/ad4b64269bb49802156c9782b12bfbe8a024ed2c))
* **internal:** more concise handling of parameter naming conflicts ([#546](https://github.com/OneBusAway/ruby-sdk/issues/546)) ([aaa57cb](https://github.com/OneBusAway/ruby-sdk/commit/aaa57cbe396f69badc53554cf50506b9bfd6b9a8))
* **internal:** mostly README touch ups ([3d17abe](https://github.com/OneBusAway/ruby-sdk/commit/3d17abe1bb05a202537e1c5650ac4472ba89b3f8))
* **internal:** protect SSE parsing pipeline from broken UTF-8 characters ([77c7356](https://github.com/OneBusAway/ruby-sdk/commit/77c735667521943024d05044e80932e445f65992))
* **internal:** reduce CI branch coverage ([51faeaf](https://github.com/OneBusAway/ruby-sdk/commit/51faeafa74abd7e05e62594f9e9751a7d17ddccc))
* **internal:** remove unnecessary `rbi/lib` folder ([0895d78](https://github.com/OneBusAway/ruby-sdk/commit/0895d78605463d96054c87952332a6cc755eb578))
* **internal:** rubocop rules ([#543](https://github.com/OneBusAway/ruby-sdk/issues/543)) ([4b3067e](https://github.com/OneBusAway/ruby-sdk/commit/4b3067efff657f5ca4520d33cfac989a2e3c90f7))
* **internal:** run rubocop linter in parallel ([#542](https://github.com/OneBusAway/ruby-sdk/issues/542)) ([5e7965d](https://github.com/OneBusAway/ruby-sdk/commit/5e7965d38b9df3663dc571af48ca05fc28a5dec0))
* **internal:** version bump ([#480](https://github.com/OneBusAway/ruby-sdk/issues/480)) ([0c194b3](https://github.com/OneBusAway/ruby-sdk/commit/0c194b32e4aa8a86d26d87d8e33b2b1e37002d5c))
* loosen const and integer coercion rules ([#551](https://github.com/OneBusAway/ruby-sdk/issues/551)) ([777d671](https://github.com/OneBusAway/ruby-sdk/commit/777d67169060f7454475d08bb59897253e7a6242))
* loosen rubocop rules that don't always make sense ([3b0721e](https://github.com/OneBusAway/ruby-sdk/commit/3b0721e1325c216ec97c9d5f99623142a1deeae6))
* make client tests look prettier ([#547](https://github.com/OneBusAway/ruby-sdk/issues/547)) ([754f51c](https://github.com/OneBusAway/ruby-sdk/commit/754f51c1f0d9923bd2e01f3bba9b4c45f005e250))
* make internal types pretty print ([67f0681](https://github.com/OneBusAway/ruby-sdk/commit/67f0681d5dca9bad86b75dd18e981ff36d72cf82))
* misc sdk polish ([#535](https://github.com/OneBusAway/ruby-sdk/issues/535)) ([29a488e](https://github.com/OneBusAway/ruby-sdk/commit/29a488e077b8206813f6283c46f329bda3848ecf))
* more accurate type annotations and aliases ([aa67b4a](https://github.com/OneBusAway/ruby-sdk/commit/aa67b4aaa67b39f96892e0811d857b67fd59e9e9))
* more accurate type annotations for SDK internals ([#510](https://github.com/OneBusAway/ruby-sdk/issues/510)) ([0ced6b9](https://github.com/OneBusAway/ruby-sdk/commit/0ced6b9bf5220010cbd9b092600966ae9ce2d3ef))
* more aggressive tapioca detection logic for skipping compiler introspection ([#505](https://github.com/OneBusAway/ruby-sdk/issues/505)) ([b2dcef5](https://github.com/OneBusAway/ruby-sdk/commit/b2dcef5466804004a6c029ec3dcc0793614d2eeb))
* more readable output when tests fail ([#504](https://github.com/OneBusAway/ruby-sdk/issues/504)) ([a3c9757](https://github.com/OneBusAway/ruby-sdk/commit/a3c975742de6494ade36f4fcbab1b89234e27d45))
* move private classes into internal module ([#526](https://github.com/OneBusAway/ruby-sdk/issues/526)) ([f0e37ed](https://github.com/OneBusAway/ruby-sdk/commit/f0e37ed2160639da005186960f6f4bc0ef97dd26))
* order client variables by "importance" ([#521](https://github.com/OneBusAway/ruby-sdk/issues/521)) ([47d0335](https://github.com/OneBusAway/ruby-sdk/commit/47d03355288d944e388d37c8aec9427ba894531f))
* re-export top level models under library namespace ([b25ece9](https://github.com/OneBusAway/ruby-sdk/commit/b25ece9ce08cfbad077ccc0a0ec90fe319523f5a))
* recursively accept `AnyHash` for `BaseModel`s in arrays and hashes ([#500](https://github.com/OneBusAway/ruby-sdk/issues/500)) ([59c4115](https://github.com/OneBusAway/ruby-sdk/commit/59c4115318c8f7ae280176864462c9a07d123619))
* reduce verbosity in type declarations ([#502](https://github.com/OneBusAway/ruby-sdk/issues/502)) ([e18347c](https://github.com/OneBusAway/ruby-sdk/commit/e18347c4e219341c13131e261ea68de43c4b25e1))
* relax sorbet enum parameters to allow `String` in addition to `Symbol` ([#520](https://github.com/OneBusAway/ruby-sdk/issues/520)) ([c0bf2cb](https://github.com/OneBusAway/ruby-sdk/commit/c0bf2cb37e44646304d6d76fffc7a0800e8fcbf0))
* relocate internal modules ([#509](https://github.com/OneBusAway/ruby-sdk/issues/509)) ([c137b8b](https://github.com/OneBusAway/ruby-sdk/commit/c137b8bc630118bc13e759f0e62c51abfd91aeed))
* remove Gemfile.lock during bootstrap ([d5b5510](https://github.com/OneBusAway/ruby-sdk/commit/d5b55100022b1dde787a18f8606ff4822e9d0d61))
* remove unnecessary & confusing module ([#508](https://github.com/OneBusAway/ruby-sdk/issues/508)) ([19bbe3a](https://github.com/OneBusAway/ruby-sdk/commit/19bbe3aa7c826ac4e5193568f862c87e5f95ce14))
* rename confusing `Type::BooleanModel` to `Type::Boolean` ([#539](https://github.com/OneBusAway/ruby-sdk/issues/539)) ([e897bb5](https://github.com/OneBusAway/ruby-sdk/commit/e897bb5e2cfd4525e782725e26e1cad59fcb2249))
* revert ignoring Gemfile.lock ([97e3797](https://github.com/OneBusAway/ruby-sdk/commit/97e37979ba8df4b8617294f7b5fb33d66f14471a))
* show truncated parameter docs in yard ([0857a17](https://github.com/OneBusAway/ruby-sdk/commit/0857a178c38c7b9b081c12f43b42aa39c5af5dff))
* simplify internal utils ([#534](https://github.com/OneBusAway/ruby-sdk/issues/534)) ([ef522fd](https://github.com/OneBusAway/ruby-sdk/commit/ef522fd64cde7bff73693451276bdb08e2c0ffdb))
* simplify yard annotations by removing most `@!parse` directives ([fe49928](https://github.com/OneBusAway/ruby-sdk/commit/fe49928ddb0703e6597bfdec73705d838db4095c))
* switch to prettier looking sorbet annotations ([#501](https://github.com/OneBusAway/ruby-sdk/issues/501)) ([55d4753](https://github.com/OneBusAway/ruby-sdk/commit/55d4753dd6d0fe735e1b94c86c8f41d2c39cdf39))
* update readme ([#511](https://github.com/OneBusAway/ruby-sdk/issues/511)) ([f3593ea](https://github.com/OneBusAway/ruby-sdk/commit/f3593ea2a8d5e12c3bd4d9e64575315f73bc0ff6))
* update README with recommended editor plugins ([d95337b](https://github.com/OneBusAway/ruby-sdk/commit/d95337bfca5e0b60b92a491f239f1f8169a93d23))
* update yard comment formatting ([#545](https://github.com/OneBusAway/ruby-sdk/issues/545)) ([b85f5da](https://github.com/OneBusAway/ruby-sdk/commit/b85f5dab2ec8b89061ca7ec81e29aca615e85807))
* use `@!method` instead of `@!parse` for virtual method type definitions ([5a57174](https://github.com/OneBusAway/ruby-sdk/commit/5a5717411a04cd9b414ac782fb77b4dcffa1afed))
* use fully qualified name in sorbet README example ([#514](https://github.com/OneBusAway/ruby-sdk/issues/514)) ([d100b67](https://github.com/OneBusAway/ruby-sdk/commit/d100b67aebeaf7ef60b146700bd5b867e4ef1794))
* use multi-line formatting style for really long lines ([#487](https://github.com/OneBusAway/ruby-sdk/issues/487)) ([a1391f4](https://github.com/OneBusAway/ruby-sdk/commit/a1391f458fe0ea28707c5e89e802245382f86a5c))
* use package name for gemspec ([#533](https://github.com/OneBusAway/ruby-sdk/issues/533)) ([d2a84fd](https://github.com/OneBusAway/ruby-sdk/commit/d2a84fdfe9ed9304f0522de33486b1c85a9dbe0a))
* validate request option coercion correctness ([dcbc66e](https://github.com/OneBusAway/ruby-sdk/commit/dcbc66ee506cb0a6aafec7c6f99a7a2d14a191ba))


### Documentation

* illustrate environmental defaults for auth variables ([970c897](https://github.com/OneBusAway/ruby-sdk/commit/970c8978e957cca575d4dc3f193beb93322e264d))
* rewrite much of README.md for readability ([182334e](https://github.com/OneBusAway/ruby-sdk/commit/182334ecbd9e740f9e5fe1766aa99c649b2dc8c1))
* update documentation links to be more uniform ([d49fbaa](https://github.com/OneBusAway/ruby-sdk/commit/d49fbaa4f6eae425a32c46179e3d50d116a0ed02))

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
