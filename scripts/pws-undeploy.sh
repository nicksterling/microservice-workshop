#!/bin/bash

# delete apps
cf delete dadjokes -f
cf delete dadjoke-ui -f

# delete services
cf delete-service dadjokes-db -f
cf delete-service dadjokes-config-server -f
cf delete-service dadjokes-service-registry -f
cf delete-service dadjokes-circuit-breaker-dashboard -f
