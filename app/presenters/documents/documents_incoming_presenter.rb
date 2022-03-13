# frozen_string_literal: true

module Documents
  class DocumentsIncomingPresenter < PresenterBase
    def initialize(documents_incoming)
      @documents_incoming = documents_incoming
    end

    def generate_response
      Tulo::Documents::V1::DocumentsIncomingResponse.new(
        documents_incoming: @documents_incoming.each_with_object([]) do |document_incoming, arr|
          arr << Tulo::Documents::V1::DocumentIncoming.new(
            id: proto_int64(document_incoming.id),
            document_name: proto_string(document_incoming.document_name),
            document_type_id: proto_int64(document_incoming.document_type_id),
            document_destination_id: proto_int64(document_incoming.document_destination_id),
            abstract: proto_string(document_incoming.abstract),
            file_path: proto_string(document_incoming.file_path),
            file_name: proto_string(document_incoming.file_name),
            created_at: proto_string(document_incoming.created_at),
            updated_at: proto_string(document_incoming.updated_at)
          )
        end
      )
    end
  end
end