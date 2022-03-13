# frozen_string_literal: true

module Documents
  class DeleteDocumentIncomingService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      document_incoming = DocumentIncoming.find_by(id: @request_params.id)

      raise TuloCommon::RequestParamsBase::InvalidRequestParams, 
        OpenStruct.new(messages: { id: [I18n.t('errors.messages.documents.document_incoming.record_not_found', id: @request_params.id)] }) if document_incoming.blank?
        
      document_incoming.destroy

      @result = true
    end
  end
end
