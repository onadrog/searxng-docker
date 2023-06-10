#!/usr/bin/env bash

echo SEARXNG_SECRET=\"$(openssl rand -hex 32)\" >| secret.env
