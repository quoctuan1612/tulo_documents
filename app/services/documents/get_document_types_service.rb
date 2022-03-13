# frozen_string_literal: true

module Documents
  class GetDocumentTypesService
    include ActiveModel::Model 
    
    attr_reader :results

    def initialize(auth_header)
      @auth_header = auth_header
    end

    def run!
      document_types = DocumentType.all

      @results = document_types
    end
  end
end