#!/usr/bin/env bash

cf create-service cleardb spark dadjokes-db
cf create-service p-config-server trial dadjokes-config-server -c '{"git": { "uri": "https://github.com/spring-cloud-services-samples/dad-joke", "searchPaths": "configuration" } }'
cf create-service p-service-registry trial dadjokes-service-registry
cf create-service p-circuit-breaker-dashboard trial dadjokes-circuit-breaker-dashboard
