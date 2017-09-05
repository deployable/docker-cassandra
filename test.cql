create keyspace if not exists stat with replication = { 'class' : 'NetworkTopologyStrategy', 'TDC1':3 };
CREATE TABLE if not exists stat.generic ( id UUID PRIMARY KEY, name text, ts timestamp, value text );
insert into stat.generic ( id, name, ts, value ) values ( uuid(), 'one', toTimestamp(now()), '{"some":"json"}' );
select * from stat.generic;
