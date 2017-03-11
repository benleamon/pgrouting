#VERSION pgrouting 2.2.0
#TYPES
pgr_costresult
pgr_costresult3
pgr_geomresult
FUNCTIONS
pgr_alphashape(text,double precision)
pgr_analyzegraph(text,double precision,text,text,text,text,text)
pgr_analyzeoneway(text,text[],text[],text[],text[],boolean,text,text,text)
pgr_apspjohnson(text)
pgr_apspwarshall(text,boolean,boolean)
pgr_astar(text,integer,integer,boolean,boolean)
pgr_bdastar(text,integer,integer,boolean,boolean)
pgr_bddijkstra(text,integer,integer,boolean,boolean)
_pgr_checkverttab(text,text[],integer,text)
_pgr_createindex(text,text,text,integer,text)
_pgr_createindex(text,text,text,text,integer,text)
pgr_createtopology(text,double precision,text,text,text,text,text,boolean)
pgr_createverticestable(text,text,text,text,text)
pgr_dijkstracost(text,anyarray,anyarray,boolean)
pgr_dijkstracost(text,anyarray,bigint,boolean)
pgr_dijkstracost(text,bigint,anyarray,boolean)
pgr_dijkstracost(text,bigint,bigint,boolean)
pgr_dijkstra(text,anyarray,anyarray,boolean)
_pgr_dijkstra(text,anyarray,anyarray,boolean,boolean)
pgr_dijkstra(text,anyarray,bigint,boolean)
_pgr_dijkstra(text,anyarray,bigint,boolean,boolean)
pgr_dijkstra(text,bigint,anyarray,boolean)
_pgr_dijkstra(text,bigint,anyarray,boolean,boolean)
pgr_dijkstra(text,bigint,bigint)
pgr_dijkstra(text,bigint,bigint,boolean)
_pgr_dijkstra(text,bigint,bigint,boolean,boolean)
pgr_dijkstra(text,integer,integer,boolean,boolean)
pgr_dijkstravia(text,anyarray,boolean,boolean,boolean)
_pgr_drivingdistance(text,anyarray,double precision,boolean,boolean)
pgr_drivingdistance(text,anyarray,double precision,boolean,boolean)
_pgr_drivingdistance(text,bigint,double precision,boolean)
pgr_drivingdistance(text,bigint,double precision,boolean)
pgr_drivingdistance(text,bigint,double precision,boolean,boolean)
_pgr_endpoint(geometry)
pgr_endpoint(geometry)
pgr_flipedges(geometry[])
pgr_floydwarshall(text,boolean)
pgr_getcolumnname(text,text)
_pgr_getcolumnname(text,text,integer,text)
_pgr_getcolumnname(text,text,text,integer,text)
_pgr_getcolumntype(text,text,integer,text)
_pgr_getcolumntype(text,text,text,integer,text)
_pgr_get_statement(text)
pgr_gettablename(text)
_pgr_gettablename(text,integer,text)
pgr_gsoc_vrppdtw(text,integer,integer)
pgr_iscolumnindexed(text,text)
_pgr_iscolumnindexed(text,text,integer,text)
_pgr_iscolumnindexed(text,text,text,integer,text)
_pgr_iscolumnintable(text,text)
pgr_iscolumnintable(text,text)
pgr_johnson(text,boolean)
pgr_kdijkstracost(text,integer,integer[],boolean,boolean)
pgr_kdijkstrapath(text,integer,integer[],boolean,boolean)
_pgr_ksp(text,bigint,bigint,integer,boolean,boolean)
pgr_ksp(text,bigint,bigint,integer,boolean,boolean)
pgr_ksp(text,integer,integer,integer,boolean)
pgr_labelgraph(text,text,text,text,text,text)
_pgr_makedistancematrix(text)
_pgr_msg(integer,text,text)
pgr_nodenetwork(text,double precision,text,text,text,text,boolean)
_pgr_onerror(boolean,integer,text,text,text,text)
_pgr_parameter_check(text,text,boolean)
pgr_pointsaspolygon(character varying,double precision)
pgr_pointstodmatrix(geometry[],integer)
pgr_pointstovids(geometry[],text,double precision)
pgr_pointtoedgenode(text,geometry,double precision)
_pgr_pointtoid(geometry,double precision,text,integer)
_pgr_quote_ident(text)
pgr_quote_ident(text)
_pgr_startpoint(geometry)
pgr_startpoint(geometry)
pgr_texttopoints(text,integer)
pgr_trsp(text,integer,double precision,integer,double precision,boolean,boolean,text)
_pgr_trsp(text,integer,integer,boolean,boolean,text)
pgr_trsp(text,integer,integer,boolean,boolean,text)
pgr_trspviaedges(text,integer[],double precision[],boolean,boolean,text)
pgr_trspviavertices(text,anyarray,boolean,boolean,text)
_pgr_trspviavertices(text,integer[],boolean,boolean,text)
pgr_tsp(double precision[],integer,integer)
pgr_tsp(text,integer,integer)
pgr_version()
_pgr_versionless(text,text)
pgr_versionless(text,text)
pgr_vidstodmatrix(integer[],geometry[],text,double precision)
pgr_vidstodmatrix(text,integer[],boolean,boolean,boolean)
pgr_vrponedepot(text,text,text,integer)
pgr_withpointscost(text,text,anyarray,anyarray,boolean,character)
pgr_withpointscost(text,text,anyarray,bigint,boolean,character)
pgr_withpointscost(text,text,bigint,anyarray,boolean,character)
pgr_withpointscost(text,text,bigint,bigint,boolean,character)
pgr_withpointsdd(text,text,anyarray,double precision,boolean,character,boolean,boolean)
pgr_withpointsdd(text,text,bigint,double precision,boolean,character,boolean)
pgr_withpointsksp(text,text,bigint,bigint,integer,boolean,boolean,character,boolean)
pgr_withpoints(text,text,anyarray,anyarray,boolean,character,boolean)
_pgr_withpoints(text,text,anyarray,anyarray,boolean,character,boolean,boolean)
pgr_withpoints(text,text,anyarray,bigint,boolean,character,boolean)
_pgr_withpoints(text,text,anyarray,bigint,boolean,character,boolean,boolean)
pgr_withpoints(text,text,bigint,anyarray,boolean,character,boolean)
_pgr_withpoints(text,text,bigint,anyarray,boolean,character,boolean,boolean)
pgr_withpoints(text,text,bigint,bigint,boolean,character,boolean)
_pgr_withpoints(text,text,bigint,bigint,boolean,character,boolean,boolean)
_pgr_withpointsvia(text,bigint[],double precision[],boolean)
