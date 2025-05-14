# Compute or Query Processing or Virtual Warehouse layer

The Compute Layer in Snowflake is responsible for **query execution** and is implemented through Virtual Warehouses.

**Query execution** is performed in the processing layer.

&nbsp;

## Query Processing layer

- This is the actual **processing unit** of snowflake

- Snowflake processes queries using **“virtual warehouses”**.

- Each virtual warehouse is an **MPP (massively parallel processing)** compute cluster composed of multiple compute nodes allocated by Snowflake from a cloud provider.

- On **AWS** they are a group of **EC2** instance and on **AZURE** a group of virtual machines

- Compute cost will be calculated on the basis of execution time of virtual warehouses.

- Virtual warehouses are considered as the muscles of the system

- Each virtual warehouse is an independent compute cluster that does not share compute resources with other virtual warehouses. As a result, each virtual warehouse has no impact on the performance of other virtual warehouses.

- Can scale up and scale down easily

- Auto-suspend/resume is available.

&nbsp;

### Key points

- Also called **query engine or virtual warehouse**
- Underlying virtual machine (EC2, Azure-GCP VM)
- Scale up and down as needed (it is not infinite but big enough to accommodate any workload)
- Different size to serve different workloads

&nbsp;

### Key features

- **Multi-cluster architecture**: Supports concurrent users without performance bottlenecks.

- **Separation from storage**: Enables independent scaling.

- **Pay-per-use**: Charges are based on compute time, not size or data processed.

- **Auto-suspend/resume**: Saves cost during inactivity.

&nbsp;

&nbsp;

&nbsp;

# How Compute layer works

- Compute layer is where queries are executed. (Queries means select queries, join queries, data loading, procedure)

- Before any query is executed, compute machines need to provisioned and in snowflake it is called virtual warehouse (VWH)

- This virtual warehouse has to access same data storage or data layer. That's why it's called **Shared data multi-clustered architecture**

- You can choose a virtual warehouse as per the workload required without any contention or performance degradation.

- To create a VWH, you simply need to give **a name and size** (bigger the size more the compute power) (Size x-small = 1 node cluster, small = 2 node cluster, medium = 4 node cluster, 4X-large = 128 node cluster)

- Snowflake handles all the provisioning and configuration of underlying compute resources (In case of AWS, its EC2 instance and for Azure it's Azure VM)

- The VWH can be scaled up or down at any time during the query execution without any hiccups. WHen re-scaling is done, all the sub-sequent queries takes the advantage of the new size of the warehouse.

- When multiple VWH (of different sizes) runs in parallel, snowflake itself takes care of concurrency.

&nbsp;

&nbsp;
