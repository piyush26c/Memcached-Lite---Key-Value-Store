echo "Test Case - 3: Checking what maximum value size (bytes), I can send over the server."

echo "Creating Server VM instace..."
gcloud compute instances create servertc3 --project=piyush-chaudhari-fall2023 --zone=us-central1-a --machine-type=e2-medium --network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=default --maintenance-policy=MIGRATE --provisioning-model=STANDARD --service-account=829646497935-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --tags=http-server,https-server --create-disk=auto-delete=yes,boot=yes,device-name=server,image=projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20230918,mode=rw,size=10,type=projects/piyush-chaudhari-fall2023/zones/us-central1-a/diskTypes/pd-balanced --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --labels=goog-ec-src=vm_add-gcloud --reservation-affinity=any
echo "VM successfully created."


echo "Doing SSH into VM instance..."
sleep 60
gcloud compute ssh servertc3 --project=piyush-chaudhari-fall2023 --zone=us-central1-a <<EOF
echo "SSH successful."

echo "Cloning the repository into VM instance..."
git clone https://piyrchau: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@github.iu.edu/piyrchau/assignment_3_memcached_lite.git
echo "Repository cloned successfully."

cd assignment_3_memcached_lite/

echo "Installing project requirements in VM instance..."
sudo ./install_requirements.sh
echo "Installation completed successfully."

echo "Done"
EOF

echo "Creating Client-1 VM instace..."
gcloud compute instances create client1tc3 --project=piyush-chaudhari-fall2023 --zone=us-central1-a --machine-type=e2-medium --network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=default --maintenance-policy=MIGRATE --provisioning-model=STANDARD --service-account=829646497935-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --tags=http-server,https-server --create-disk=auto-delete=yes,boot=yes,device-name=server,image=projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20230918,mode=rw,size=10,type=projects/piyush-chaudhari-fall2023/zones/us-central1-a/diskTypes/pd-balanced --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --labels=goog-ec-src=vm_add-gcloud --reservation-affinity=any
echo "VM successfully created."


echo "Doing SSH into VM instance..."
sleep 60
gcloud compute ssh client1tc3 --project=piyush-chaudhari-fall2023 --zone=us-central1-a <<EOF
echo "SSH successful."

echo "Cloning the repository into VM instance..."
git clone https://piyrchau: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@github.iu.edu/piyrchau/assignment_3_memcached_lite.git
echo "Repository cloned successfully."

cd assignment_3_memcached_lite/

echo "Installing project requirements in VM instance..."
sudo ./install_requirements.sh
echo "Installation completed successfully."

echo "Done"
EOF