echo "Stopping all VMs created while performing Test Case - 2: Checking what maximum key size (bytes), I can send over the server."

echo "Stopping Server VM instance..."
gcloud compute instances stop servertc2


echo "Stopping Client-1 VM instance..."
gcloud compute instances stop client1tc2


echo "Done"