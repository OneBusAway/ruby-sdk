# Onebusaway SDK Ruby API library

The Onebusaway SDK Ruby library provides convenient access to the Onebusaway SDK REST API from any Ruby 3.1.0+ application.

It is generated with [Stainless](https://www.stainless.com/).

## Documentation

Documentation for releases of this gem can be found [on RubyDoc](https://gemdocs.org/gems/onebusaway-sdk).

The REST API documentation can be found on [developer.onebusaway.org](https://developer.onebusaway.org).

## Installation

To use this gem, install via Bundler by adding the following to your application's `Gemfile`:

<!-- x-release-please-start-version -->

```ruby
gem "onebusaway-sdk", "~> 0.1.0.pre.alpha.207"
```

<!-- x-release-please-end -->

## Usage

```ruby
require "bundler/setup"
require "onebusaway_sdk"

onebusaway_sdk = OnebusawaySDK::Client.new(
  api_key: "My API Key" # defaults to ENV["ONEBUSAWAY_API_KEY"]
)

current_time = onebusaway_sdk.current_time.retrieve

puts(current_time)
```

## Sorbet

This library is written with [Sorbet type definitions](https://sorbet.org/docs/rbi). However, there is no runtime dependency on the `sorbet-runtime`.

When using sorbet, it is recommended to use model classes as below. This provides stronger type checking and tooling integration.

```ruby
onebusaway_sdk.current_time.retrieve
```

### Errors

When the library is unable to connect to the API, or if the API returns a non-success status code (i.e., 4xx or 5xx response), a subclass of `OnebusawaySDK::Errors::APIError` will be thrown:

```ruby
begin
  current_time = onebusaway_sdk.current_time.retrieve
rescue OnebusawaySDK::Errors::APIError => e
  puts(e.status) # 400
end
```

Error codes are as followed:

| Cause            | Error Type                 |
| ---------------- | -------------------------- |
| HTTP 400         | `BadRequestError`          |
| HTTP 401         | `AuthenticationError`      |
| HTTP 403         | `PermissionDeniedError`    |
| HTTP 404         | `NotFoundError`            |
| HTTP 409         | `ConflictError`            |
| HTTP 422         | `UnprocessableEntityError` |
| HTTP 429         | `RateLimitError`           |
| HTTP >= 500      | `InternalServerError`      |
| Other HTTP error | `APIStatusError`           |
| Timeout          | `APITimeoutError`          |
| Network error    | `APIConnectionError`       |

### Retries

Certain errors will be automatically retried 2 times by default, with a short exponential backoff.

Connection errors (for example, due to a network connectivity problem), 408 Request Timeout, 409 Conflict, 429 Rate Limit, >=500 Internal errors, and timeouts will all be retried by default.

You can use the `max_retries` option to configure or disable this:

```ruby
# Configure the default for all requests:
onebusaway_sdk = OnebusawaySDK::Client.new(
  max_retries: 0 # default is 2
)

# Or, configure per-request:
onebusaway_sdk.current_time.retrieve(request_options: {max_retries: 5})
```

### Timeouts

By default, requests will time out after 60 seconds.

Timeouts are applied separately to the initial connection and the overall request time, so in some cases a request could wait 2\*timeout seconds before it fails.

You can use the `timeout` option to configure or disable this:

```ruby
# Configure the default for all requests:
onebusaway_sdk = OnebusawaySDK::Client.new(
  timeout: nil # default is 60
)

# Or, configure per-request:
onebusaway_sdk.current_time.retrieve(request_options: {timeout: 5})
```

## Model DSL

This library uses a simple DSL to represent request parameters and response shapes in `lib/onebusaway_sdk/models`.

With the right [editor plugins](https://shopify.github.io/ruby-lsp), you can ctrl-click on elements of the DSL to navigate around and explore the library.

In all places where a `BaseModel` type is specified, vanilla Ruby `Hash` can also be used. For example, the following are interchangeable as arguments:

```ruby
# This has tooling readability, for auto-completion, static analysis, and goto definition with supported language services
params = OnebusawaySDK::Models::CurrentTimeRetrieveParams.new

# This also works
params = {

}
```

## Editor support

A combination of [Shopify LSP](https://shopify.github.io/ruby-lsp) and [Solargraph](https://solargraph.org/) is recommended for non-[Sorbet](https://sorbet.org) users. The former is especially good at go to definition, while the latter has much better auto-completion support.

## Advanced concepts

### Making custom/undocumented requests

#### Undocumented request params

If you want to explicitly send an extra param, you can do so with the `extra_query`, `extra_body`, and `extra_headers` under the `request_options:` parameter when making a requests as seen in examples above.

#### Undocumented endpoints

To make requests to undocumented endpoints, you can make requests using `client.request`. Options on the client will be respected (such as retries) when making this request.

```ruby
response = client.request(
  method: :post,
  path: '/undocumented/endpoint',
  query: {"dog": "woof"},
  headers: {"useful-header": "interesting-value"},
  body: {"he": "llo"},
)
```

### Concurrency & connection pooling

The `OnebusawaySDK::Client` instances are thread-safe, and should be re-used across multiple threads. By default, each `Client` have their own HTTP connection pool, with a maximum number of connections equal to thread count.

When the maximum number of connections has been checked out from the connection pool, the `Client` will wait for an in use connection to become available. The queue time for this mechanism is accounted for by the per-request timeout.

Unless otherwise specified, other classes in the SDK do not have locks protecting their underlying data structure.

Currently, `OnebusawaySDK::Client` instances are only fork-safe if there are no in-flight HTTP requests.

### Sorbet

#### Argument passing trick

It is possible to pass a compatible model / parameter class to a method that expects keyword arguments by using the `**` splat operator.

```ruby
params = OnebusawaySDK::Models::CurrentTimeRetrieveParams.new
onebusaway_sdk.current_time.retrieve(**params)
```

## Versioning

This package follows [SemVer](https://semver.org/spec/v2.0.0.html) conventions. As the library is in initial development and has a major version of `0`, APIs may change at any time.

This package considers improvements to the (non-runtime) `*.rbi` and `*.rbs` type definitions to be non-breaking changes.

## Requirements

Ruby 3.1.0 or higher.

## Contributing

See [the contributing documentation](https://github.com/OneBusAway/ruby-sdk/tree/main/CONTRIBUTING.md).
