# Print out the resource pools and the assignments for all zones on the server

echo -------------------------------------------------------------
echo Resource Pools Configured
echo -------------------------------------------------------------

poolcfg -c info

ZONES=`zoneadm list`
echo Server Zones: $ZONES

for ZONE in $ZONES
do
    echo
    echo -------------------------------------------------------------
    echo Zone info for: $ZONE
    echo -------------------------------------------------------------

    zonecfg -z ${ZONE} info
done

