#!/bin/bash
#Script to cleanup the nessus registration command from rc.local
sed -i '/^\/opt/ d' /etc/rc.local && sed -i '/^\/bin/ d' /etc/rc.local && logger "Cleanup of /etc/rc.local completed"

