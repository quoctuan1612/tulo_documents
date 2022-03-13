# frozen_string_literal: true

module Documents
  class DocumentDestinationsPresenter < PresenterBase
    def initialize(document_destinations)
      @document_destinations = document_destinations
    end

    def generate_response
      Tulo::Documents::V1::DocumentDestinationsResponse.new(
        document_destinations: @document_destinations.each_with_object([]) do |document_destination, arr|
          arr << Tulo::Documents::V1::DocumentDestination.new(
            id: proto_int64(document_destination.id),
            document_destination_name: proto_string(document_destination.document_destination_name),
            email: proto_string(document_destination.email),
            phone: proto_string(document_destination.phone),
            description: proto_string(document_destination.description),
            created_at: proto_string(document_destination.created_at),
            updated_at: proto_string(document_destination.updated_at)
          )
        end
      )
    end
  end
end