# frozen_string_literal: true

module Documents
  class DocumentProcessingTimesPresenter < PresenterBase
    def initialize(document_processing_times)
      @document_processing_times = document_processing_times
    end

    def generate_response
      Tulo::Documents::V1::DocumentProcessingTimesResponse.new(
        document_processing_times: @document_processing_times.each_with_object([]) do |document_processing_time, arr|
          arr << Tulo::Documents::V1::DocumentProcessingTime.new(
            id: proto_int64(document_processing_time.id),
            document_type_id: proto_int64(document_processing_time.document_type_id),
            document_destination_id: proto_int64(document_processing_time.document_destination_id),
            processing_time: proto_int32(document_processing_time.processing_time),
            created_at: proto_string(document_processing_time.created_at),
            updated_at: proto_string(document_processing_time.updated_at)
          )
        end
      )
    end
  end
end