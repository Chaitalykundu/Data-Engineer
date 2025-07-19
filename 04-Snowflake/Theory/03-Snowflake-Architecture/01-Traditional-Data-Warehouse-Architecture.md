# Overview

- [Overview](#overview)
- [Traditional Data Warehouse Architecture](#traditional-data-warehouse-architecture)
  - [Note](#note)
- [Shared Disk Architecture](#shared-disk-architecture)
  - [Key points on Shared Disk Architecture](#key-points-on-shared-disk-architecture)
  - [Advantages](#advantages)
  - [Disadvantages](#disadvantages)
- [Shared nothing architecture](#shared-nothing-architecture)
  - [Key points on Shared nothing Architecture](#key-points-on-shared-nothing-architecture)
  - [Advantages](#advantages-1)
  - [Disadvantages](#disadvantages-1)
- [Difference between Shared Disk Architecture and Shared Nothing Architecture](#difference-between-shared-disk-architecture-and-shared-nothing-architecture)

&nbsp;

&nbsp;

&nbsp;

# Traditional Data Warehouse Architecture

There are **two** types of architecture

- Shared Disk Architecture
- Shared Nothing Architecture

&nbsp;

## Note

- Disk = Storage
- Compute = Processing = SQL Statements or ETL jobs

&nbsp;

&nbsp;

# Shared Disk Architecture

Shared Disk Architecture is an architecture that is used in **distributed computing** in which the nodes or compute resources (BI dashboard, Developer's IDE, testing workload etc) **share the same (single) disk devices** but **each node has its own private memory**.

The disks have active nodes which share memory in case of any failures.

In this architecture, the disks are accessible from all the cluster nodes. This architecture has quick adaptability to the changing workloads. It uses robust optimization techniques.

&nbsp;

### Key points on Shared Disk Architecture

- used in distributed computing

- the nodes share the same (single) disk devices

- the nodes or compute resources = BI dashboard, Developer's IDE, testing workload etc

- each node has its own private memory

- Single point of failure as it has only one disk

- Can't scale beyond one point

- As it scale's up (vertical scaling), it becomes more and more expensive.

- System becomes very slow as we onboard more and more ETL workloads

&nbsp;

&nbsp;

## Advantages

- It can scale up to a fair amount of CPUs.

- Each processor possess its own memory so the memory bus is not an obstruction.

- Fault tolerance as the database is stored on discs that are accessible from all processors so in that case other processors can take over the task if one fails.

&nbsp;

&nbsp;

## Disadvantages

- No scalability in the architecture because the disc subsystem’s interconnection is currently the bottleneck.

- Slower CPU to CPU communication because of passing through a communication network.

- Slow down in the speed of current CPUs because of added more CPUs leads to the increased competition for memory access in network bandwidth.

- Can't scale beyond one point

- As it scale's up (vertical scaling), it becomes more and more expensive.

- System becomes very slow as we onboard more and more ETL workloads

&nbsp;

&nbsp;

# Shared nothing architecture

Shared nothing architecture is an architecture that is used in distributed computing in which each node is independent and different **nodes are interconnected by a network**.

The main motive of this architecture is to remove the contention among nodes.

&nbsp;

### Key points on Shared nothing Architecture

- used in distributed computing

- each node is independent

- different nodes are interconnected by a network

- Every node is made of a processor, main memory, and disk.

- The Nodes do not share memory or storage.

- The disks have individual nodes which cannot be shared.

- No single point failure

- It works effectively in a high volume and read-write environment.

- It has cheaper hardware as compared to shared disk architecture.

- Add more and more nodes, and it can scale horizontally, however compute and storage can't scale independently.

- As it scale out, administrative cost increases.

&nbsp;

&nbsp;

## Advantages

- Easy to scale
- Reduces single points of failure, makes upgrades easier, and avoids downtime

&nbsp;

&nbsp;

## Disadvantages

- Deterioration in performance
- Expensive

&nbsp;

&nbsp;

# Difference between Shared Disk Architecture and Shared Nothing Architecture

| Shared Disk Architecture                                                                                                                                     | Shared Nothing Architecture                                                                                |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------- |
| The nodes share the storage                                                                                                                                  | The nodes don't share the storage                                                                          |
| The disks have active nodes which are shared in case of failures                                                                                             | The disks have individual nodes which cannot be shared                                                     |
| The hardware of shared disk is comparatively expensive.                                                                                                      | It has cheaper hardware as compared to shared disk architecture                                            |
| The data is not partitioned                                                                                                                                  | The data is strictly partitioned                                                                           |
| It has dynamic load balancing                                                                                                                                | It has fixed load balancing                                                                                |
| Its advantage is that it has unlimited scalability                                                                                                           | Its advantage is that it has high availability                                                             |
| Its clustering architecture, which makes use of a single disc device with distinct memories, can have its memory capacity increased by upgrading the memory. | Scaling up in terms of capacity is easier. For getting more space, a new node can be added to the cluster. |
|                                                                                                                                                              |                                                                                                            |

&nbsp;

&nbsp;
