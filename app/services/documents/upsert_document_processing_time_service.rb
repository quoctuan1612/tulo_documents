# frozen_string_literal: true

module Documents
  class UpsertDocumentProcessingTimeService
    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      document_processing_time = DocumentProcessingTime.find_or_initialize_by(id: @request_params.id)

      document_processing_time.document_type_id = @request_params.document_type_id
      document_processing_time.document_destination_id = @request_params.document_destination_id
      document_processing_time.processing_time = @request_params.processing_time

      document_processing_time.save
      @result = document_processing_time
    end
  end
end