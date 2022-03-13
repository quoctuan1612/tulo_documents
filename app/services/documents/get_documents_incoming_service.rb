# frozen_string_literal: true

module Documents
  class GetDocumentsIncomingService
    include ActiveModel::Model 
    
    attr_reader :results

    def initialize(auth_header)
      @auth_header = auth_header
    end

    def run!
      documents_incoming = DocumentIncoming.all

      @results = documents_incoming
    end
  end
end