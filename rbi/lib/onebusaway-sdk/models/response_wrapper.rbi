# typed: strong

module OnebusawaySDK
  module Models
    class ResponseWrapper < OnebusawaySDK::BaseModel
      sig { returns(Integer) }
      def code
      end

      sig { params(_: Integer).returns(Integer) }
      def code=(_)
      end

      sig { returns(Integer) }
      def current_time
      end

      sig { params(_: Integer).returns(Integer) }
      def current_time=(_)
      end

      sig { returns(String) }
      def text
      end

      sig { params(_: String).returns(String) }
      def text=(_)
      end

      sig { returns(Integer) }
      def version
      end

      sig { params(_: Integer).returns(Integer) }
      def version=(_)
      end

      sig do
        params(code: Integer, current_time: Integer, text: String, version: Integer).returns(T.attached_class)
      end
      def self.new(code:, current_time:, text:, version:)
      end

      sig { override.returns({code: Integer, current_time: Integer, text: String, version: Integer}) }
      def to_hash
      end
    end
  end
end
