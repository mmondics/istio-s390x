#!/bin/bash
oc delete sa bookinfo-details bookinfo-productpage bookinfo-ratings bookinfo-reviews
oc delete deployment details-v1 productpage-v1 ratings-v1 reviews-v1 reviews-v2 reviews-v3
oc delete svc details productpage ratings reviews
oc delete gateway --all
oc delete virtualservice --all
oc delete destinationrule --all

sleep 5
echo "Cleanup Complete"