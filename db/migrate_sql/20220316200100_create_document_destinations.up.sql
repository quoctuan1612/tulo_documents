CREATE TABLE document_destinations (
  id bigserial PRIMARY KEY,

  document_destination_name varchar NOT NULL,

  email varchar NULL,

  phone varchar NULL,

  description varchar NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL
);

COMMENT ON TABLE document_destinations IS 'Document Destination Name';

-- Column comments

COMMENT ON COLUMN document_destinations.id IS 'ID';

COMMENT ON COLUMN document_destinations.document_destination_name IS 'Document Destination Name';

COMMENT ON COLUMN document_destinations.email IS 'Email';

COMMENT ON COLUMN document_destinations.phone IS 'Phone';

COMMENT ON COLUMN document_destinations.description IS 'Description';

COMMENT ON COLUMN document_destinations.created_at IS 'Created At';

COMMENT ON COLUMN document_destinations.updated_at IS 'Updated At';
