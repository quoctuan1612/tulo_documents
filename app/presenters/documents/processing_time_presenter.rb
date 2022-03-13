# frozen_string_literal: true

module Documents
  class ProcessingTimePresenter < PresenterBase
    def initialize(processing_time)
      @processing_time = processing_time
    end

    def generate_response
      Tulo::Documents::V1::ProcessingTimeResponse.new(
        processing_time: proto_int32(@processing_time)
      )
    end
  end
end