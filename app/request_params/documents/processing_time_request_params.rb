# frozen_string_literal: true

module Documents
  class ProcessingTimeRequestParams < TuloCommon::RequestParamsBase
    attribute :document_type_id, :integer
    attribute :document_destination_id, :integer

    def initialize(params)
      super(
        document_type_id: params.document_type_id&.value,
        document_destination_id: params.document_destination_id&.value
      )
    end
  end
end
