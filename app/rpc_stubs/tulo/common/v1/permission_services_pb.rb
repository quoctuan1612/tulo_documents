# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: tulo/common/v1/permission.proto for package 'tulo.common.v1'

require 'grpc'
require 'tulo/common/v1/permission_pb'

module Tulo
  module Common
    module V1
      module PermissionService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'tulo.common.v1.PermissionService'

          rpc :UpsertPermission, ::Tulo::Common::V1::UpsertPermissionRequest, ::Tulo::Common::V1::UpsertPermissionResponse
          rpc :GetPermissionByRoleId, ::Tulo::Common::V1::IdRequest, ::Tulo::Common::V1::PermissionResponse
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
