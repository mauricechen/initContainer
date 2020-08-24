#!/bin/env bash
. mcInitLib.set
fun=$1
shift
install"${fun}" "$@"
