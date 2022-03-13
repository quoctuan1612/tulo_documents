# frozen_string_literal: true

module Documents
  class DocumentProcessingTimesController < ::Gruf::Controllers::Base
    bind ::Tulo::Documents::V1::DocumentProcessingTimeService::Service    

    def get_document_processing_times
      service = Documents::GetDocumentProcessingTimesService.new(nil)
      service.run!
      presenter = Documents::DocumentProcessingTimesPresenter.new(service.results)
      presenter.generate_response
    end

    def get_document_processing_time_by_id
      request_params = Documents::DocumentProcessingTimeIdRequestParams.new(request.message)
      request_params.validate!
      service = Documents::GetDocumentProcessingTimeByIdService.new(request_params, nil)
      service.run!
      presenter = Documents::DocumentProcessingTimePresenter.new(service.result)
      presenter.generate_response
    end

    def upsert_document_processing_time
      request_params = Documents::UpsertDocumentProcessingTimeRequestParams.new(request.message)
      request_params.validate!
      service = Documents::UpsertDocumentProcessingTimeService.new(request_params, nil)
      service.run!
      presenter = Documents::DocumentProcessingTimePresenter.new(service.result)
      presenter.generate_response
    end

    def delete_document_processing_time_by_id
      request_params = Documents::DocumentProcessingTimeIdRequestParams.new(request.message)
      request_params.validate!
      service = Documents::DeleteDocumentProcessingTimeService.new(request_params, nil)
      service.run!
      presenter = Documents::DeleteDocumentProcessingTimePresenter.new(service.result)
      presenter.generate_response
    end

    def get_processing_time
      request_params = Documents::ProcessingTimeRequestParams.new(request.message)
      request_params.validate!
      service = Documents::GetProcessingTimeService.new(request_params, nil)
      service.run!
      presenter = Documents::ProcessingTimePresenter.new(service.result)
      presenter.generate_response
    end
  end
end