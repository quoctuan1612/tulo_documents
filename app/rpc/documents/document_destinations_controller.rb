# frozen_string_literal: true

module Documents
  class DocumentDestinationsController < ::Gruf::Controllers::Base
    bind ::Tulo::Documents::V1::DocumentDestinationService::Service    

    def get_document_destinations
      service = Documents::GetDocumentDestinationsService.new(nil)
      service.run!
      presenter = Documents::DocumentDestinationsPresenter.new(service.results)
      presenter.generate_response
    end

    def get_document_destination_by_id
      request_params = Documents::DocumentDestinationIdRequestParams.new(request.message)
      request_params.validate!
      service = Documents::GetDocumentDestinationByIdService.new(request_params, nil)
      service.run!
      presenter = Documents::DocumentDestinationPresenter.new(service.result)
      presenter.generate_response
    end

    def upsert_document_destination
      request_params = Documents::UpsertDocumentDestinationRequestParams.new(request.message)
      request_params.validate!
      service = Documents::UpsertDocumentDestinationService.new(request_params, nil)
      service.run!
      presenter = Documents::DocumentDestinationPresenter.new(service.result)
      presenter.generate_response
    end

    def delete_document_destination_by_id
      request_params = Documents::DocumentDestinationIdRequestParams.new(request.message)
      request_params.validate!
      service = Documents::DeleteDocumentDestinationTimeService.new(request_params, nil)
      service.run!
      presenter = Documents::DeleteDocumentDestinationPresenter.new(service.result)
      presenter.generate_response
    end
  end
end