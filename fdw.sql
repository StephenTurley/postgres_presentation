CREATE EXTENSION multicorn;

CREATE SERVER multicorn_neo4j FOREIGN DATA WRAPPER multicorn
OPTIONS (
  wrapper  'neo4jPg.neo4jfdw.Neo4jForeignDataWrapper',
  url      'bolt://neo4j:7687',
  user     'neo4j',
  password 'secret'
);

CREATE FOREIGN TABLE fancy_books (
  book varchar
  ) SERVER multicorn_neo4j OPTIONS (
  cypher 'MATCH (b:Book) RETURN b.title as book'
);
