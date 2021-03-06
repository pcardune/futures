#!/bin/bash

# browser-dirname.js is required for all modules

mkdir -p release
cat \
  vendor/require-kiss.js \
  futures/browser-dirname.js \
  futures/future.js \
  futures/join.js \
  futures/sequence.js \
  futures/emitter.js \
  futures/asyncify.js \
  futures/chainify.js \
  futures/loop.js \
  futures/index.js \
  > release/futures.all.js

cat \
  examples/asyncify.js \
  examples/futures.js \
  examples/loop.js \
  examples/promise.js \
  examples/sequence.js \
  examples/emitter.js \
  examples/join.js \
  examples/chainify.js \
  examples/subscription.js \
  > release/futures.tests.all.js
sed -i "s:/../futures:futures:g" release/futures.tests.all.js
