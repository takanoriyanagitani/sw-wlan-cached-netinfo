#!/bin/sh

run_b(){
  ./WlanCachedNetworkInfo |
    fgrep WPA2 |
    fgrep 5GHz |
    fgrep 80MHz |
    bat \
      --style plain \
      --pager never \
      --language=log
}

which bat | fgrep -q bat || exec ./WlanCachedNetworkInfo

run_b
