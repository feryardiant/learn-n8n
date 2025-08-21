CREATE TABLE IF NOT EXISTS public.attachments
(
  id character varying NOT NULL,
  caption character varying,
  filename character varying NOT NULL,
  filetype character varying NOT NULL,
  mimetype character varying NOT NULL,
  "timestamp" timestamp with time zone NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.customers
(
  id uuid NOT NULL DEFAULT gen_random_uuid(),
  phone character varying(15) NOT NULL,
  name character varying(50),
  address character varying(100),
  PRIMARY KEY (id),
  UNIQUE (phone)
);

CREATE TABLE IF NOT EXISTS public.chat_sessions
(
  id uuid NOT NULL DEFAULT gen_random_uuid(),
  customer_id uuid references customers(id),
  subject character varying(255),
  started_at timestamp with time zone,
  finished_at timestamp with time zone,
  PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.attachments OWNER to automation;
ALTER TABLE IF EXISTS public.customers OWNER to automation;
ALTER TABLE IF EXISTS public.chat_sessions OWNER to automation;
