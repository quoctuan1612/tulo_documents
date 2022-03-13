# frozen_string_literal: true

module Documents
  class DeleteDocumentProcessingTimeService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      document_processing_time = DocumentProcessingTime.find_by(id: @request_params.id)

      raise TuloCommon::RequestParamsBase::InvalidRequestParams, 
        OpenStruct.new(messages: { id: [I18n.t('errors.messages.documents.document_processing_time.record_not_found', id: @request_params.id)] }) if document_processing_time.blank?
        
      document_processing_time.destroy

      @result = true
    end
  end
end
