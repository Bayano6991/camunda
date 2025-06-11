#!/bin/bash

helm install camunda camunda/camunda-platform \
  --set identityKeycloak.enabled=false \
  --set global.identity.auth.enabled=false \
  --set identity.enabled=false \
  --set connectors.enabled=false \
  --set operate.enabled=true \
  --set tasklist.enabled=true \
  --set zeebe.enabled=true \
  --set elasticsearch.enabled=true \
  --set elasticsearch.replicas=1
