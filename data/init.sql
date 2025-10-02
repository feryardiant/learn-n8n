CREATE TABLE IF NOT EXISTS public.attachments (
  "id" varchar NOT NULL,
  "caption" varchar,
  "filename" varchar NOT NULL,
  "filetype" varchar NOT NULL,
  "mimetype" varchar NOT NULL,
  "timestamp" timestamp with time zone NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.customers (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "phone" varchar(15) NOT NULL,
  "name" varchar(50),
  "address" varchar(100),
  PRIMARY KEY (id),
  UNIQUE (phone)
);

CREATE TABLE IF NOT EXISTS public.chat_sessions (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "customer_id" uuid references customers(id),
  "subject" varchar(255),
  "location" varchar(255),
  "started_at" timestamp with time zone,
  "finished_at" timestamp with time zone,
  PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.attachments OWNER to automation;
ALTER TABLE IF EXISTS public.customers OWNER to automation;
ALTER TABLE IF EXISTS public.chat_sessions OWNER to automation;

CREATE SCHEMA IF NOT EXISTS gowa;
