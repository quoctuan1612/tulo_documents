# frozen_string_literal: true

module Documents
    class UpsertDocumentIncomingService
      attr_reader :result
  
      def initialize(request_params, auth_header)
        @request_params = request_params
        @auth_header = auth_header
      end
  
      def run!
        document_incoming = DocumentIncoming.find_or_initialize_by(id: @request_params.id)

        document_incoming.document_name = @request_params.document_name
        document_incoming.document_type_id = @request_params.document_type_id
        document_incoming.document_destination_id = @request_params.document_destination_id
        document_incoming.abstract = @request_params.abstract
        document_incoming.file_name = @request_params.file_name.to_s

        document_incoming.save
        save_file_path(document_incoming.id, document_incoming.file_name)
        @result = DocumentIncoming.find_by(id:document_incoming.id)
      end

      private

      def save_file_path id, file_name
        if file_name.present?
          DocumentIncoming.where(id: id).update_all(
            file_path: File.join('public', 'uploads', 'documents_incoming', "#{id}", file_name)
          )
        else
          DocumentIncoming.where(id: id).update_all(file_path: "")
        end
      end
    end
  end