# frozen_string_literal: true

module Documents
  class PresenterBase
    include ProtoGeneratable

    def initialize
      raise NotImplementedError
    end

    def generate_response
      raise NotImplementedError
    end
  end
end