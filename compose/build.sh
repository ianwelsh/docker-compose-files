#!/bin/bash
cd "$(dirname "$0")"

if [ -f docker-compose.yml ]; then
    rm docker-compose.yml
fi

cat > ./docker-compose.yml << EOF
version: '2'
services:

EOF

tail -n +3 -q ./*yml >> docker-compose.yml
