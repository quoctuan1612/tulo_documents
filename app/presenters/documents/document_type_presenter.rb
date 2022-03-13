# frozen_string_literal: true

module Documents
  class DocumentTypePresenter < PresenterBase
    def initialize(document_type)
      @document_type = document_type
    end

    def generate_response
      Tulo::Documents::V1::DocumentTypeResponse.new(
        document_type: Tulo::Documents::V1::DocumentType.new(
          id: proto_int64(@document_type.id),
          document_type_name: proto_string(@document_type.document_type_name),
          description: proto_string(@document_type.description)
        )
      )
    end
  end
end