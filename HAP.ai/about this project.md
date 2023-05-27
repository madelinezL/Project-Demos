This Health Analytics Platform.AI project is a Deloitte firm initiative project which I enrolled starting from May, 2023.
https://github.com/rvs3129/automatch.ai/tree/dev

#### Project Backgroud
Artificial Intelligence (AI) has the potential to revolutionize the healthcare industry by making medical diagnosis faster and more accurate, improving patient outcomes, and reducing costs. However, the successful implementation of AI in healthcare relies on the consolidation of relevant data into an analytics friendly platform. Unfortuantely, most of the data required to perform meaningful analyses is often trapped inside various schemas and data stores. To address this issue, the Health Analytics Platform - Artificial Intelligence (HAP.ai) is designed to handle the complexities of healthcare data integration. HAP.ai  

*5/6/23* <br/>
#### Acronyms/ Intro
* ADI: Automated Data Integration
* RDBMS: Regional Database Management System
* EMR/ EHR: Electronic Medical Record/ Electronic Health Record (e.g. Epic, MEDITECH, McKesson, and Allscripts)
* ESB: Enterprise Service Bus (A software architecture that facilitates communication between different applications in a distributed computing environment)
* MLLP: Minimal Lower Layer Protocol (A protocol used in healthcare industry to transmit messages between systems in a standardized way)
* NAT: National Address Translation (A device or service that allows multiple devices on a private network to connect on the internet using a single public IP address)
* Amazon S3 (Simple Storage Service): a cloud-based object storage service offered by AWS.
* Amazon SNS (Simple Notification Service): a fully managed messaging service provided by AWS.
* AWS Lambda: A compute service offered by AWS that allows developers to run codes in response to events and automatically manages the compute resources required by that code.
* AWS Glue: An ETL service that moves data between data stores. It simplifies and automates the ETL process to help users prepare and load data for analytics.
* HL7: Health Level Seven International (A standard for exchange healthcare information electronically, and it enables the secure and reliable transfer of patient health data among healthcare providers, patients, and other authorized parties)
* HLV2: HL7 version 2. It has been widely adopted and remains one of the most commonly used standards for healthcare data exchange.
* FHIR: Fast Healthcare Interoperability Resources (A standard for exchange healthcare information electronically in a structured and standardized format)
* Amazon HealthLake: A platform to enable healthcare and life sciences customers to securely store, transform, and analyze vast amount of clinical and non-clinical data in the cloud.
* Amazon Athena: An interactive query service that allows you to analyze data in Amazon S3 using standard SQL. With Athena, you can easily query data stored in various formats such as CSV, JSON, Avro, or ORC.
* Amazon SageMaker: A platform that enables developers and data scientists to quickly and easily build, train, and deploy machine learning models at scale. 
* Amazon QuickSight: A business intelligence (BI) service by Amazon Web Services (AWS) that allows users to create and publish interactive BI dashboards.
* Ontology-drive: Refers to an approach that uses a formal ontology to drive the process of data mapping and transformation. In the context of NLP and data mapping, an ontology can be used to represent the meaning and relationships of the terms of concepts used in a particular dataset or domain of data. 
* SME: Subject Matter Experts. These are individuals who possess specialized knowledge and expertise in a particular field or domain.

#### Obstacles for an AI platform
* Data is trapped inside other schemas and data stores.
* Moving data from the EMR/ EHR systems can be extremely expensive, time consuming, and prone to error.

*5/14/23* <br/>
#### Many-to-Many-OBX spreadsheet work
* Determine One-to-One
  - OperationDefinition.name
  - Highest matching score