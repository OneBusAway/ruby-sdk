# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::Config#retrieve
    class ConfigRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::ConfigRetrieveResponse::Data]
      required :data, -> { OnebusawaySDK::Models::ConfigRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [OnebusawaySDK::Models::ConfigRetrieveResponse::Data]

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::ConfigRetrieveResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::ConfigRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::Models::References }

        # @!method initialize(entry:, references:)
        #   @param entry [OnebusawaySDK::Models::ConfigRetrieveResponse::Data::Entry]
        #   @param references [OnebusawaySDK::Models::References]

        # @see OnebusawaySDK::Models::ConfigRetrieveResponse::Data#entry
        class Entry < OnebusawaySDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute git_properties
          #
          #   @return [OnebusawaySDK::Models::ConfigRetrieveResponse::Data::Entry::GitProperties, nil]
          optional :git_properties,
                   -> { OnebusawaySDK::Models::ConfigRetrieveResponse::Data::Entry::GitProperties },
                   api_name: :gitProperties

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute service_date_from
          #
          #   @return [String, nil]
          optional :service_date_from, String, api_name: :serviceDateFrom

          # @!attribute service_date_to
          #
          #   @return [String, nil]
          optional :service_date_to, String, api_name: :serviceDateTo

          # @!method initialize(id: nil, git_properties: nil, name: nil, service_date_from: nil, service_date_to: nil)
          #   @param id [String]
          #   @param git_properties [OnebusawaySDK::Models::ConfigRetrieveResponse::Data::Entry::GitProperties]
          #   @param name [String]
          #   @param service_date_from [String]
          #   @param service_date_to [String]

          # @see OnebusawaySDK::Models::ConfigRetrieveResponse::Data::Entry#git_properties
          class GitProperties < OnebusawaySDK::Internal::Type::BaseModel
            # @!attribute git_branch
            #
            #   @return [String, nil]
            optional :git_branch, String, api_name: :"git.branch"

            # @!attribute git_build_host
            #
            #   @return [String, nil]
            optional :git_build_host, String, api_name: :"git.build.host"

            # @!attribute git_build_time
            #
            #   @return [String, nil]
            optional :git_build_time, String, api_name: :"git.build.time"

            # @!attribute git_build_user_email
            #
            #   @return [String, nil]
            optional :git_build_user_email, String, api_name: :"git.build.user.email"

            # @!attribute git_build_user_name
            #
            #   @return [String, nil]
            optional :git_build_user_name, String, api_name: :"git.build.user.name"

            # @!attribute git_build_version
            #
            #   @return [String, nil]
            optional :git_build_version, String, api_name: :"git.build.version"

            # @!attribute git_closest_tag_commit_count
            #
            #   @return [String, nil]
            optional :git_closest_tag_commit_count, String, api_name: :"git.closest.tag.commit.count"

            # @!attribute git_closest_tag_name
            #
            #   @return [String, nil]
            optional :git_closest_tag_name, String, api_name: :"git.closest.tag.name"

            # @!attribute git_commit_id
            #
            #   @return [String, nil]
            optional :git_commit_id, String, api_name: :"git.commit.id"

            # @!attribute git_commit_id_abbrev
            #
            #   @return [String, nil]
            optional :git_commit_id_abbrev, String, api_name: :"git.commit.id.abbrev"

            # @!attribute git_commit_id_describe
            #
            #   @return [String, nil]
            optional :git_commit_id_describe, String, api_name: :"git.commit.id.describe"

            # @!attribute git_commit_id_describe_short
            #
            #   @return [String, nil]
            optional :git_commit_id_describe_short, String, api_name: :"git.commit.id.describe-short"

            # @!attribute git_commit_message_full
            #
            #   @return [String, nil]
            optional :git_commit_message_full, String, api_name: :"git.commit.message.full"

            # @!attribute git_commit_message_short
            #
            #   @return [String, nil]
            optional :git_commit_message_short, String, api_name: :"git.commit.message.short"

            # @!attribute git_commit_time
            #
            #   @return [String, nil]
            optional :git_commit_time, String, api_name: :"git.commit.time"

            # @!attribute git_commit_user_email
            #
            #   @return [String, nil]
            optional :git_commit_user_email, String, api_name: :"git.commit.user.email"

            # @!attribute git_commit_user_name
            #
            #   @return [String, nil]
            optional :git_commit_user_name, String, api_name: :"git.commit.user.name"

            # @!attribute git_dirty
            #
            #   @return [String, nil]
            optional :git_dirty, String, api_name: :"git.dirty"

            # @!attribute git_remote_origin_url
            #
            #   @return [String, nil]
            optional :git_remote_origin_url, String, api_name: :"git.remote.origin.url"

            # @!attribute git_tags
            #
            #   @return [String, nil]
            optional :git_tags, String, api_name: :"git.tags"

            # @!method initialize(git_branch: nil, git_build_host: nil, git_build_time: nil, git_build_user_email: nil, git_build_user_name: nil, git_build_version: nil, git_closest_tag_commit_count: nil, git_closest_tag_name: nil, git_commit_id: nil, git_commit_id_abbrev: nil, git_commit_id_describe: nil, git_commit_id_describe_short: nil, git_commit_message_full: nil, git_commit_message_short: nil, git_commit_time: nil, git_commit_user_email: nil, git_commit_user_name: nil, git_dirty: nil, git_remote_origin_url: nil, git_tags: nil)
            #   @param git_branch [String]
            #   @param git_build_host [String]
            #   @param git_build_time [String]
            #   @param git_build_user_email [String]
            #   @param git_build_user_name [String]
            #   @param git_build_version [String]
            #   @param git_closest_tag_commit_count [String]
            #   @param git_closest_tag_name [String]
            #   @param git_commit_id [String]
            #   @param git_commit_id_abbrev [String]
            #   @param git_commit_id_describe [String]
            #   @param git_commit_id_describe_short [String]
            #   @param git_commit_message_full [String]
            #   @param git_commit_message_short [String]
            #   @param git_commit_time [String]
            #   @param git_commit_user_email [String]
            #   @param git_commit_user_name [String]
            #   @param git_dirty [String]
            #   @param git_remote_origin_url [String]
            #   @param git_tags [String]
          end
        end
      end
    end
  end
end
