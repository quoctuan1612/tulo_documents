# frozen_string_literal: true

module Documents
  class DocumentTypesPresenter < PresenterBase
    def initialize(document_types)
      @document_types = document_types
    end

    def generate_response
      Tulo::Documents::V1::DocumentTypesResponse.new(
        document_types: @document_types.each_with_object([]) do |document_type, arr|
          arr << Tulo::Documents::V1::DocumentType.new(
            id: proto_int64(document_type.id),
            document_type_name: proto_string(document_type.document_type_name),
            description: proto_string(document_type.description)
          )
        end
      )
    end
  end
end