# typed: strong

module OnebusawaySDK
  module Models
    class ResponseWrapper < OnebusawaySDK::BaseModel
      sig { returns(Integer) }
      attr_accessor :code

      sig { returns(Integer) }
      attr_accessor :current_time

      sig { returns(String) }
      attr_accessor :text

      sig { returns(Integer) }
      attr_accessor :version

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
