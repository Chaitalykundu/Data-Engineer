# Content

- [Content](#content)
- [Why is AWS Global Infrastructure important?](#why-is-aws-global-infrastructure-important)
- [2. Important Components of AWS Global Infrastructure](#2-important-components-of-aws-global-infrastructure)
- [3. AWS Region](#3-aws-region)
  - [What is a Region?](#what-is-a-region)
  - [Why do we use different Regions?](#why-do-we-use-different-regions)
  - [Real-world Data Engineering example](#real-world-data-engineering-example)
- [4. Availability Zones (AZ)](#4-availability-zones-az)
  - [What is an Availability Zone?](#what-is-an-availability-zone)
  - [Example](#example)
- [Why do we use Availability Zones?](#why-do-we-use-availability-zones)

&nbsp;

&nbsp;

&nbsp;

**AWS Global Infrastructure** is the worldwide network of AWS data centers, Regions, Availability Zones, Edge Locations and other infrastructure that allows customers to deploy applications and data platforms across different geographical locations.

&nbsp;

&nbsp;

It helps organizations build applications that are:

- Highly available
- Fault tolerant
- Scalable
- Low latency
- Disaster recovery ready
- Globally accessible

&nbsp;

&nbsp;

# Why is AWS Global Infrastructure important?

As a Data Engineer, you need to understand AWS Global Infrastructure because it determines:

- Where your data is physically stored.
- Where your ETL jobs execute.
- How quickly applications access data.
- How to design highly available data pipelines.
- How to implement disaster recovery.
- How to meet data residency and compliance requirements.

&nbsp;

&nbsp;

# 2. Important Components of AWS Global Infrastructure

| Component              | Meaning                                                                         | Example                       |
| ---------------------- | ------------------------------------------------------------------------------- | ----------------------------- |
| Region                 | Separate geographical area containing multiple Availability Zones               | Asia Pacific (Mumbai)         |
| Availability Zone (AZ) | Isolated location containing one or more data centers within a Region           | ap-south-1a                   |
| Data Center            | Physical facility containing servers, storage and networking equipment          | AWS computing facility        |
| Edge Location          | Location used to deliver content closer to end users                            | CloudFront                    |
| Local Zone             | AWS infrastructure that extends a Region closer to a specific metropolitan area | AWS Local Zone                |
| Wavelength Zone        | AWS infrastructure designed to bring AWS services closer to 5G networks         | 5G application infrastructure |
| AWS Global Network     | Private global network connecting AWS infrastructure                            | AWS backbone network          |

&nbsp;

&nbsp;

# 3. AWS Region

## What is a Region?

An AWS Region is a separate geographical area where AWS operates its cloud infrastructure.

Each Region is independent of other Regions and contains multiple Availability Zones.

&nbsp;

**Examples of AWS Regions:**

| Region Name              | Region Code    | Location      |
| ------------------------ | -------------- | ------------- |
| US East (N. Virginia)    | us-east-1      | United States |
| US West (Oregon)         | us-west-2      | United States |
| Europe (Ireland)         | eu-west-1      | Ireland       |
| Asia Pacific (Mumbai)    | ap-south-1     | India         |
| Asia Pacific (Hyderabad) | ap-south-2     | India         |
| Asia Pacific (Singapore) | ap-southeast-1 | Singapore     |
| Asia Pacific (Tokyo)     | ap-northeast-1 | Japan         |

&nbsp;

&nbsp;

## Why do we use different Regions?

1. **Data Residency:** Store data in a specific geographical location to meet regulatory requirements.
2. **Low Latency:** Deploy applications closer to users.
3. **Disaster Recovery:** Maintain infrastructure in another Region.
4. **Service Availability:** Some AWS services or features may not be available in every Region.
5. **Cost Optimization:** Compare service pricing across available Regions.

&nbsp;

&nbsp;

## Real-world Data Engineering example

Suppose your company operates in India and stores employee data.

You can choose the Mumbai Region to deploy:

- S3 buckets
- AWS Glue jobs
- Lambda functions
- Redshift clusters
- VPC resources

This allows your data platform to operate within the selected geographical Region.

&nbsp;

&nbsp;

# 4. Availability Zones (AZ)

## What is an Availability Zone?

An Availability Zone is an isolated location within an AWS Region consisting of one or more discrete data centers.

Each Availability Zone is designed with independent infrastructure, including power, networking and connectivity.

Multiple Availability Zones within a Region are connected through AWS's private network infrastructure.

&nbsp;

&nbsp;

## Example

Consider the Mumbai Region:

```text
AWS Region: ap-south-1 (Mumbai)

    Availability Zone 1
          |
     Data Center(s)
          |
    Availability Zone 2
          |
     Data Center(s)
          |
    Availability Zone 3
          |
     Data Center(s)
```

&nbsp;

&nbsp;

# Why do we use Availability Zones?

- High availability
- Fault tolerance
- Disaster resilience within a Region
- Reduced impact of infrastructure failures
- Application redundancy

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
