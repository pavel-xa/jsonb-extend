/* contrib/test_parser/test_parser--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION jsonb_extend" to load this file. \quit

CREATE FUNCTION jsonb_extend(variadic jsonb[])
RETURNS jsonb
AS '$libdir/jsonb_extend'
LANGUAGE C STRICT IMMUTABLE;

CREATE FUNCTION jsonb_deep_extend(bool, variadic jsonb[])
RETURNS jsonb
AS '$libdir/jsonb_extend'
LANGUAGE C STRICT IMMUTABLE;
