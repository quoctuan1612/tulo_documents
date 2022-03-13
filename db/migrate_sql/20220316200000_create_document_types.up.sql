CREATE TABLE document_types (
  id bigserial PRIMARY KEY,

  document_type_name varchar NOT NULL,

  description varchar NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL
);

COMMENT ON TABLE document_types IS 'Document Type';

-- Column comments

COMMENT ON COLUMN document_types.id IS 'ID';

COMMENT ON COLUMN document_types.document_type_name IS 'Document Type Name';

COMMENT ON COLUMN document_types.description IS 'Description';

COMMENT ON COLUMN document_types.created_at IS 'Created At';

COMMENT ON COLUMN document_types.updated_at IS 'Updated At';
