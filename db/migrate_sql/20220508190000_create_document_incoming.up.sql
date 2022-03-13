CREATE TABLE document_incomings (
  id bigserial PRIMARY KEY,

  document_name varchar NOT NULL,

  document_type_id int8 NOT NULL,

  document_destination_id int8 NOT NULL,

  abstract varchar NOT NULL,

  file_path varchar NULL,

  file_name varchar NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL
);

COMMENT ON TABLE document_processing_times IS 'Document Processing Time';

-- Column comments

COMMENT ON COLUMN document_processing_times.id IS 'ID';

COMMENT ON COLUMN document_processing_times.document_type_id IS 'Document Type ID';

COMMENT ON COLUMN document_processing_times.document_destination_id IS 'Document Destination ID';

COMMENT ON COLUMN document_processing_times.processing_time IS 'Processing Time';

COMMENT ON COLUMN document_processing_times.created_at IS 'Created At';

COMMENT ON COLUMN document_processing_times.updated_at IS 'Updated At';
