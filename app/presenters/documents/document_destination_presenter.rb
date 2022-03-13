# frozen_string_literal: true

module Documents
  class DocumentDestinationPresenter < PresenterBase
    def initialize(document_destination)
      @document_destination = document_destination
    end

    def generate_response
      Tulo::Documents::V1::DocumentDestinationResponse.new(
        document_destination: Tulo::Documents::V1::DocumentDestination.new(
          id: proto_int64(@document_destination.id),
          document_destination_name: proto_string(@document_destination.document_destination_name),
          email: proto_string(@document_destination.email),
          phone: proto_string(@document_destination.phone),
          description: proto_string(@document_destination.description),
          created_at: proto_string(@document_destination.created_at),
          updated_at: proto_string(@document_destination.updated_at)
        )
      )
    end
  end
end