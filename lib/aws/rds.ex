# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.RDS do
  @moduledoc """
  Amazon Relational Database Service

  Amazon Relational Database Service (Amazon RDS) is a web service that makes
  it easier to set up, operate, and scale a relational database in the cloud.
  It provides cost-efficient, resizeable capacity for an industry-standard
  relational database and manages common database administration tasks,
  freeing up developers to focus on what makes their applications and
  businesses unique.

  Amazon RDS gives you access to the capabilities of a MySQL, MariaDB,
  PostgreSQL, Microsoft SQL Server, Oracle, or Amazon Aurora database server.
  These capabilities mean that the code, applications, and tools you already
  use today with your existing databases work with Amazon RDS without
  modification. Amazon RDS automatically backs up your database and maintains
  the database software that powers your DB instance. Amazon RDS is flexible:
  you can scale your database instance's compute resources and storage
  capacity to meet your application's demand. As with all Amazon Web
  Services, there are no up-front investments, and you pay only for the
  resources you use.

  This interface reference for Amazon RDS contains documentation for a
  programming or command line interface you can use to manage Amazon RDS.
  Note that Amazon RDS is asynchronous, which means that some interfaces
  might require techniques such as polling or callback functions to determine
  when a command has been applied. In this reference, the parameter
  descriptions indicate whether a command is applied immediately, on the next
  instance reboot, or during the maintenance window. The reference structure
  is as follows, and we list following some related topics from the user
  guide.

  **Amazon RDS API Reference**

  <ul> <li> For the alphabetical list of API actions, see [API
  Actions](http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Operations.html).

  </li> <li> For the alphabetical list of data types, see [Data
  Types](http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Types.html).

  </li> <li> For a list of common query parameters, see [Common
  Parameters](http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonParameters.html).

  </li> <li> For descriptions of the error codes, see [Common
  Errors](http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonErrors.html).

  </li> </ul> **Amazon RDS User Guide**

  <ul> <li> For a summary of the Amazon RDS interfaces, see [Available RDS
  Interfaces](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html#Welcome.Interfaces).

  </li> <li> For more information about how to use the Query API, see [Using
  the Query
  API](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Using_the_Query_API.html).

  </li> </ul>
  """

  @doc """
  Associates an Identity and Access Management (IAM) role from an Aurora DB
  cluster. For more information, see [Authorizing Amazon Aurora to Access
  Other AWS Services On Your
  Behalf](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Authorizing.AWSServices.html).
  """
  def add_role_to_d_b_cluster(client, input, options \\ []) do
    request(client, "AddRoleToDBCluster", input, options)
  end

  @doc """
  Adds a source identifier to an existing RDS event notification
  subscription.
  """
  def add_source_identifier_to_subscription(client, input, options \\ []) do
    request(client, "AddSourceIdentifierToSubscription", input, options)
  end

  @doc """
  Adds metadata tags to an Amazon RDS resource. These tags can also be used
  with cost allocation reporting to track cost associated with Amazon RDS
  resources, or used in a Condition statement in an IAM policy for Amazon
  RDS.

  For an overview on tagging Amazon RDS resources, see [Tagging Amazon RDS
  Resources](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html).
  """
  def add_tags_to_resource(client, input, options \\ []) do
    request(client, "AddTagsToResource", input, options)
  end

  @doc """
  Applies a pending maintenance action to a resource (for example, to a DB
  instance).
  """
  def apply_pending_maintenance_action(client, input, options \\ []) do
    request(client, "ApplyPendingMaintenanceAction", input, options)
  end

  @doc """
  Enables ingress to a DBSecurityGroup using one of two forms of
  authorization. First, EC2 or VPC security groups can be added to the
  DBSecurityGroup if the application using the database is running on EC2 or
  VPC instances. Second, IP ranges are available if the application accessing
  your database is running on the Internet. Required parameters for this API
  are one of CIDR range, EC2SecurityGroupId for VPC, or
  (EC2SecurityGroupOwnerId and either EC2SecurityGroupName or
  EC2SecurityGroupId for non-VPC).

  <note> You cannot authorize ingress from an EC2 security group in one
  region to an Amazon RDS DB instance in another. You cannot authorize
  ingress from a VPC security group in one VPC to an Amazon RDS DB instance
  in another.

  </note> For an overview of CIDR ranges, go to the [Wikipedia
  Tutorial](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).
  """
  def authorize_d_b_security_group_ingress(client, input, options \\ []) do
    request(client, "AuthorizeDBSecurityGroupIngress", input, options)
  end

  @doc """
  Copies the specified DB cluster parameter group.
  """
  def copy_d_b_cluster_parameter_group(client, input, options \\ []) do
    request(client, "CopyDBClusterParameterGroup", input, options)
  end

  @doc """
  Creates a snapshot of a DB cluster. For more information on Amazon Aurora,
  see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def copy_d_b_cluster_snapshot(client, input, options \\ []) do
    request(client, "CopyDBClusterSnapshot", input, options)
  end

  @doc """
  Copies the specified DB parameter group.
  """
  def copy_d_b_parameter_group(client, input, options \\ []) do
    request(client, "CopyDBParameterGroup", input, options)
  end

  @doc """
  Copies the specified DB snapshot. The source DB snapshot must be in the
  "available" state.

  To copy a DB snapshot from a shared manual DB snapshot,
  `SourceDBSnapshotIdentifier` must be the Amazon Resource Name (ARN) of the
  shared DB snapshot.

  You can copy an encrypted DB snapshot from another AWS Region. In that
  case, the region where you call the `CopyDBSnapshot` action is the
  destination region for the encrypted DB snapshot to be copied to. To copy
  an encrypted DB snapshot from another region, you must provide the
  following values:

  <ul> <li> `KmsKeyId` - The AWS Key Management System (KMS) key identifier
  for the key to use to encrypt the copy of the DB snapshot in the
  destination region.

  </li> <li> `PreSignedUrl` - A URL that contains a Signature Version 4
  signed request for the `CopyDBSnapshot` action to be called in the source
  region where the DB snapshot will be copied from. The presigned URL must be
  a valid request for the `CopyDBSnapshot` API action that can be executed in
  the source region that contains the encrypted DB snapshot to be copied.

  The presigned URL request must contain the following parameter values:

  <ul> <li> `DestinationRegion` - The AWS Region that the encrypted DB
  snapshot will be copied to. This region is the same one where the
  `CopyDBSnapshot` action is called that contains this presigned URL.

  For example, if you copy an encrypted DB snapshot from the us-west-2 region
  to the us-east-1 region, then you will call the `CopyDBSnapshot` action in
  the us-east-1 region and provide a presigned URL that contains a call to
  the `CopyDBSnapshot` action in the us-west-2 region. For this example, the
  `DestinationRegion` in the presigned URL must be set to the us-east-1
  region.

  </li> <li> `KmsKeyId` - The KMS key identifier for the key to use to
  encrypt the copy of the DB snapshot in the destination region. This
  identifier is the same for both the `CopyDBSnapshot` action that is called
  in the destination region, and the action contained in the presigned URL.

  </li> <li> `SourceDBSnapshotIdentifier` - The DB snapshot identifier for
  the encrypted snapshot to be copied. This identifier must be in the Amazon
  Resource Name (ARN) format for the source region. For example, if you copy
  an encrypted DB snapshot from the us-west-2 region, then your
  `SourceDBSnapshotIdentifier` looks like this example:
  `arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20161115`.

  </li> </ul> To learn how to generate a Signature Version 4 signed request,
  see [ Authenticating Requests: Using Query Parameters (AWS Signature
  Version
  4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html)
  and [ Signature Version 4 Signing
  Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  </li> <li> `TargetDBSnapshotIdentifier` - The identifier for the new copy
  of the DB snapshot in the destination region.

  </li> <li> `SourceDBSnapshotIdentifier` - The DB snapshot identifier for
  the encrypted snapshot to be copied. This identifier must be in the ARN
  format for the source region and is the same value as the
  `SourceDBSnapshotIdentifier` in the presigned URL.

  </li> </ul> For more information on copying encrypted snapshots from one
  region to another, see [ Copying an Encrypted DB Snapshot to Another
  Region](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopySnapshot.Encrypted.CrossRegion)
  in the Amazon RDS User Guide.
  """
  def copy_d_b_snapshot(client, input, options \\ []) do
    request(client, "CopyDBSnapshot", input, options)
  end

  @doc """
  Copies the specified option group.
  """
  def copy_option_group(client, input, options \\ []) do
    request(client, "CopyOptionGroup", input, options)
  end

  @doc """
  Creates a new Amazon Aurora DB cluster.

  You can use the `ReplicationSourceIdentifier` parameter to create the DB
  cluster as a Read Replica of another DB cluster or Amazon RDS MySQL DB
  instance.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def create_d_b_cluster(client, input, options \\ []) do
    request(client, "CreateDBCluster", input, options)
  end

  @doc """
  Creates a new DB cluster parameter group.

  Parameters in a DB cluster parameter group apply to all of the instances in
  a DB cluster.

  A DB cluster parameter group is initially created with the default
  parameters for the database engine used by instances in the DB cluster. To
  provide custom values for any of the parameters, you must modify the group
  after creating it using `ModifyDBClusterParameterGroup`. Once you've
  created a DB cluster parameter group, you need to associate it with your DB
  cluster using `ModifyDBCluster`. When you associate a new DB cluster
  parameter group with a running DB cluster, you need to reboot the DB
  instances in the DB cluster without failover for the new DB cluster
  parameter group and associated settings to take effect.

  <important> After you create a DB cluster parameter group, you should wait
  at least 5 minutes before creating your first DB cluster that uses that DB
  cluster parameter group as the default parameter group. This allows Amazon
  RDS to fully complete the create action before the DB cluster parameter
  group is used as the default for a new DB cluster. This is especially
  important for parameters that are critical when creating the default
  database for a DB cluster, such as the character set for the default
  database defined by the `character_set_database` parameter. You can use the
  *Parameter Groups* option of the [Amazon RDS
  console](https://console.aws.amazon.com/rds/) or the
  `DescribeDBClusterParameters` command to verify that your DB cluster
  parameter group has been created or modified.

  </important> For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def create_d_b_cluster_parameter_group(client, input, options \\ []) do
    request(client, "CreateDBClusterParameterGroup", input, options)
  end

  @doc """
  Creates a snapshot of a DB cluster. For more information on Amazon Aurora,
  see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def create_d_b_cluster_snapshot(client, input, options \\ []) do
    request(client, "CreateDBClusterSnapshot", input, options)
  end

  @doc """
  Creates a new DB instance.
  """
  def create_d_b_instance(client, input, options \\ []) do
    request(client, "CreateDBInstance", input, options)
  end

  @doc """
  Creates a DB instance for a DB instance running MySQL, MariaDB, or
  PostgreSQL that acts as a Read Replica of a source DB instance.

  All Read Replica DB instances are created as Single-AZ deployments with
  backups disabled. All other DB instance attributes (including DB security
  groups and DB parameter groups) are inherited from the source DB instance,
  except as specified below.

  <important> The source DB instance must have backup retention enabled.

  </important> You can create an encrypted Read Replica in a different AWS
  Region than the source DB instance. In that case, the region where you call
  the `CreateDBInstanceReadReplica` action is the destination region of the
  encrypted Read Replica. The source DB instance must be encrypted.

  To create an encrypted Read Replica in another AWS Region, you must provide
  the following values:

  <ul> <li> `KmsKeyId` - The AWS Key Management System (KMS) key identifier
  for the key to use to encrypt the Read Replica in the destination region.

  </li> <li> `PreSignedUrl` - A URL that contains a Signature Version 4
  signed request for the ` CreateDBInstanceReadReplica` API action in the AWS
  region that contains the source DB instance. The `PreSignedUrl` parameter
  must be used when encrypting a Read Replica from another AWS region.

  The presigned URL must be a valid request for the
  `CreateDBInstanceReadReplica` API action that can be executed in the source
  region that contains the encrypted DB instance. The presigned URL request
  must contain the following parameter values:

  <ul> <li> `DestinationRegion` - The AWS Region that the Read Replica is
  created in. This region is the same one where the
  `CreateDBInstanceReadReplica` action is called that contains this presigned
  URL.

  For example, if you create an encrypted Read Replica in the us-east-1
  region, and the source DB instance is in the west-2 region, then you call
  the `CreateDBInstanceReadReplica` action in the us-east-1 region and
  provide a presigned URL that contains a call to the
  `CreateDBInstanceReadReplica` action in the us-west-2 region. For this
  example, the `DestinationRegion` in the presigned URL must be set to the
  us-east-1 region.

  </li> <li> `KmsKeyId` - The KMS key identifier for the key to use to
  encrypt the Read Replica in the destination region. This is the same
  identifier for both the `CreateDBInstanceReadReplica` action that is called
  in the destination region, and the action contained in the presigned URL.

  </li> <li> `SourceDBInstanceIdentifier` - The DB instance identifier for
  the encrypted Read Replica to be created. This identifier must be in the
  Amazon Resource Name (ARN) format for the source region. For example, if
  you create an encrypted Read Replica from a DB instance in the us-west-2
  region, then your `SourceDBInstanceIdentifier` would look like this
  example: `
  arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-instance-20161115`.

  </li> </ul> To learn how to generate a Signature Version 4 signed request,
  see [ Authenticating Requests: Using Query Parameters (AWS Signature
  Version
  4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html)
  and [ Signature Version 4 Signing
  Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  </li> <li> `DBInstanceIdentifier` - The identifier for the encrypted Read
  Replica in the destination region.

  </li> <li> `SourceDBInstanceIdentifier` - The DB instance identifier for
  the encrypted Read Replica. This identifier must be in the ARN format for
  the source region and is the same value as the `SourceDBInstanceIdentifier`
  in the presigned URL.

  </li> </ul>
  """
  def create_d_b_instance_read_replica(client, input, options \\ []) do
    request(client, "CreateDBInstanceReadReplica", input, options)
  end

  @doc """
  Creates a new DB parameter group.

  A DB parameter group is initially created with the default parameters for
  the database engine used by the DB instance. To provide custom values for
  any of the parameters, you must modify the group after creating it using
  *ModifyDBParameterGroup*. Once you've created a DB parameter group, you
  need to associate it with your DB instance using *ModifyDBInstance*. When
  you associate a new DB parameter group with a running DB instance, you need
  to reboot the DB instance without failover for the new DB parameter group
  and associated settings to take effect.

  <important> After you create a DB parameter group, you should wait at least
  5 minutes before creating your first DB instance that uses that DB
  parameter group as the default parameter group. This allows Amazon RDS to
  fully complete the create action before the parameter group is used as the
  default for a new DB instance. This is especially important for parameters
  that are critical when creating the default database for a DB instance,
  such as the character set for the default database defined by the
  `character_set_database` parameter. You can use the *Parameter Groups*
  option of the [Amazon RDS console](https://console.aws.amazon.com/rds/) or
  the *DescribeDBParameters* command to verify that your DB parameter group
  has been created or modified.

  </important>
  """
  def create_d_b_parameter_group(client, input, options \\ []) do
    request(client, "CreateDBParameterGroup", input, options)
  end

  @doc """
  Creates a new DB security group. DB security groups control access to a DB
  instance.
  """
  def create_d_b_security_group(client, input, options \\ []) do
    request(client, "CreateDBSecurityGroup", input, options)
  end

  @doc """
  Creates a DBSnapshot. The source DBInstance must be in "available" state.
  """
  def create_d_b_snapshot(client, input, options \\ []) do
    request(client, "CreateDBSnapshot", input, options)
  end

  @doc """
  Creates a new DB subnet group. DB subnet groups must contain at least one
  subnet in at least two AZs in the region.
  """
  def create_d_b_subnet_group(client, input, options \\ []) do
    request(client, "CreateDBSubnetGroup", input, options)
  end

  @doc """
  Creates an RDS event notification subscription. This action requires a
  topic ARN (Amazon Resource Name) created by either the RDS console, the SNS
  console, or the SNS API. To obtain an ARN with SNS, you must create a topic
  in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS
  console.

  You can specify the type of source (SourceType) you want to be notified of,
  provide a list of RDS sources (SourceIds) that triggers the events, and
  provide a list of event categories (EventCategories) for events you want to
  be notified of. For example, you can specify SourceType = db-instance,
  SourceIds = mydbinstance1, mydbinstance2 and EventCategories =
  Availability, Backup.

  If you specify both the SourceType and SourceIds, such as SourceType =
  db-instance and SourceIdentifier = myDBInstance1, you will be notified of
  all the db-instance events for the specified source. If you specify a
  SourceType but do not specify a SourceIdentifier, you will receive notice
  of the events for that source type for all your RDS sources. If you do not
  specify either the SourceType nor the SourceIdentifier, you will be
  notified of events generated from all RDS sources belonging to your
  customer account.
  """
  def create_event_subscription(client, input, options \\ []) do
    request(client, "CreateEventSubscription", input, options)
  end

  @doc """
  Creates a new option group. You can create up to 20 option groups.
  """
  def create_option_group(client, input, options \\ []) do
    request(client, "CreateOptionGroup", input, options)
  end

  @doc """
  The DeleteDBCluster action deletes a previously provisioned DB cluster.
  When you delete a DB cluster, all automated backups for that DB cluster are
  deleted and cannot be recovered. Manual DB cluster snapshots of the
  specified DB cluster are not deleted.

  <p/> For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def delete_d_b_cluster(client, input, options \\ []) do
    request(client, "DeleteDBCluster", input, options)
  end

  @doc """
  Deletes a specified DB cluster parameter group. The DB cluster parameter
  group to be deleted cannot be associated with any DB clusters.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def delete_d_b_cluster_parameter_group(client, input, options \\ []) do
    request(client, "DeleteDBClusterParameterGroup", input, options)
  end

  @doc """
  Deletes a DB cluster snapshot. If the snapshot is being copied, the copy
  operation is terminated.

  <note> The DB cluster snapshot must be in the `available` state to be
  deleted.

  </note> For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def delete_d_b_cluster_snapshot(client, input, options \\ []) do
    request(client, "DeleteDBClusterSnapshot", input, options)
  end

  @doc """
  The DeleteDBInstance action deletes a previously provisioned DB instance.
  When you delete a DB instance, all automated backups for that instance are
  deleted and cannot be recovered. Manual DB snapshots of the DB instance to
  be deleted by `DeleteDBInstance` are not deleted.

  If you request a final DB snapshot the status of the Amazon RDS DB instance
  is `deleting` until the DB snapshot is created. The API action
  `DescribeDBInstance` is used to monitor the status of this operation. The
  action cannot be canceled or reverted once submitted.

  Note that when a DB instance is in a failure state and has a status of
  `failed`, `incompatible-restore`, or `incompatible-network`, you can only
  delete it when the `SkipFinalSnapshot` parameter is set to `true`.

  If the specified DB instance is part of an Amazon Aurora DB cluster, you
  cannot delete the DB instance if the following are true:

  <ul> <li> The DB cluster is a Read Replica of another Amazon Aurora DB
  cluster.

  </li> <li> The DB instance is the only instance in the DB cluster.

  </li> </ul> To delete a DB instance in this case, first call the
  `PromoteReadReplicaDBCluster` API action to promote the DB cluster so it's
  no longer a Read Replica. After the promotion completes, then call the
  `DeleteDBInstance` API action to delete the final instance in the DB
  cluster.
  """
  def delete_d_b_instance(client, input, options \\ []) do
    request(client, "DeleteDBInstance", input, options)
  end

  @doc """
  Deletes a specified DBParameterGroup. The DBParameterGroup to be deleted
  cannot be associated with any DB instances.
  """
  def delete_d_b_parameter_group(client, input, options \\ []) do
    request(client, "DeleteDBParameterGroup", input, options)
  end

  @doc """
  Deletes a DB security group.

  <note> The specified DB security group must not be associated with any DB
  instances.

  </note>
  """
  def delete_d_b_security_group(client, input, options \\ []) do
    request(client, "DeleteDBSecurityGroup", input, options)
  end

  @doc """
  Deletes a DBSnapshot. If the snapshot is being copied, the copy operation
  is terminated.

  <note> The DBSnapshot must be in the `available` state to be deleted.

  </note>
  """
  def delete_d_b_snapshot(client, input, options \\ []) do
    request(client, "DeleteDBSnapshot", input, options)
  end

  @doc """
  Deletes a DB subnet group.

  <note> The specified database subnet group must not be associated with any
  DB instances.

  </note>
  """
  def delete_d_b_subnet_group(client, input, options \\ []) do
    request(client, "DeleteDBSubnetGroup", input, options)
  end

  @doc """
  Deletes an RDS event notification subscription.
  """
  def delete_event_subscription(client, input, options \\ []) do
    request(client, "DeleteEventSubscription", input, options)
  end

  @doc """
  Deletes an existing option group.
  """
  def delete_option_group(client, input, options \\ []) do
    request(client, "DeleteOptionGroup", input, options)
  end

  @doc """
  Lists all of the attributes for a customer account. The attributes include
  Amazon RDS quotas for the account, such as the number of DB instances
  allowed. The description for a quota includes the quota name, current usage
  toward that quota, and the quota's maximum value.

  This command does not take any parameters.
  """
  def describe_account_attributes(client, input, options \\ []) do
    request(client, "DescribeAccountAttributes", input, options)
  end

  @doc """
  Lists the set of CA certificates provided by Amazon RDS for this AWS
  account.
  """
  def describe_certificates(client, input, options \\ []) do
    request(client, "DescribeCertificates", input, options)
  end

  @doc """
  Returns a list of `DBClusterParameterGroup` descriptions. If a
  `DBClusterParameterGroupName` parameter is specified, the list will contain
  only the description of the specified DB cluster parameter group.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def describe_d_b_cluster_parameter_groups(client, input, options \\ []) do
    request(client, "DescribeDBClusterParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular DB cluster parameter
  group.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def describe_d_b_cluster_parameters(client, input, options \\ []) do
    request(client, "DescribeDBClusterParameters", input, options)
  end

  @doc """
  Returns a list of DB cluster snapshot attribute names and values for a
  manual DB cluster snapshot.

  When sharing snapshots with other AWS accounts,
  `DescribeDBClusterSnapshotAttributes` returns the `restore` attribute and a
  list of IDs for the AWS accounts that are authorized to copy or restore the
  manual DB cluster snapshot. If `all` is included in the list of values for
  the `restore` attribute, then the manual DB cluster snapshot is public and
  can be copied or restored by all AWS accounts.

  To add or remove access for an AWS account to copy or restore a manual DB
  cluster snapshot, or to make the manual DB cluster snapshot public or
  private, use the `ModifyDBClusterSnapshotAttribute` API action.
  """
  def describe_d_b_cluster_snapshot_attributes(client, input, options \\ []) do
    request(client, "DescribeDBClusterSnapshotAttributes", input, options)
  end

  @doc """
  Returns information about DB cluster snapshots. This API action supports
  pagination.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def describe_d_b_cluster_snapshots(client, input, options \\ []) do
    request(client, "DescribeDBClusterSnapshots", input, options)
  end

  @doc """
  Returns information about provisioned Aurora DB clusters. This API supports
  pagination.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def describe_d_b_clusters(client, input, options \\ []) do
    request(client, "DescribeDBClusters", input, options)
  end

  @doc """
  Returns a list of the available DB engines.
  """
  def describe_d_b_engine_versions(client, input, options \\ []) do
    request(client, "DescribeDBEngineVersions", input, options)
  end

  @doc """
  Returns information about provisioned RDS instances. This API supports
  pagination.
  """
  def describe_d_b_instances(client, input, options \\ []) do
    request(client, "DescribeDBInstances", input, options)
  end

  @doc """
  Returns a list of DB log files for the DB instance.
  """
  def describe_d_b_log_files(client, input, options \\ []) do
    request(client, "DescribeDBLogFiles", input, options)
  end

  @doc """
  Returns a list of `DBParameterGroup` descriptions. If a
  `DBParameterGroupName` is specified, the list will contain only the
  description of the specified DB parameter group.
  """
  def describe_d_b_parameter_groups(client, input, options \\ []) do
    request(client, "DescribeDBParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular DB parameter group.
  """
  def describe_d_b_parameters(client, input, options \\ []) do
    request(client, "DescribeDBParameters", input, options)
  end

  @doc """
  Returns a list of `DBSecurityGroup` descriptions. If a
  `DBSecurityGroupName` is specified, the list will contain only the
  descriptions of the specified DB security group.
  """
  def describe_d_b_security_groups(client, input, options \\ []) do
    request(client, "DescribeDBSecurityGroups", input, options)
  end

  @doc """
  Returns a list of DB snapshot attribute names and values for a manual DB
  snapshot.

  When sharing snapshots with other AWS accounts,
  `DescribeDBSnapshotAttributes` returns the `restore` attribute and a list
  of IDs for the AWS accounts that are authorized to copy or restore the
  manual DB snapshot. If `all` is included in the list of values for the
  `restore` attribute, then the manual DB snapshot is public and can be
  copied or restored by all AWS accounts.

  To add or remove access for an AWS account to copy or restore a manual DB
  snapshot, or to make the manual DB snapshot public or private, use the
  `ModifyDBSnapshotAttribute` API action.
  """
  def describe_d_b_snapshot_attributes(client, input, options \\ []) do
    request(client, "DescribeDBSnapshotAttributes", input, options)
  end

  @doc """
  Returns information about DB snapshots. This API action supports
  pagination.
  """
  def describe_d_b_snapshots(client, input, options \\ []) do
    request(client, "DescribeDBSnapshots", input, options)
  end

  @doc """
  Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is
  specified, the list will contain only the descriptions of the specified
  DBSubnetGroup.

  For an overview of CIDR ranges, go to the [Wikipedia
  Tutorial](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).
  """
  def describe_d_b_subnet_groups(client, input, options \\ []) do
    request(client, "DescribeDBSubnetGroups", input, options)
  end

  @doc """
  Returns the default engine and system parameter information for the cluster
  database engine.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def describe_engine_default_cluster_parameters(client, input, options \\ []) do
    request(client, "DescribeEngineDefaultClusterParameters", input, options)
  end

  @doc """
  Returns the default engine and system parameter information for the
  specified database engine.
  """
  def describe_engine_default_parameters(client, input, options \\ []) do
    request(client, "DescribeEngineDefaultParameters", input, options)
  end

  @doc """
  Displays a list of categories for all event source types, or, if specified,
  for a specified source type. You can see a list of the event categories and
  source types in the [
  Events](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html)
  topic in the *Amazon RDS User Guide.*
  """
  def describe_event_categories(client, input, options \\ []) do
    request(client, "DescribeEventCategories", input, options)
  end

  @doc """
  Lists all the subscription descriptions for a customer account. The
  description for a subscription includes SubscriptionName, SNSTopicARN,
  CustomerID, SourceType, SourceID, CreationTime, and Status.

  If you specify a SubscriptionName, lists the description for that
  subscription.
  """
  def describe_event_subscriptions(client, input, options \\ []) do
    request(client, "DescribeEventSubscriptions", input, options)
  end

  @doc """
  Returns events related to DB instances, DB security groups, DB snapshots,
  and DB parameter groups for the past 14 days. Events specific to a
  particular DB instance, DB security group, database snapshot, or DB
  parameter group can be obtained by providing the name as a parameter. By
  default, the past hour of events are returned.
  """
  def describe_events(client, input, options \\ []) do
    request(client, "DescribeEvents", input, options)
  end

  @doc """
  Describes all available options.
  """
  def describe_option_group_options(client, input, options \\ []) do
    request(client, "DescribeOptionGroupOptions", input, options)
  end

  @doc """
  Describes the available option groups.
  """
  def describe_option_groups(client, input, options \\ []) do
    request(client, "DescribeOptionGroups", input, options)
  end

  @doc """
  Returns a list of orderable DB instance options for the specified engine.
  """
  def describe_orderable_d_b_instance_options(client, input, options \\ []) do
    request(client, "DescribeOrderableDBInstanceOptions", input, options)
  end

  @doc """
  Returns a list of resources (for example, DB instances) that have at least
  one pending maintenance action.
  """
  def describe_pending_maintenance_actions(client, input, options \\ []) do
    request(client, "DescribePendingMaintenanceActions", input, options)
  end

  @doc """
  Returns information about reserved DB instances for this account, or about
  a specified reserved DB instance.
  """
  def describe_reserved_d_b_instances(client, input, options \\ []) do
    request(client, "DescribeReservedDBInstances", input, options)
  end

  @doc """
  Lists available reserved DB instance offerings.
  """
  def describe_reserved_d_b_instances_offerings(client, input, options \\ []) do
    request(client, "DescribeReservedDBInstancesOfferings", input, options)
  end

  @doc """
  Returns a list of the source AWS regions where the current AWS region can
  create a Read Replica or copy a DB snapshot from. This API action supports
  pagination.
  """
  def describe_source_regions(client, input, options \\ []) do
    request(client, "DescribeSourceRegions", input, options)
  end

  @doc """
  Downloads all or a portion of the specified log file, up to 1 MB in size.
  """
  def download_d_b_log_file_portion(client, input, options \\ []) do
    request(client, "DownloadDBLogFilePortion", input, options)
  end

  @doc """
  Forces a failover for a DB cluster.

  A failover for a DB cluster promotes one of the Aurora Replicas (read-only
  instances) in the DB cluster to be the primary instance (the cluster
  writer).

  Amazon Aurora will automatically fail over to an Aurora Replica, if one
  exists, when the primary instance fails. You can force a failover when you
  want to simulate a failure of a primary instance for testing. Because each
  instance in a DB cluster has its own endpoint address, you will need to
  clean up and re-establish any existing connections that use those endpoint
  addresses when the failover is complete.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def failover_d_b_cluster(client, input, options \\ []) do
    request(client, "FailoverDBCluster", input, options)
  end

  @doc """
  Lists all tags on an Amazon RDS resource.

  For an overview on tagging an Amazon RDS resource, see [Tagging Amazon RDS
  Resources](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html).
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Modify a setting for an Amazon Aurora DB cluster. You can change one or
  more database configuration parameters by specifying these parameters and
  the new values in the request. For more information on Amazon Aurora, see
  [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def modify_d_b_cluster(client, input, options \\ []) do
    request(client, "ModifyDBCluster", input, options)
  end

  @doc """
  Modifies the parameters of a DB cluster parameter group. To modify more
  than one parameter, submit a list of the following: `ParameterName`,
  `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be
  modified in a single request.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*

  <note> Changes to dynamic parameters are applied immediately. Changes to
  static parameters require a reboot without failover to the DB cluster
  associated with the parameter group before the change can take effect.

  </note> <important> After you create a DB cluster parameter group, you
  should wait at least 5 minutes before creating your first DB cluster that
  uses that DB cluster parameter group as the default parameter group. This
  allows Amazon RDS to fully complete the create action before the parameter
  group is used as the default for a new DB cluster. This is especially
  important for parameters that are critical when creating the default
  database for a DB cluster, such as the character set for the default
  database defined by the `character_set_database` parameter. You can use the
  *Parameter Groups* option of the [Amazon RDS
  console](https://console.aws.amazon.com/rds/) or the
  `DescribeDBClusterParameters` command to verify that your DB cluster
  parameter group has been created or modified.

  </important>
  """
  def modify_d_b_cluster_parameter_group(client, input, options \\ []) do
    request(client, "ModifyDBClusterParameterGroup", input, options)
  end

  @doc """
  Adds an attribute and values to, or removes an attribute and values from, a
  manual DB cluster snapshot.

  To share a manual DB cluster snapshot with other AWS accounts, specify
  `restore` as the `AttributeName` and use the `ValuesToAdd` parameter to add
  a list of IDs of the AWS accounts that are authorized to restore the manual
  DB cluster snapshot. Use the value `all` to make the manual DB cluster
  snapshot public, which means that it can be copied or restored by all AWS
  accounts. Do not add the `all` value for any manual DB cluster snapshots
  that contain private information that you don't want available to all AWS
  accounts.

  To view which AWS accounts have access to copy or restore a manual DB
  cluster snapshot, or whether a manual DB cluster snapshot public or
  private, use the `DescribeDBClusterSnapshotAttributes` API action.

  If a manual DB cluster snapshot is encrypted, it cannot be shared.
  """
  def modify_d_b_cluster_snapshot_attribute(client, input, options \\ []) do
    request(client, "ModifyDBClusterSnapshotAttribute", input, options)
  end

  @doc """
  Modifies settings for a DB instance. You can change one or more database
  configuration parameters by specifying these parameters and the new values
  in the request.
  """
  def modify_d_b_instance(client, input, options \\ []) do
    request(client, "ModifyDBInstance", input, options)
  end

  @doc """
  Modifies the parameters of a DB parameter group. To modify more than one
  parameter, submit a list of the following: `ParameterName`,
  `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be
  modified in a single request.

  <note> Changes to dynamic parameters are applied immediately. Changes to
  static parameters require a reboot without failover to the DB instance
  associated with the parameter group before the change can take effect.

  </note> <important> After you modify a DB parameter group, you should wait
  at least 5 minutes before creating your first DB instance that uses that DB
  parameter group as the default parameter group. This allows Amazon RDS to
  fully complete the modify action before the parameter group is used as the
  default for a new DB instance. This is especially important for parameters
  that are critical when creating the default database for a DB instance,
  such as the character set for the default database defined by the
  `character_set_database` parameter. You can use the *Parameter Groups*
  option of the [Amazon RDS console](https://console.aws.amazon.com/rds/) or
  the *DescribeDBParameters* command to verify that your DB parameter group
  has been created or modified.

  </important>
  """
  def modify_d_b_parameter_group(client, input, options \\ []) do
    request(client, "ModifyDBParameterGroup", input, options)
  end

  @doc """
  Updates a manual DB snapshot, which can be encrypted or not encrypted, with
  a new engine version. You can update the engine version to either a new
  major or minor engine version.

  Amazon RDS supports upgrading a MySQL DB snapshot from MySQL 5.1 to MySQL
  5.5.
  """
  def modify_d_b_snapshot(client, input, options \\ []) do
    request(client, "ModifyDBSnapshot", input, options)
  end

  @doc """
  Adds an attribute and values to, or removes an attribute and values from, a
  manual DB snapshot.

  To share a manual DB snapshot with other AWS accounts, specify `restore` as
  the `AttributeName` and use the `ValuesToAdd` parameter to add a list of
  IDs of the AWS accounts that are authorized to restore the manual DB
  snapshot. Uses the value `all` to make the manual DB snapshot public, which
  means it can be copied or restored by all AWS accounts. Do not add the
  `all` value for any manual DB snapshots that contain private information
  that you don't want available to all AWS accounts.

  To view which AWS accounts have access to copy or restore a manual DB
  snapshot, or whether a manual DB snapshot public or private, use the
  `DescribeDBSnapshotAttributes` API action.

  If the manual DB snapshot is encrypted, it cannot be shared.
  """
  def modify_d_b_snapshot_attribute(client, input, options \\ []) do
    request(client, "ModifyDBSnapshotAttribute", input, options)
  end

  @doc """
  Modifies an existing DB subnet group. DB subnet groups must contain at
  least one subnet in at least two AZs in the region.
  """
  def modify_d_b_subnet_group(client, input, options \\ []) do
    request(client, "ModifyDBSubnetGroup", input, options)
  end

  @doc """
  Modifies an existing RDS event notification subscription. Note that you
  cannot modify the source identifiers using this call; to change source
  identifiers for a subscription, use the `AddSourceIdentifierToSubscription`
  and `RemoveSourceIdentifierFromSubscription` calls.

  You can see a list of the event categories for a given SourceType in the
  [Events](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html)
  topic in the Amazon RDS User Guide or by using the
  **DescribeEventCategories** action.
  """
  def modify_event_subscription(client, input, options \\ []) do
    request(client, "ModifyEventSubscription", input, options)
  end

  @doc """
  Modifies an existing option group.
  """
  def modify_option_group(client, input, options \\ []) do
    request(client, "ModifyOptionGroup", input, options)
  end

  @doc """
  Promotes a Read Replica DB instance to a standalone DB instance.

  <note> We recommend that you enable automated backups on your Read Replica
  before promoting the Read Replica. This ensures that no backup is taken
  during the promotion process. Once the instance is promoted to a primary
  instance, backups are taken based on your backup settings.

  </note>
  """
  def promote_read_replica(client, input, options \\ []) do
    request(client, "PromoteReadReplica", input, options)
  end

  @doc """
  Promotes a Read Replica DB cluster to a standalone DB cluster.
  """
  def promote_read_replica_d_b_cluster(client, input, options \\ []) do
    request(client, "PromoteReadReplicaDBCluster", input, options)
  end

  @doc """
  Purchases a reserved DB instance offering.
  """
  def purchase_reserved_d_b_instances_offering(client, input, options \\ []) do
    request(client, "PurchaseReservedDBInstancesOffering", input, options)
  end

  @doc """
  Rebooting a DB instance restarts the database engine service. A reboot also
  applies to the DB instance any modifications to the associated DB parameter
  group that were pending. Rebooting a DB instance results in a momentary
  outage of the instance, during which the DB instance status is set to
  rebooting. If the RDS instance is configured for MultiAZ, it is possible
  that the reboot will be conducted through a failover. An Amazon RDS event
  is created when the reboot is completed.

  If your DB instance is deployed in multiple Availability Zones, you can
  force a failover from one AZ to the other during the reboot. You might
  force a failover to test the availability of your DB instance deployment or
  to restore operations to the original AZ after a failover occurs.

  The time required to reboot is a function of the specific database engine's
  crash recovery process. To improve the reboot time, we recommend that you
  reduce database activities as much as possible during the reboot process to
  reduce rollback activity for in-transit transactions.
  """
  def reboot_d_b_instance(client, input, options \\ []) do
    request(client, "RebootDBInstance", input, options)
  end

  @doc """
  Disassociates an Identity and Access Management (IAM) role from an Aurora
  DB cluster. For more information, see [Authorizing Amazon Aurora to Access
  Other AWS Services On Your
  Behalf](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Authorizing.AWSServices.html).
  """
  def remove_role_from_d_b_cluster(client, input, options \\ []) do
    request(client, "RemoveRoleFromDBCluster", input, options)
  end

  @doc """
  Removes a source identifier from an existing RDS event notification
  subscription.
  """
  def remove_source_identifier_from_subscription(client, input, options \\ []) do
    request(client, "RemoveSourceIdentifierFromSubscription", input, options)
  end

  @doc """
  Removes metadata tags from an Amazon RDS resource.

  For an overview on tagging an Amazon RDS resource, see [Tagging Amazon RDS
  Resources](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html).
  """
  def remove_tags_from_resource(client, input, options \\ []) do
    request(client, "RemoveTagsFromResource", input, options)
  end

  @doc """
  Modifies the parameters of a DB cluster parameter group to the default
  value. To reset specific parameters submit a list of the following:
  `ParameterName` and `ApplyMethod`. To reset the entire DB cluster parameter
  group, specify the `DBClusterParameterGroupName` and `ResetAllParameters`
  parameters.

  When resetting the entire group, dynamic parameters are updated immediately
  and static parameters are set to `pending-reboot` to take effect on the
  next DB instance restart or `RebootDBInstance` request. You must call
  `RebootDBInstance` for every DB instance in your DB cluster that you want
  the updated static parameter to apply to.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def reset_d_b_cluster_parameter_group(client, input, options \\ []) do
    request(client, "ResetDBClusterParameterGroup", input, options)
  end

  @doc """
  Modifies the parameters of a DB parameter group to the engine/system
  default value. To reset specific parameters submit a list of the following:
  `ParameterName` and `ApplyMethod`. To reset the entire DB parameter group,
  specify the `DBParameterGroup` name and `ResetAllParameters` parameters.
  When resetting the entire group, dynamic parameters are updated immediately
  and static parameters are set to `pending-reboot` to take effect on the
  next DB instance restart or `RebootDBInstance` request.
  """
  def reset_d_b_parameter_group(client, input, options \\ []) do
    request(client, "ResetDBParameterGroup", input, options)
  end

  @doc """
  Creates an Amazon Aurora DB cluster from data stored in an Amazon S3
  bucket. Amazon RDS must be authorized to access the Amazon S3 bucket and
  the data must be created using the Percona XtraBackup utility as described
  in [Migrating Data from MySQL by Using an Amazon S3
  Bucket](AmazonRDS/latest/UserGuide/Aurora.Migrate.MySQL.html#Aurora.Migrate.MySQL.S3).
  """
  def restore_d_b_cluster_from_s3(client, input, options \\ []) do
    request(client, "RestoreDBClusterFromS3", input, options)
  end

  @doc """
  Creates a new DB cluster from a DB cluster snapshot. The target DB cluster
  is created from the source DB cluster restore point with the same
  configuration as the original source DB cluster, except that the new DB
  cluster is created with the default security group.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def restore_d_b_cluster_from_snapshot(client, input, options \\ []) do
    request(client, "RestoreDBClusterFromSnapshot", input, options)
  end

  @doc """
  Restores a DB cluster to an arbitrary point in time. Users can restore to
  any point in time before `LatestRestorableTime` for up to
  `BackupRetentionPeriod` days. The target DB cluster is created from the
  source DB cluster with the same configuration as the original DB cluster,
  except that the new DB cluster is created with the default DB security
  group.

  For more information on Amazon Aurora, see [Aurora on Amazon
  RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html)
  in the *Amazon RDS User Guide.*
  """
  def restore_d_b_cluster_to_point_in_time(client, input, options \\ []) do
    request(client, "RestoreDBClusterToPointInTime", input, options)
  end

  @doc """
  Creates a new DB instance from a DB snapshot. The target database is
  created from the source database restore point with the most of original
  configuration with the default security group and the default DB parameter
  group. By default, the new DB instance is created as a single-AZ deployment
  except when the instance is a SQL Server instance that has an option group
  that is associated with mirroring; in this case, the instance becomes a
  mirrored AZ deployment and not a single-AZ deployment.

  If your intent is to replace your original DB instance with the new,
  restored DB instance, then rename your original DB instance before you call
  the RestoreDBInstanceFromDBSnapshot action. RDS does not allow two DB
  instances with the same name. Once you have renamed your original DB
  instance with a different identifier, then you can pass the original name
  of the DB instance as the DBInstanceIdentifier in the call to the
  RestoreDBInstanceFromDBSnapshot action. The result is that you will replace
  the original DB instance with the DB instance created from the snapshot.

  If you are restoring from a shared manual DB snapshot, the
  `DBSnapshotIdentifier` must be the ARN of the shared DB snapshot.
  """
  def restore_d_b_instance_from_d_b_snapshot(client, input, options \\ []) do
    request(client, "RestoreDBInstanceFromDBSnapshot", input, options)
  end

  @doc """
  Restores a DB instance to an arbitrary point in time. You can restore to
  any point in time before the time identified by the LatestRestorableTime
  property. You can restore to a point up to the number of days specified by
  the BackupRetentionPeriod property.

  The target database is created with most of the original configuration, but
  in a system-selected availability zone, with the default security group,
  the default subnet group, and the default DB parameter group. By default,
  the new DB instance is created as a single-AZ deployment except when the
  instance is a SQL Server instance that has an option group that is
  associated with mirroring; in this case, the instance becomes a mirrored
  deployment and not a single-AZ deployment.
  """
  def restore_d_b_instance_to_point_in_time(client, input, options \\ []) do
    request(client, "RestoreDBInstanceToPointInTime", input, options)
  end

  @doc """
  Revokes ingress from a DBSecurityGroup for previously authorized IP ranges
  or EC2 or VPC Security Groups. Required parameters for this API are one of
  CIDRIP, EC2SecurityGroupId for VPC, or (EC2SecurityGroupOwnerId and either
  EC2SecurityGroupName or EC2SecurityGroupId).
  """
  def revoke_d_b_security_group_ingress(client, input, options \\ []) do
    request(client, "RevokeDBSecurityGroupIngress", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "rds"}
    host = get_host("rds", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-"},
               {"X-Amz-Target", ".#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
