#!/usr/bin/env sh

dropdb --if-exists meowtime
createdb meowtime
psql meowtime < data/cat_tables.sql
