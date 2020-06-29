#!/bin/sh
set -e

rails db:setup

exec "$@"
