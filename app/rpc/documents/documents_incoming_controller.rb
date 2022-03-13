# frozen_string_literal: true

module Documents
    class DocumentsIncomingController < ::Gruf::Controllers::Base
      bind ::Tulo::Documents::V1::DocumentIncomingService::Service    
  
      def get_documents_incoming
        service = Documents::GetDocumentsIncomingService.new(nil)
        service.run!
        presenter = Documents::DocumentsIncomingPresenter.new(service.results)
        presenter.generate_response
      end
  
      def get_document_incoming_by_id
        request_params = Documents::DocumentIncomingIdRequestParams.new(request.message)
        request_params.validate!
        service = Documents::GetDocumentIncomingByIdService.new(request_params, nil)
        service.run!
        presenter = Documents::DocumentIncomingPresenter.new(service.result)
        presenter.generate_response
      end
  
      def upsert_document_incoming
        request_params = Documents::UpsertDocumentIncomingRequestParams.new(request.message)
        request_params.validate!
        service = Documents::UpsertDocumentIncomingService.new(request_params, nil)
        service.run!
        presenter = Documents::DocumentIncomingPresenter.new(service.result)
        presenter.generate_response
      end
  
      def delete_document_incoming_by_id
        request_params = Documents::DocumentIncomingIdRequestParams.new(request.message)
        request_params.validate!
        service = Documents::DeleteDocumentIncomingService.new(request_params, nil)
        service.run!
        presenter = Documents::DeleteDocumentIncomingPresenter.new(service.result)
        presenter.generate_response
      end
    end
  end