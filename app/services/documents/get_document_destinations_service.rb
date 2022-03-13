# frozen_string_literal: true

module Documents
  class GetDocumentDestinationsService
    include ActiveModel::Model 
    
    attr_reader :results

    def initialize(auth_header)
      @auth_header = auth_header
    end

    def run!
      document_destinations = DocumentDestination.all

      @results = document_destinations
    end
  end
end