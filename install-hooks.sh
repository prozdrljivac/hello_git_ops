#!/bin/bash
# Install shared Git hooks by setting the core.hooksPath config

git config core.hooksPath .githooks
echo "Git hooks path set to .githooks"
