#!/bin/sh
if [ ! -f UUID ]; then
  UUID="8961fc2d-dd72-4188-b38c-023888b69b1f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

