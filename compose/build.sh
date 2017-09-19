#!/bin/bash
cd "$(dirname "$0")"

rm docker-compose.yml
cat > ./docker-compose.yml << EOF
version: '2'
services:

EOF

tail -n +3 -q ./*yml >> docker-compose.yml
