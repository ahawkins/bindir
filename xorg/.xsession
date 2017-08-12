#!/usr/bin/env bash

set -euo pipefail
set -o pipefail

export PATH="${HOME}/.local/bin:${PATH}"
# shellcheck disable=SC2046
export $(ev.sh auto)
