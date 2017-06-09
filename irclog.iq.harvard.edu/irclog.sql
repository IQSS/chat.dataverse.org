DROP TABLE irclog;

CREATE TABLE irclog
(
  id serial NOT NULL,
  channel character varying(255) NOT NULL,
  day character varying(255) NOT NULL,
  nick character varying(255),
  timestamp character varying(255) NOT NULL,
  --line text NOT NULL,
  spam character varying(255) NOT NULL,
  in_summary character varying(255) NOT NULL,
  CONSTRAINT irclog_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);

-- FIXME: remove hard coded "pdurbin"
ALTER TABLE irclog OWNER TO pdurbin;

COPY irclog(id,channel,day,nick,timestamp,spam,in_summary) FROM '/tmp/irclog.tsv' WITH (DELIMITER E'\t', FORMAT CSV, HEADER true);
