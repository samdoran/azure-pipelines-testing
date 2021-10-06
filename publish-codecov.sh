#!/usr/bin/env bash
# Upload code coverage reports to codecov.io.
# Multiple coverage files from multiple languages are accepted and aggregated after upload.
# Python coverage, as well as PowerShell and Python stubs can all be uploaded.

set -o pipefail -eu

curl --silent --show-error https://ansible-ci-files.s3.amazonaws.com/codecov/linux/codecov > codecov
chmod +x codecov

./codecov \
    -f coverage.xml
    -n project \
    || echo "Failed to upload code coverage report to codecov.io: ${file}"
