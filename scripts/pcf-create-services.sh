#!/usr/bin/env bash

cf cs p.mysql db-small dadjokes-db
cf cs p-config-server standard config-server -c '{"skipSslValidation": true, "git": { "uri": "https://github.com/spring-cloud-services-samples/dad-joke", "searchPaths": "configuration" } }'
cf cs p-service-registry standard service-registry
cf cs p-circuit-breaker-dashboard standard circuit-breaker
