# frozen_string_literal: true

module Documents
  class DocumentProcessingTimeIdRequestParams < TuloCommon::RequestParamsBase
    attribute :id, :integer

    def initialize(params)
      super(
        id: params.id&.value
      )
    end
  end
end
