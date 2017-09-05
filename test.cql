CREATE KEYSPACE IF NOT EXISTS stat WITH REPLICATION = { 'class' : 'NetworkTopologyStrategy', 'TDC1':3 };
CREATE TABLE IF NOT EXISTS stat.generic ( id UUID PRIMARY KEY, name text, ts timestamp, value text );
INSERT INTO stat.generic ( id, name, ts, value ) VALUES ( uuid(), 'one', toTimestamp(now()), '{"some":"json"}' );
SELECT * FROM stat.generic;
