#!/bin/sh
set -e          # 遇到任何錯誤立即停止執行
set -o pipefail # 捕捉 pipeline 中間的錯誤

# Example if the web app requires Linux specific features
go env -w GOOS=linux


go build -gcflags="all=-N -l" -buildvcs=false -o $OUTPUT_FOLDER/web-app $SOURCE_FOLDER