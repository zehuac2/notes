# SSH

1. Go to "Compute Engine > Metadata" and add public ssh key
2. Configure instance to use either a static external IP or an ephemeral ip;
   **ephemeral IP has no cost when the instance is not running**
   - Static External IP: Go to "VPC Network > External IP address" and reserve a
     static IP; make sure to apply the IP to an instance
3. Start the compute engine and then `ssh` into the compute engine
