# typed: strong

module Onebusaway
  module Models
    class CurrentTimeRetrieveResponse < Onebusaway::Models::ResponseWrapper
      sig { returns(Onebusaway::Models::CurrentTimeRetrieveResponse::Data) }
      attr_accessor :data

      sig { params(data: Onebusaway::Models::CurrentTimeRetrieveResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: Onebusaway::Models::CurrentTimeRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < Onebusaway::BaseModel
        sig { returns(Onebusaway::Models::CurrentTimeRetrieveResponse::Data::Entry) }
        attr_accessor :entry

        sig { returns(Onebusaway::Models::References) }
        attr_accessor :references

        sig do
          params(
            entry: Onebusaway::Models::CurrentTimeRetrieveResponse::Data::Entry,
            references: Onebusaway::Models::References
          ).void
        end
        def initialize(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry: Onebusaway::Models::CurrentTimeRetrieveResponse::Data::Entry,
              references: Onebusaway::Models::References
            }
          )
        end
        def to_hash
        end

        class Entry < Onebusaway::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :readable_time

          sig { params(readable_time: String).void }
          attr_writer :readable_time

          sig { returns(T.nilable(Integer)) }
          attr_reader :time

          sig { params(time: Integer).void }
          attr_writer :time

          sig { params(readable_time: String, time: Integer).void }
          def initialize(readable_time: nil, time: nil)
          end

          sig { override.returns({readable_time: String, time: Integer}) }
          def to_hash
          end
        end
      end
    end
  end
end
