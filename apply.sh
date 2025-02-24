#! /usr/bin/env bash
set -eux

dir="$(cd "$(dirname "${BASH_SOURCE[0]}")"; pwd)"

"$dir/guix" pull -C "$dir/channels.locked.scm"
"$dir/guix" home reconfigure "$dir/home.scm"
