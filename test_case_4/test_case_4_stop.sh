echo "Stopping all VMs created while performing Test Case - 4: Load testing: Check what maximum number of clients can be connected to server.."


echo "Stopping Server VM instance..."
gcloud compute instances stop servertc4


echo "Stopping Client-1 VM instance..."
gcloud compute instances stop client1tc4


echo "Done"
