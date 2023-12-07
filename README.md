Name: Piyush Rajendra Chaudhari
EmailID: piyrchau@iu.edu

#### Architecture Diagram
![image](https://github.com/piyush26c/Memcached-Lite---Key-Value-Store/assets/40906515/2120c934-1450-44ff-8c3a-937636a89b63)

<br>

#### Class Diagram
![image](https://github.com/piyush26c/Memcached-Lite---Key-Value-Store/assets/40906515/e5f99183-a7af-433c-9de4-43ecf18fff70)



```
File Structure
.
├── gcstorage_poc.py
├── install_requirements.sh
├── performance_testing
│   ├── client_get_read_latency.py
│   ├── client_set_write_latency.py
│   ├── data_generator.py
│   ├── google_key_value_store_lite_read_latency.png
│   ├── google_key_value_store_lite_write_latency.png
│   ├── memcached_lite_read_latency.png
│   ├── memcached_lite_write_latency.png
│   └── performance_graph.ipynb
├── piyush-chaudhari-fall2023-9600b4eeb5b1.json
├── README.txt
├── requirements.txt
├── server_gcs.py
├── server.py
├── setup_environment.py
├── test_case_1
│   └── client.py
├── test_case_2
│   ├── client.py
│   ├── inputs.txt
│   └── key_value.json
├── test_case_3
│   ├── client.py
│   ├── inputs.txt
│   └── key_value.json
└── test_case_4
    └── client.py

5 directories, 24 files
```


Note: If on a particular port number, server seems to be busy. Use the following command to free that port.
```$npx kill-port <port-no>```

Important: At first sight before I created any VMs, I executed the following commands that set firewall rules

```gcloud compute networks create default```

```gcloud compute firewall-rules create default-allow --network default --allow tcp,udp,icmp --source-ranges 0.0.0.0/0```

Further, I clone the repository in VMS and then executed ```install_requirements.sh``` file.

This whole process is automated in ```test_case_<number>.sh``` files which you can find in test_cases_bash_scripts folder not in this repository but separately in submission.
