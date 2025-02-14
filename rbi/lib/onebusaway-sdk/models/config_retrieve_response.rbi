# typed: strong

module OnebusawaySDK
  module Models
    class ConfigRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::ConfigRetrieveResponse::Data) }
      def data
      end

      sig do
        params(_: OnebusawaySDK::Models::ConfigRetrieveResponse::Data).returns(OnebusawaySDK::Models::ConfigRetrieveResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: OnebusawaySDK::Models::ConfigRetrieveResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::ConfigRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::ConfigRetrieveResponse::Data::Entry) }
        def entry
        end

        sig do
          params(_: OnebusawaySDK::Models::ConfigRetrieveResponse::Data::Entry).returns(OnebusawaySDK::Models::ConfigRetrieveResponse::Data::Entry)
        end
        def entry=(_)
        end

        sig { returns(OnebusawaySDK::Models::References) }
        def references
        end

        sig { params(_: OnebusawaySDK::Models::References).returns(OnebusawaySDK::Models::References) }
        def references=(_)
        end

        sig do
          params(
            entry: OnebusawaySDK::Models::ConfigRetrieveResponse::Data::Entry,
            references: OnebusawaySDK::Models::References
          ).void
        end
        def initialize(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry: OnebusawaySDK::Models::ConfigRetrieveResponse::Data::Entry,
              references: OnebusawaySDK::Models::References
            }
          )
        end
        def to_hash
        end

        class Entry < OnebusawaySDK::BaseModel
          sig { returns(T.nilable(String)) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig do
            returns(T.nilable(OnebusawaySDK::Models::ConfigRetrieveResponse::Data::Entry::GitProperties))
          end
          def git_properties
          end

          sig do
            params(_: OnebusawaySDK::Models::ConfigRetrieveResponse::Data::Entry::GitProperties).returns(OnebusawaySDK::Models::ConfigRetrieveResponse::Data::Entry::GitProperties)
          end
          def git_properties=(_)
          end

          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def service_date_from
          end

          sig { params(_: String).returns(String) }
          def service_date_from=(_)
          end

          sig { returns(T.nilable(String)) }
          def service_date_to
          end

          sig { params(_: String).returns(String) }
          def service_date_to=(_)
          end

          sig do
            params(
              id: String,
              git_properties: OnebusawaySDK::Models::ConfigRetrieveResponse::Data::Entry::GitProperties,
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
                git_properties: OnebusawaySDK::Models::ConfigRetrieveResponse::Data::Entry::GitProperties,
                name: String,
                service_date_from: String,
                service_date_to: String
              }
            )
          end
          def to_hash
          end

          class GitProperties < OnebusawaySDK::BaseModel
            sig { returns(T.nilable(String)) }
            def git_branch
            end

            sig { params(_: String).returns(String) }
            def git_branch=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_build_host
            end

            sig { params(_: String).returns(String) }
            def git_build_host=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_build_time
            end

            sig { params(_: String).returns(String) }
            def git_build_time=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_build_user_email
            end

            sig { params(_: String).returns(String) }
            def git_build_user_email=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_build_user_name
            end

            sig { params(_: String).returns(String) }
            def git_build_user_name=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_build_version
            end

            sig { params(_: String).returns(String) }
            def git_build_version=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_closest_tag_commit_count
            end

            sig { params(_: String).returns(String) }
            def git_closest_tag_commit_count=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_closest_tag_name
            end

            sig { params(_: String).returns(String) }
            def git_closest_tag_name=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_commit_id
            end

            sig { params(_: String).returns(String) }
            def git_commit_id=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_commit_id_abbrev
            end

            sig { params(_: String).returns(String) }
            def git_commit_id_abbrev=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_commit_id_describe
            end

            sig { params(_: String).returns(String) }
            def git_commit_id_describe=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_commit_id_describe_short
            end

            sig { params(_: String).returns(String) }
            def git_commit_id_describe_short=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_commit_message_full
            end

            sig { params(_: String).returns(String) }
            def git_commit_message_full=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_commit_message_short
            end

            sig { params(_: String).returns(String) }
            def git_commit_message_short=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_commit_time
            end

            sig { params(_: String).returns(String) }
            def git_commit_time=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_commit_user_email
            end

            sig { params(_: String).returns(String) }
            def git_commit_user_email=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_commit_user_name
            end

            sig { params(_: String).returns(String) }
            def git_commit_user_name=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_dirty
            end

            sig { params(_: String).returns(String) }
            def git_dirty=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_remote_origin_url
            end

            sig { params(_: String).returns(String) }
            def git_remote_origin_url=(_)
            end

            sig { returns(T.nilable(String)) }
            def git_tags
            end

            sig { params(_: String).returns(String) }
            def git_tags=(_)
            end

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
