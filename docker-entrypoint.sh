#!/bin/bash
set -e

echo "🦄🦄 Showing up environment variables... 🦄🦄"
export
export > .env
echo "🌽🌽🌽 .env created"
cat .env

exec "$@"
