# frozen_string_literal: true

module Documents
  class DocumentTypesController < ::Gruf::Controllers::Base
    bind ::Tulo::Documents::V1::DocumentTypeService::Service    

    def get_document_types
      service = Documents::GetDocumentTypesService.new(nil)
      service.run!
      presenter = Documents::DocumentTypesPresenter.new(service.results)
      presenter.generate_response
    end

    def get_document_type_by_id
      request_params = Documents::DocumentTypeIdRequestParams.new(request.message)
      request_params.validate!
      service = Documents::GetDocumentTypeByIdService.new(request_params, nil)
      service.run!
      presenter = Documents::DocumentTypePresenter.new(service.result)
      presenter.generate_response
    end
  end
end