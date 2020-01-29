#!/bin/bash

# delete apps
cf delete dadjokes-service -f
cf delete dadjokes-ui -f

# delete services
cf delete-service dadjokess-db -f
cf delete-service config-server -f
cf delete-service service-registry -f
cf delete-service circuit-breaker -f
