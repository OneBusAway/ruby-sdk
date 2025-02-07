# typed: strong

module OpenTransit
  module Models
    class ConfigRetrieveResponse < OpenTransit::Models::ResponseWrapper
      sig { returns(OpenTransit::Models::ConfigRetrieveResponse::Data) }
      attr_accessor :data

      sig { params(data: OpenTransit::Models::ConfigRetrieveResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OpenTransit::Models::ConfigRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OpenTransit::BaseModel
        sig { returns(OpenTransit::Models::ConfigRetrieveResponse::Data::Entry) }
        attr_accessor :entry

        sig { returns(OpenTransit::Models::References) }
        attr_accessor :references

        sig do
          params(
            entry: OpenTransit::Models::ConfigRetrieveResponse::Data::Entry,
            references: OpenTransit::Models::References
          ).void
        end
        def initialize(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry: OpenTransit::Models::ConfigRetrieveResponse::Data::Entry,
              references: OpenTransit::Models::References
            }
          )
        end
        def to_hash
        end

        class Entry < OpenTransit::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(OpenTransit::Models::ConfigRetrieveResponse::Data::Entry::GitProperties)) }
          attr_reader :git_properties

          sig do
            params(git_properties: OpenTransit::Models::ConfigRetrieveResponse::Data::Entry::GitProperties).void
          end
          attr_writer :git_properties

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(String)) }
          attr_reader :service_date_from

          sig { params(service_date_from: String).void }
          attr_writer :service_date_from

          sig { returns(T.nilable(String)) }
          attr_reader :service_date_to

          sig { params(service_date_to: String).void }
          attr_writer :service_date_to

          sig do
            params(
              id: String,
              git_properties: OpenTransit::Models::ConfigRetrieveResponse::Data::Entry::GitProperties,
              name: String,
              service_date_from: String,
              service_date_to: String
            ).void
          end
          def initialize(
            id: nil,
            git_properties: nil,
            name: nil,
            service_date_from: nil,
            service_date_to: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                git_properties: OpenTransit::Models::ConfigRetrieveResponse::Data::Entry::GitProperties,
                name: String,
                service_date_from: String,
                service_date_to: String
              }
            )
          end
          def to_hash
          end

          class GitProperties < OpenTransit::BaseModel
            sig { returns(T.nilable(String)) }
            attr_reader :git_branch

            sig { params(git_branch: String).void }
            attr_writer :git_branch

            sig { returns(T.nilable(String)) }
            attr_reader :git_build_host

            sig { params(git_build_host: String).void }
            attr_writer :git_build_host

            sig { returns(T.nilable(String)) }
            attr_reader :git_build_time

            sig { params(git_build_time: String).void }
            attr_writer :git_build_time

            sig { returns(T.nilable(String)) }
            attr_reader :git_build_user_email

            sig { params(git_build_user_email: String).void }
            attr_writer :git_build_user_email

            sig { returns(T.nilable(String)) }
            attr_reader :git_build_user_name

            sig { params(git_build_user_name: String).void }
            attr_writer :git_build_user_name

            sig { returns(T.nilable(String)) }
            attr_reader :git_build_version

            sig { params(git_build_version: String).void }
            attr_writer :git_build_version

            sig { returns(T.nilable(String)) }
            attr_reader :git_closest_tag_commit_count

            sig { params(git_closest_tag_commit_count: String).void }
            attr_writer :git_closest_tag_commit_count

            sig { returns(T.nilable(String)) }
            attr_reader :git_closest_tag_name

            sig { params(git_closest_tag_name: String).void }
            attr_writer :git_closest_tag_name

            sig { returns(T.nilable(String)) }
            attr_reader :git_commit_id

            sig { params(git_commit_id: String).void }
            attr_writer :git_commit_id

            sig { returns(T.nilable(String)) }
            attr_reader :git_commit_id_abbrev

            sig { params(git_commit_id_abbrev: String).void }
            attr_writer :git_commit_id_abbrev

            sig { returns(T.nilable(String)) }
            attr_reader :git_commit_id_describe

            sig { params(git_commit_id_describe: String).void }
            attr_writer :git_commit_id_describe

            sig { returns(T.nilable(String)) }
            attr_reader :git_commit_id_describe_short

            sig { params(git_commit_id_describe_short: String).void }
            attr_writer :git_commit_id_describe_short

            sig { returns(T.nilable(String)) }
            attr_reader :git_commit_message_full

            sig { params(git_commit_message_full: String).void }
            attr_writer :git_commit_message_full

            sig { returns(T.nilable(String)) }
            attr_reader :git_commit_message_short

            sig { params(git_commit_message_short: String).void }
            attr_writer :git_commit_message_short

            sig { returns(T.nilable(String)) }
            attr_reader :git_commit_time

            sig { params(git_commit_time: String).void }
            attr_writer :git_commit_time

            sig { returns(T.nilable(String)) }
            attr_reader :git_commit_user_email

            sig { params(git_commit_user_email: String).void }
            attr_writer :git_commit_user_email

            sig { returns(T.nilable(String)) }
            attr_reader :git_commit_user_name

            sig { params(git_commit_user_name: String).void }
            attr_writer :git_commit_user_name

            sig { returns(T.nilable(String)) }
            attr_reader :git_dirty

            sig { params(git_dirty: String).void }
            attr_writer :git_dirty

            sig { returns(T.nilable(String)) }
            attr_reader :git_remote_origin_url

            sig { params(git_remote_origin_url: String).void }
            attr_writer :git_remote_origin_url

            sig { returns(T.nilable(String)) }
            attr_reader :git_tags

            sig { params(git_tags: String).void }
            attr_writer :git_tags

            sig do
              params(
                git_branch: String,
                git_build_host: String,
                git_build_time: String,
                git_build_user_email: String,
                git_build_user_name: String,
                git_build_version: String,
                git_closest_tag_commit_count: String,
                git_closest_tag_name: String,
                git_commit_id: String,
                git_commit_id_abbrev: String,
                git_commit_id_describe: String,
                git_commit_id_describe_short: String,
                git_commit_message_full: String,
                git_commit_message_short: String,
                git_commit_time: String,
                git_commit_user_email: String,
                git_commit_user_name: String,
                git_dirty: String,
                git_remote_origin_url: String,
                git_tags: String
              ).void
            end
            def initialize(
              git_branch: nil,
              git_build_host: nil,
              git_build_time: nil,
              git_build_user_email: nil,
              git_build_user_name: nil,
              git_build_version: nil,
              git_closest_tag_commit_count: nil,
              git_closest_tag_name: nil,
              git_commit_id: nil,
              git_commit_id_abbrev: nil,
              git_commit_id_describe: nil,
              git_commit_id_describe_short: nil,
              git_commit_message_full: nil,
              git_commit_message_short: nil,
              git_commit_time: nil,
              git_commit_user_email: nil,
              git_commit_user_name: nil,
              git_dirty: nil,
              git_remote_origin_url: nil,
              git_tags: nil
            )
            end

            sig do
              override.returns(
                {
                  git_branch: String,
                  git_build_host: String,
                  git_build_time: String,
                  git_build_user_email: String,
                  git_build_user_name: String,
                  git_build_version: String,
                  git_closest_tag_commit_count: String,
                  git_closest_tag_name: String,
                  git_commit_id: String,
                  git_commit_id_abbrev: String,
                  git_commit_id_describe: String,
                  git_commit_id_describe_short: String,
                  git_commit_message_full: String,
                  git_commit_message_short: String,
                  git_commit_time: String,
                  git_commit_user_email: String,
                  git_commit_user_name: String,
                  git_dirty: String,
                  git_remote_origin_url: String,
                  git_tags: String
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
