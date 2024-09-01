ss -s // The ss command is a utility to investigate real time open sockets.

=====================================================================================

ulimit -n // check current limit of file descriptors (limit of connections)
======================================================================================

APACHE AB TO SIMULATE REQUESTS

sudo apt-get install apache2-utils  # On Debian/Ubuntu

ab -n 10000 -c 1000 http://your-server/

-n 10000: Total number of requests to perform.
-c 1000: Number of multiple requests to perform at a time (concurrent connections).
- http://your-server/: The URL to the server you want to test.

======================================================================================= 

cat /proc/sys/fs/file-max

========================================================================================

Max_connections = (Y * 1024) / X
Rough Estimate: If each connection consumes X KB of memory and you have Y MB of free memory, the maximum number of connections can be estimated as:

========================================================================================

htop // check system cpu / memory load

========================================================================================== CONCURRENT CONNECTIONS
The 10 MB estimate in the calculation was a rough approximation of the memory usage per connection, which includes the memory required for handling a single database query

6 GB memory = 6144 MB
6144 MB / 10 MB = ~614 concurrent connections

========================================================================================== REQUEST PER SECOND ESTIMATIONS

Database Query Time (T_db): The average time taken to perform a database query.
Shopify API Call Time (T_api): The average time taken to make an API call to Shopify.
Processing Time (T_proc): The time your server spends processing the data.

T_total = T_db + T_api + T_proc

T_total = 0.05 + 0.2 + 0.05 = 0.3 seconds

RPS = 1 / 0.3 = ~3.33 requests per second

Total RPS = 3.33 * 500 CONCURRENT CONNECTIONS = ~1,665 requests per second














