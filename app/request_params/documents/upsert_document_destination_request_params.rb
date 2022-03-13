# frozen_string_literal: true

module Documents
  class UpsertDocumentDestinationRequestParams < TuloCommon::RequestParamsBase 
    attribute :id, :integer    
    attribute :document_destination_name, :string    
    attribute :email, :string    
    attribute :phone, :string
    attribute :description, :string

    def initialize(params)
      super(
        id: params.document_destination.id&.value,
        document_destination_name: params.document_destination.document_destination_name&.value,
        email: params.document_destination.email&.value,
        phone: params.document_destination.phone&.value,
        description: params.document_destination.description&.value
      )
    end
  end
end
