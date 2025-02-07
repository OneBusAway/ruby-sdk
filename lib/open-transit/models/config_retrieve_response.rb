# frozen_string_literal: true

module OpenTransit
  module Models
    class ConfigRetrieveResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::ConfigRetrieveResponse::Data]
      required :data, -> { OpenTransit::Models::ConfigRetrieveResponse::Data }

      # @!parse
      #   # @param data [OpenTransit::Models::ConfigRetrieveResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OpenTransit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   entry: OpenTransit::Models::ConfigRetrieveResponse::Data::Entry,
      #   references: OpenTransit::Models::References
      # }
      # ```
      class Data < OpenTransit::BaseModel
        # @!attribute entry
        #
        #   @return [OpenTransit::Models::ConfigRetrieveResponse::Data::Entry]
        required :entry, -> { OpenTransit::Models::ConfigRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OpenTransit::Models::References]
        required :references, -> { OpenTransit::Models::References }

        # @!parse
        #   # @param entry [OpenTransit::Models::ConfigRetrieveResponse::Data::Entry]
        #   # @param references [OpenTransit::Models::References]
        #   #
        #   def initialize(entry:, references:, **) = super

        # def initialize: (Hash | OpenTransit::BaseModel) -> void

        # @example
        # ```ruby
        # entry => {
        #   id: String,
        #   git_properties: OpenTransit::Models::ConfigRetrieveResponse::Data::Entry::GitProperties,
        #   name: String,
        #   service_date_from: String,
        #   service_date_to: String
        # }
        # ```
        class Entry < OpenTransit::BaseModel
          # @!attribute [r] id
          #
          #   @return [String, nil]
          optional :id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :id

          # @!attribute [r] git_properties
          #
          #   @return [OpenTransit::Models::ConfigRetrieveResponse::Data::Entry::GitProperties, nil]
          optional :git_properties,
                   -> { OpenTransit::Models::ConfigRetrieveResponse::Data::Entry::GitProperties },
                   api_name: :gitProperties

          # @!parse
          #   # @return [OpenTransit::Models::ConfigRetrieveResponse::Data::Entry::GitProperties]
          #   attr_writer :git_properties

          # @!attribute [r] name
          #
          #   @return [String, nil]
          optional :name, String

          # @!parse
          #   # @return [String]
          #   attr_writer :name

          # @!attribute [r] service_date_from
          #
          #   @return [String, nil]
          optional :service_date_from, String, api_name: :serviceDateFrom

          # @!parse
          #   # @return [String]
          #   attr_writer :service_date_from

          # @!attribute [r] service_date_to
          #
          #   @return [String, nil]
          optional :service_date_to, String, api_name: :serviceDateTo

          # @!parse
          #   # @return [String]
          #   attr_writer :service_date_to

          # @!parse
          #   # @param id [String]
          #   # @param git_properties [OpenTransit::Models::ConfigRetrieveResponse::Data::Entry::GitProperties]
          #   # @param name [String]
          #   # @param service_date_from [String]
          #   # @param service_date_to [String]
          #   #
          #   def initialize(id: nil, git_properties: nil, name: nil, service_date_from: nil, service_date_to: nil, **) = super

          # def initialize: (Hash | OpenTransit::BaseModel) -> void

          # @example
          # ```ruby
          # git_properties => {
          #   git_branch: String,
          #   git_build_host: String,
          #   git_build_time: String,
          #   git_build_user_email: String,
          #   git_build_user_name: String,
          #   **_
          # }
          # ```
          class GitProperties < OpenTransit::BaseModel
            # @!attribute [r] git_branch
            #
            #   @return [String, nil]
            optional :git_branch, String, api_name: :"git.branch"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_branch

            # @!attribute [r] git_build_host
            #
            #   @return [String, nil]
            optional :git_build_host, String, api_name: :"git.build.host"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_build_host

            # @!attribute [r] git_build_time
            #
            #   @return [String, nil]
            optional :git_build_time, String, api_name: :"git.build.time"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_build_time

            # @!attribute [r] git_build_user_email
            #
            #   @return [String, nil]
            optional :git_build_user_email, String, api_name: :"git.build.user.email"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_build_user_email

            # @!attribute [r] git_build_user_name
            #
            #   @return [String, nil]
            optional :git_build_user_name, String, api_name: :"git.build.user.name"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_build_user_name

            # @!attribute [r] git_build_version
            #
            #   @return [String, nil]
            optional :git_build_version, String, api_name: :"git.build.version"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_build_version

            # @!attribute [r] git_closest_tag_commit_count
            #
            #   @return [String, nil]
            optional :git_closest_tag_commit_count, String, api_name: :"git.closest.tag.commit.count"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_closest_tag_commit_count

            # @!attribute [r] git_closest_tag_name
            #
            #   @return [String, nil]
            optional :git_closest_tag_name, String, api_name: :"git.closest.tag.name"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_closest_tag_name

            # @!attribute [r] git_commit_id
            #
            #   @return [String, nil]
            optional :git_commit_id, String, api_name: :"git.commit.id"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_commit_id

            # @!attribute [r] git_commit_id_abbrev
            #
            #   @return [String, nil]
            optional :git_commit_id_abbrev, String, api_name: :"git.commit.id.abbrev"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_commit_id_abbrev

            # @!attribute [r] git_commit_id_describe
            #
            #   @return [String, nil]
            optional :git_commit_id_describe, String, api_name: :"git.commit.id.describe"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_commit_id_describe

            # @!attribute [r] git_commit_id_describe_short
            #
            #   @return [String, nil]
            optional :git_commit_id_describe_short, String, api_name: :"git.commit.id.describe-short"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_commit_id_describe_short

            # @!attribute [r] git_commit_message_full
            #
            #   @return [String, nil]
            optional :git_commit_message_full, String, api_name: :"git.commit.message.full"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_commit_message_full

            # @!attribute [r] git_commit_message_short
            #
            #   @return [String, nil]
            optional :git_commit_message_short, String, api_name: :"git.commit.message.short"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_commit_message_short

            # @!attribute [r] git_commit_time
            #
            #   @return [String, nil]
            optional :git_commit_time, String, api_name: :"git.commit.time"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_commit_time

            # @!attribute [r] git_commit_user_email
            #
            #   @return [String, nil]
            optional :git_commit_user_email, String, api_name: :"git.commit.user.email"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_commit_user_email

            # @!attribute [r] git_commit_user_name
            #
            #   @return [String, nil]
            optional :git_commit_user_name, String, api_name: :"git.commit.user.name"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_commit_user_name

            # @!attribute [r] git_dirty
            #
            #   @return [String, nil]
            optional :git_dirty, String, api_name: :"git.dirty"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_dirty

            # @!attribute [r] git_remote_origin_url
            #
            #   @return [String, nil]
            optional :git_remote_origin_url, String, api_name: :"git.remote.origin.url"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_remote_origin_url

            # @!attribute [r] git_tags
            #
            #   @return [String, nil]
            optional :git_tags, String, api_name: :"git.tags"

            # @!parse
            #   # @return [String]
            #   attr_writer :git_tags

            # @!parse
            #   # @param git_branch [String]
            #   # @param git_build_host [String]
            #   # @param git_build_time [String]
            #   # @param git_build_user_email [String]
            #   # @param git_build_user_name [String]
            #   # @param git_build_version [String]
            #   # @param git_closest_tag_commit_count [String]
            #   # @param git_closest_tag_name [String]
            #   # @param git_commit_id [String]
            #   # @param git_commit_id_abbrev [String]
            #   # @param git_commit_id_describe [String]
            #   # @param git_commit_id_describe_short [String]
            #   # @param git_commit_message_full [String]
            #   # @param git_commit_message_short [String]
            #   # @param git_commit_time [String]
            #   # @param git_commit_user_email [String]
            #   # @param git_commit_user_name [String]
            #   # @param git_dirty [String]
            #   # @param git_remote_origin_url [String]
            #   # @param git_tags [String]
            #   #
            #   def initialize(
            #     git_branch: nil,
            #     git_build_host: nil,
            #     git_build_time: nil,
            #     git_build_user_email: nil,
            #     git_build_user_name: nil,
            #     git_build_version: nil,
            #     git_closest_tag_commit_count: nil,
            #     git_closest_tag_name: nil,
            #     git_commit_id: nil,
            #     git_commit_id_abbrev: nil,
            #     git_commit_id_describe: nil,
            #     git_commit_id_describe_short: nil,
            #     git_commit_message_full: nil,
            #     git_commit_message_short: nil,
            #     git_commit_time: nil,
            #     git_commit_user_email: nil,
            #     git_commit_user_name: nil,
            #     git_dirty: nil,
            #     git_remote_origin_url: nil,
            #     git_tags: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | OpenTransit::BaseModel) -> void
          end
        end
      end
    end
  end
end
