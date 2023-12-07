echo "Stopping all VMs created while performing Test Case - 1: Check basic functionality by connecting two clients (on separate VMs)"

echo "Stopping Server VM instance..."
gcloud compute instances stop servertc1


echo "Stopping Client-1 VM instance..."
gcloud compute instances stop client1tc1

echo "Stopping Client-2 VM instance..."
gcloud compute instances stop client2tc1

echo "Done"