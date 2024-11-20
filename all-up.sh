#!/bin/bash

docker-compose -f docker-compose1.yml -p fedimint1 up -d --force-recreate
docker-compose -f docker-compose2.yml -p fedimint2 up -d --force-recreate
docker-compose -f docker-compose3.yml -p fedimint3 up -d --force-recreate
docker-compose -f docker-compose4.yml -p fedimint4 up -d --force-recreate


cloudflared tunnel route dns fedimint1 guardian1-fedimint1.freedomtech-hosting.org
cloudflared tunnel route dns fedimint1 guardian2-fedimint1.freedomtech-hosting.org
cloudflared tunnel route dns fedimint1 guardian3-fedimint1.freedomtech-hosting.org
cloudflared tunnel route dns fedimint1 guardian4-fedimint1.freedomtech-hosting.org
cloudflared tunnel route dns fedimint1 api-guardian1-fedimint1.freedomtech-hosting.org
cloudflared tunnel route dns fedimint1 api-guardian2-fedimint1.freedomtech-hosting.org
cloudflared tunnel route dns fedimint1 api-guardian3-fedimint1.freedomtech-hosting.org
cloudflared tunnel route dns fedimint1 api-guardian4-fedimint1.freedomtech-hosting.org
cloudflared tunnel route dns fedimint1 p2p-guardian1-fedimint1.freedomtech-hosting.org
cloudflared tunnel route dns fedimint1 p2p-guardian2-fedimint1.freedomtech-hosting.org
cloudflared tunnel route dns fedimint1 p2p-guardian3-fedimint1.freedomtech-hosting.org
cloudflared tunnel route dns fedimint1 p2p-guardian4-fedimint1.freedomtech-hosting.org