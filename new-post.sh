#!/usr/bin/env bash

set -e
set -u

printf "Short title: " >&2 && read short_title
printf "Post title: " >&2 && read long_title
printf "Tags: " >&2 && read tags

echo "\
---
layout: post
title: "$long_title"
tags: ["$tags"]
---" > "_posts/$(date +%Y-%m-%d)-${short_title}.md"
