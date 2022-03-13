# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: tulo/documents/v1/document_destination.proto for package 'tulo.documents.v1'

require 'grpc'
require 'tulo/documents/v1/document_destination_pb'

module Tulo
  module Documents
    module V1
      module DocumentDestinationService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'tulo.documents.v1.DocumentDestinationService'

          rpc :GetDocumentDestinations, ::Google::Protobuf::Empty, ::Tulo::Documents::V1::DocumentDestinationsResponse
          rpc :UpsertDocumentDestination, ::Tulo::Documents::V1::UpsertDocumentDestinationRequest, ::Tulo::Documents::V1::UpsertDocumentDestinationResponse
          rpc :GetDocumentDestinationById, ::Tulo::Documents::V1::DocumentDestinationIdRequest, ::Tulo::Documents::V1::DocumentDestinationResponse
          rpc :DeleteDocumentDestinationById, ::Tulo::Documents::V1::DocumentDestinationIdRequest, ::Tulo::Common::V1::CommonDeleteResponse
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
