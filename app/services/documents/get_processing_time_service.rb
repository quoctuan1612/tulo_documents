# frozen_string_literal: true

module Documents
  class GetProcessingTimeService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      document_processing_time = DocumentProcessingTime.where(document_type_id: @request_params.document_type_id,
                                                        document_destination_id: @request_params.document_destination_id)

      raise ActiveRecord::RecordNotFound, I18n.t('errors.messages.documents.document_processing_time.processing_time_not_found',
                                                  document_type_id: @request_params.document_type_id,
                                                  document_destination_id: @request_params.document_destination_id) if document_processing_time.blank?

      @result = document_processing_time&.first&.processing_time
    end
  end
end
