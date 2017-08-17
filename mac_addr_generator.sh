#!/usr/bin/env bash
# GENERATE A RANDOM MAC ADDRESS
# source:
# https://www.kernel.org/doc/Documentation/networking/bonding.txt
printf '%02x:%02x:%02x:%02x:%02x:%02x' \
	$(( (RANDOM & 0xFE) | 0x02 )) \
	$(( RANDOM & 0xFF )) \
	$(( RANDOM & 0xFF )) \
	$(( RANDOM & 0xFF )) \
	$(( RANDOM & 0xFF )) \
	$(( RANDOM & 0xFF ))
