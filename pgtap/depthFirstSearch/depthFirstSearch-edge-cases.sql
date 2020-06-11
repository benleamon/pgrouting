\i setup.sql

SELECT plan(18);

SELECT todo_start('Must add all edge cases');

-- 0 edge, 0 vertex (directed)

PREPARE depthFirstSearch1 AS
SELECT *
FROM pgr_depthFirstSearch(
    'SELECT id, source, target, cost, reverse_cost
    FROM edge_table
    WHERE id > 18',
    5
);

PREPARE depthFirstSearch2 AS
SELECT *
FROM pgr_depthFirstSearch(
    'SELECT id, source, target, cost, reverse_cost
    FROM edge_table
    WHERE id > 18',
    ARRAY[5]
);

PREPARE depthFirstSearch3 AS
SELECT *
FROM pgr_depthFirstSearch(
    'SELECT id, source, target, cost, reverse_cost
    FROM edge_table
    WHERE id > 18',
    ARRAY[2, 5]
);

PREPARE depthFirstSearch4 AS
SELECT *
FROM pgr_depthFirstSearch(
    'SELECT id, source, target, cost, reverse_cost
    FROM edge_table
    WHERE id > 18',
    5, max_depth => 2
);

PREPARE depthFirstSearch5 AS
SELECT *
FROM pgr_depthFirstSearch(
    'SELECT id, source, target, cost, reverse_cost
    FROM edge_table
    WHERE id > 18',
    ARRAY[5], max_depth => 2
);

PREPARE depthFirstSearch6 AS
SELECT *
FROM pgr_depthFirstSearch(
    'SELECT id, source, target, cost, reverse_cost
    FROM edge_table
    WHERE id > 18',
    ARRAY[2, 5], max_depth => 2
);

SELECT is_empty('depthFirstSearch1', '1: Graph with 0 edge and 0 vertex -> Empty row is returned');
SELECT is_empty('depthFirstSearch2', '2: Graph with 0 edge and 0 vertex -> Empty row is returned');
SELECT is_empty('depthFirstSearch3', '3: Graph with 0 edge and 0 vertex -> Empty row is returned');
SELECT is_empty('depthFirstSearch4', '4: Graph with 0 edge and 0 vertex -> Empty row is returned');
SELECT is_empty('depthFirstSearch5', '5: Graph with 0 edge and 0 vertex -> Empty row is returned');
SELECT is_empty('depthFirstSearch6', '6: Graph with 0 edge and 0 vertex -> Empty row is returned');

-- 0 edge, 0 vertex (undirected)

PREPARE depthFirstSearch7 AS
SELECT *
FROM pgr_depthFirstSearch(
    'SELECT id, source, target, cost, reverse_cost
    FROM edge_table
    WHERE id > 18',
    5, directed => false
);

PREPARE depthFirstSearch8 AS
SELECT *
FROM pgr_depthFirstSearch(
    'SELECT id, source, target, cost, reverse_cost
    FROM edge_table
    WHERE id > 18',
    ARRAY[5], directed => false
);

PREPARE depthFirstSearch9 AS
SELECT *
FROM pgr_depthFirstSearch(
    'SELECT id, source, target, cost, reverse_cost
    FROM edge_table
    WHERE id > 18',
    ARRAY[2, 5], directed => false
);

PREPARE depthFirstSearch10 AS
SELECT *
FROM pgr_depthFirstSearch(
    'SELECT id, source, target, cost, reverse_cost
    FROM edge_table
    WHERE id > 18',
    5, directed => false, max_depth => 2
);

PREPARE depthFirstSearch11 AS
SELECT *
FROM pgr_depthFirstSearch(
    'SELECT id, source, target, cost, reverse_cost
    FROM edge_table
    WHERE id > 18',
    ARRAY[5], directed => false, max_depth => 2
);

PREPARE depthFirstSearch12 AS
SELECT *
FROM pgr_depthFirstSearch(
    'SELECT id, source, target, cost, reverse_cost
    FROM edge_table
    WHERE id > 18',
    ARRAY[2, 5], directed => false, max_depth => 2
);

SELECT is_empty('depthFirstSearch7', '7: Graph with 0 edge and 0 vertex -> Empty row is returned');
SELECT is_empty('depthFirstSearch8', '8: Graph with 0 edge and 0 vertex -> Empty row is returned');
SELECT is_empty('depthFirstSearch9', '9: Graph with 0 edge and 0 vertex -> Empty row is returned');
SELECT is_empty('depthFirstSearch10', '10: Graph with 0 edge and 0 vertex -> Empty row is returned');
SELECT is_empty('depthFirstSearch11', '11: Graph with 0 edge and 0 vertex -> Empty row is returned');
SELECT is_empty('depthFirstSearch12', '12: Graph with 0 edge and 0 vertex -> Empty row is returned');

-- vertex not present in graph (directed)

PREPARE depthFirstSearch13 AS
SELECT *
FROM pgr_depthFirstSearch(
    'SELECT id, source, target, cost, reverse_cost
    FROM edge_table',
    -10
);

PREPARE depthFirstSearch14 AS
SELECT *
FROM pgr_depthFirstSearch(
    'SELECT id, source, target, cost, reverse_cost
    FROM edge_table',
    ARRAY[-10]
);

PREPARE depthFirstSearch15 AS
SELECT *
FROM pgr_depthFirstSearch(
    'SELECT id, source, target, cost, reverse_cost
    FROM edge_table',
    ARRAY[20, -10]
);

PREPARE depthFirstSearch16 AS
SELECT *
FROM pgr_depthFirstSearch(
    'SELECT id, source, target, cost, reverse_cost
    FROM edge_table',
    -10, max_depth => 2
);

PREPARE depthFirstSearch17 AS
SELECT *
FROM pgr_depthFirstSearch(
    'SELECT id, source, target, cost, reverse_cost
    FROM edge_table',
    ARRAY[-10], max_depth => 2
);

PREPARE depthFirstSearch18 AS
SELECT *
FROM pgr_depthFirstSearch(
    'SELECT id, source, target, cost, reverse_cost
    FROM edge_table',
    ARRAY[20, -10], max_depth => 2
);

SELECT is_empty('depthFirstSearch13', '13: Vertex not present in graph -> Empty row is returned');
SELECT is_empty('depthFirstSearch14', '14: Vertex not present in graph -> Empty row is returned');
SELECT is_empty('depthFirstSearch15', '15: Vertex not present in graph -> Empty row is returned');
SELECT is_empty('depthFirstSearch16', '16: Vertex not present in graph -> Empty row is returned');
SELECT is_empty('depthFirstSearch17', '17: Vertex not present in graph -> Empty row is returned');
SELECT is_empty('depthFirstSearch18', '18: Vertex not present in graph -> Empty row is returned');


SELECT todo_end();

SELECT * FROM finish();
ROLLBACK;
