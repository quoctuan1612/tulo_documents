# frozen_string_literal: true

module Documents
    class UpsertDocumentIncomingRequestParams < TuloCommon::RequestParamsBase 
      attribute :id, :integer    
      attribute :document_name, :string    
      attribute :document_type_id, :integer    
      attribute :document_destination_id, :integer
      attribute :abstract, :string
      attribute :file_path, :string
      attribute :file_name, :string
  
      def initialize(params)
        super(
          id: params.document_incoming.id&.value,
          document_name: params.document_incoming.document_name&.value,
          document_type_id: params.document_incoming.document_type_id&.value,
          document_destination_id: params.document_incoming.document_destination_id&.value,
          abstract: params.document_incoming.abstract&.value,
          file_path: params.document_incoming.file_path&.value,
          file_name: params.document_incoming.file_name&.value
        )
      end
    end
  end