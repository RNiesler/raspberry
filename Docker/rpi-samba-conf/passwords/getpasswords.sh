#!/bin/bash
pdbedit -a rniesler
pdbedit -a ania
cp /var/lib/samba/private/passdb.tdb
cp /var/lib/samba/private/secrets.tdb
