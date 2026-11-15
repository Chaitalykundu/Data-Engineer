# Content

- [Content](#content)
- [Create an IAM User](#create-an-iam-user)
  - [Required permission:](#required-permission)
  - [IAM Policy JSON](#iam-policy-json)
  - [Explanation](#explanation)

&nbsp;

&nbsp;

&nbsp;

# Create an IAM User

Suppose you want to create an IAM User who can only read files from an S3 bucket.

&nbsp;

## Required permission:

- Read objects from company-raw-data.
- No upload permission.
- No delete permission.
- No access to other buckets.

&nbsp;

## IAM Policy JSON

Policy name: S3ReadOnlyCompanyRawData

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": ["s3:GetObject"],
      "Resource": "arn:aws:s3:::company-raw-data/*"
    }
  ]
}
```

&nbsp;

## Explanation

| Policy Property | Value                             | Meaning                             |
| --------------- | --------------------------------- | ----------------------------------- |
| Effect          | Allow                             | Allow the specified action          |
| Action          | `s3:GetObject`                    | Read S3 objects                     |
| Resource        | `arn:aws:s3:::company-raw-data/*` | All objects in the specified bucket |

Important: This policy does not grant s3:ListBucket. The user may need that additional permission to list the bucket's contents.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
