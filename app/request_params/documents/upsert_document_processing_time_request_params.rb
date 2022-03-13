# frozen_string_literal: true

module Documents
  class UpsertDocumentProcessingTimeRequestParams < TuloCommon::RequestParamsBase 
    attribute :id, :integer    
    attribute :document_type_id, :integer    
    attribute :document_destination_id, :integer    
    attribute :processing_time, :integer

    def initialize(params)
      super(
        id: params.document_processing_time.id&.value,
        document_type_id: params.document_processing_time.document_type_id&.value,
        document_destination_id: params.document_processing_time.document_destination_id&.value,
        processing_time: params.document_processing_time.processing_time&.value
      )
    end
  end
end
