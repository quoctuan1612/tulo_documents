# frozen_string_literal: true

module Documents
  class GetDocumentProcessingTimesService
    include ActiveModel::Model 
    
    attr_reader :results

    def initialize(auth_header)
      @auth_header = auth_header
    end

    def run!
      document_processing_times = DocumentProcessingTime.all

      @results = document_processing_times
    end
  end
end