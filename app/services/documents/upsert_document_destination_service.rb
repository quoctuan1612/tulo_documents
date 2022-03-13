# frozen_string_literal: true

module Documents
  class UpsertDocumentDestinationService
    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      validate_document_destination_name()

      document_destination = DocumentDestination.find_or_initialize_by(id: @request_params.id)

      document_destination.document_destination_name = @request_params.document_destination_name
      document_destination.email = @request_params.email
      document_destination.phone = @request_params.phone
      document_destination.description = @request_params.description

      document_destination.save
      @result = document_destination
    end

    private

    def validate_document_destination_name
      document_destination = DocumentDestination.find_by(document_destination_name: @request_params.document_destination_name)

      raise TuloCommon::RequestParamsBase::InvalidRequestParams, 
        OpenStruct.new(
          messages: { document_destination_name: [I18n.t('errors.messages.documents.document_destination.invalid.document_destination_name', document_destination_name: @request_params.document_destination_name)] }
        ) if document_destination.present? && document_destination.id != @request_params.id
    end
  end
end