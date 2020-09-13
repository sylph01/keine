#!/bin/sh
HOME=/home/sylph01
PATH=/usr/local/bin:$PATH

cd /home/sylph01/keine && bin/rails action_mailbox:ingress:postfix URL="http://localhost:3000/rails/action_mailbox/relay/inbound_emails" INGRESS_PASSWORD=burfUdjetAfoquocwenOmhynadaihylgOd6fefyeavquienUj5
