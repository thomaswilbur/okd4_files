$TTL    604800
@       IN      SOA     oc-services.adaclare.com. admin.adaclare.com. (
                  1     ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800     ; Negative Cache TTL
)

; name servers - NS records
    IN      NS      oc-services

; name servers - A records
oc-services.adaclare.com.          IN      A       192.168.2.210

; OpenShift Container Platform Cluster - A records
oc-bootstrap.oc.adaclare.com.        IN      A      192.168.2.200
oc-control-plane-1.oc.adaclare.com.        IN      A      192.168.2.201
oc-control-plane-2.oc.adaclare.com.         IN      A      192.168.2.202
oc-control-plane-3.oc.adaclare.com.         IN      A      192.168.2.203
oc-compute-1.oc.adaclare.com.        IN      A      192.168.2.204
oc-compute-2.oc.adaclare.com.        IN      A      192.168.2.205
oc-compute-3.oc.adaclare.com.        IN      A      192.168.2.206

; OpenShift internal cluster IPs - A records
api.oc.adaclare.com.    IN    A    192.168.2.210
api-int.oc.adaclare.com.    IN    A    192.168.2.210
*.apps.oc.adaclare.com.    IN    A    192.168.2.210
etcd-0.oc.adaclare.com.    IN    A     192.168.2.201
etcd-1.oc.adaclare.com.    IN    A     192.168.2.202
etcd-2.oc.adaclare.com.    IN    A    192.168.2.203
console-openshift-console.apps.oc.adaclare.com.     IN     A     192.168.2.210
oauth-openshift.apps.oc.adaclare.com.     IN     A     192.168.2.210

; OpenShift internal cluster IPs - SRV records
_etcd-server-ssl._tcp.oc.adaclare.com.    86400     IN    SRV     0    10    2380    etcd-0.oc
_etcd-server-ssl._tcp.oc.adaclare.com.    86400     IN    SRV     0    10    2380    etcd-1.oc
_etcd-server-ssl._tcp.oc.adaclare.com.    86400     IN    SRV     0    10    2380    etcd-2.oc

