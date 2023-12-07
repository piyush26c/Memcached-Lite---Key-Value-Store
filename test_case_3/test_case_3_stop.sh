echo "Stopping all VMs created while performing Test Case - 3: Checking what maximum value size (bytes), I can send over the server."

echo "Stopping Server VM instance..."
gcloud compute instances stop servertc3


echo "Stopping Client-1 VM instance..."
gcloud compute instances stop client1tc3


echo "Done"