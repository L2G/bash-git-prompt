#!/bin/bash

# Stacked Git helper, modeled loosely after gitstatus.sh

# Defaults
stgit_active=0            # 0 = branch not inited or stg not present
stgit_all_patches=0       # total count of patches in the default series
stgit_applied_patches=0   # count of applied patches
stgit_top=""              # name of topmost patch, if any are applied

stgit="$(which stg)"
if [ -x "${stgit}" ]; then
  if ${stgit} series >& /dev/null; then stgit_active=1; fi
  if [ $stgit_active == 1 ]; then
    stgit_all_patches=$(${stgit} series -ca)
    stgit_applied_patches=$(${stgit} series -cA)
    stgit_top="$(${stgit} top 2> /dev/null)"
  fi
fi

for w in $stgit_active $stgit_all_patches $stgit_applied_patches "${stgit_top}"; do
  echo "$w"
done
