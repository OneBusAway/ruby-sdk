# typed: strong

module OnebusawaySDK
  module BasePage
    abstract!

    Elem = type_member(:out)

    sig { overridable.returns(T::Boolean) }
    def next_page?
    end

    sig { overridable.returns(T.self_type) }
    def next_page
    end

    sig { overridable.params(blk: T.proc.params(arg0: Elem).void).void }
    def auto_paging_each(&blk)
    end

    sig { returns(T::Enumerable[Elem]) }
    def to_enum
    end

    alias_method :enum_for, :to_enum

    sig do
      params(
        client: OnebusawaySDK::BaseClient,
        req: OnebusawaySDK::BaseClient::RequestComponentsShape,
        headers: T.any(T::Hash[String, String], Net::HTTPHeader),
        unwrapped: T.anything
      )
        .void
    end
    def initialize(client:, req:, headers:, unwrapped:)
    end
  end
end
