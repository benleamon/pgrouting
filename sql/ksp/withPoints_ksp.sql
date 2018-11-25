/*PGR-GNU*****************************************************************
File: withPoints_ksp.sql

Copyright (c) 2015 Celia Virginia Vergara Castillo
vicky_vergara@hotmail.com

------

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

********************************************************************PGR-GNU*/

--------------------
-- pgr_withPointsKSP
--------------------

CREATE OR REPLACE FUNCTION _pgr_withPointsKSP(
    edges_sql TEXT,
    points_sql TEXT,
    start_pid BIGINT,
    end_pid BIGINT,
    k INTEGER,

    directed BOOLEAN,
    heap_paths BOOLEAN,
    driving_side CHAR,
    details BOOLEAN,

    OUT seq INTEGER, OUT path_id INTEGER, OUT path_seq INTEGER,
    OUT node BIGINT, OUT edge BIGINT,
    OUT cost FLOAT, OUT agg_cost FLOAT)
  RETURNS SETOF RECORD AS
    'MODULE_PATHNAME', 'withPoints_ksp'
    LANGUAGE c STABLE STRICT;

CREATE OR REPLACE FUNCTION pgr_withPointsKSP(
    TEXT,    -- edges_sql (required)
    TEXT,    -- points_sql (required)
    BIGINT,  -- from_vid (required)
    BIGINT,  -- to_vid (required)
    INTEGER, -- K (required)

    directed BOOLEAN DEFAULT TRUE,
    heap_paths BOOLEAN DEFAULT FALSE,
    driving_side CHAR DEFAULT 'b',
    details BOOLEAN DEFAULT FALSE,

    OUT seq INTEGER, OUT path_id INTEGER, OUT path_seq INTEGER,
    OUT node BIGINT, OUT edge BIGINT,
    OUT cost FLOAT, OUT agg_cost FLOAT)
RETURNS SETOF RECORD AS
$BODY$
    SELECT *
    FROM _pgr_withPointsKSP(_pgr_get_statement($1), _pgr_get_statement($2), $3, $4, $5, $6, $7, $8, $9);
$BODY$
LANGUAGE SQL VOLATILE STRICT
COST 100
ROWS 1000;

-- COMMENTS

COMMENT ON FUNCTION _pgr_withPointsKSP(TEXT, TEXT, BIGINT, BIGINT, INTEGER, BOOLEAN, BOOLEAN, CHAR, BOOLEAN)
IS 'pgRouting internal function';

COMMENT ON FUNCTION pgr_withPointsKSP(TEXT, TEXT, BIGINT, BIGINT, INTEGER, BOOLEAN, BOOLEAN, CHAR, BOOLEAN)
IS 'PROPOSED pgr_withPointsKSP -- edges_sql(id,source,target,cost[,reverse_cost]), points_sql([pid],edge_id,fraction[,side]), from_vid, to_vid, K [,directed, heap_paths, driving_side, details]';

