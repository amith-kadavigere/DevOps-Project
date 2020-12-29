# DevOps-Project

## Requirement

* Deploy a Python Flask HelloWorld app accessible over the internet.

## TL;DR

Visit the link below to checkout the app.

* [Link to HelloWorld app](https://gcp.kutumba.xyz)

## About the App
* Contaierized Python Flask app available at this [link](https://github.com/apolloio/k8s-helloworld) using Docker.
* Container image uploaded to Google Container Registry.
* GKE cluster deployed using Terraform with the specified parameters.
* App deployed in Kubernetes with Autoscaling enabled.
* Application associated with custom domain.
* Endpoint secured with encryption using Lets Encrypt staging with automatic certificate renewal provided by Cert-Manager.

&nbsp;

> ### But why Kubernetes?!!
> The biggest benefit of using Kubernetes is its ability to orchestrate an Application's lifecycle. What is Orchestration, you ask? In a nutshell, Kubernetes handles the lifecycle & management of an application from Deployment, Updates, Management, Availability, Scalability, Migration and to its eventual Demise. Once the application is deployed in Kubernetes, except for enhancements, all one has to do is to ensure Kubernetes service is up and running and the application management is taken care by  Kubernetes.

&nbsp;

## Some additional benefits of hosting apps in Kubernetes.

#### Scalability
* Helps keep the cluster elastic. Scale in / scale out Cluster nodes, Worker nodes, pods as per Application requirements or load.

#### Fault Tolerance
* Pods are ephemeral. For Stateless applications which require only content to be served, we could specify the minimum, maximum and desired number of pods to be maintained at all times thus ensuring availability.
* Autoscaling could be enabled to scale as per CPU/Memory utilization or using custom metrics from Prometheus/Graphana based on traffic load.
* Stateful applications are supported through Stateful sets, Persistent Voumes.

#### Security
* If an application crashes or is compromised it would not affect other applications in the cluster as its already isolated in its own pod. Organizations could enforce constraints at the cluster level to restrict usage to approved hardened images and also use private repositories.
* K8S could be secured using self signed certs, SSL/TLS through Cert Authority like LetsEncrypt.

#### Efficiency
* Containers consume less resources than VMs. Alpine images for example consume as less as 5MB while feature rich RHEL/Ubuntu images may take upwards of 600MB while providing more flexibility and features.

#### Platform agnostic
* Kubernetes is the same everywhere. Organizations looking to increase their DevOps workforce need only to look for K8S expertise as Engineers knowledgable in K8S could implement it on multiple cloud platforms as well as on Hybrid and on-prem.

#### Extensibility
* As Kubernetes adoption has gained traction and the platform has matured over the years, there is extensive contributions through community and Managed solution options.
* Kubernetes native features like Helm / Helm Charts and Operators have improved deployment of apps and features considerably.
* Extensive Automation Capabilities through IaC, CI/CD featuring rollbacks and Canary Deployments aid with Release planning.

#### Support
* Again, as its open source, there is extensive support available through documentation, forums, discussion groups like discord, etc. available for the budding Engineer or the discerning enthusiast.
* Major Cloud providers abstract the Control Plane through managed solutions like EKS, AKS, GKE, etc.

#### Observability
* Besides Kubernetes' own Monitoring and metrics capabilities, there are dedicated solutions like Prometheus / Graphana, Elastic Stack as well as Managed solutions like Instana, Splunk, Appdynamics, Dynatrace that could be used for Monitoring, logging and alerting through email, Slack, Teams etc.

#### Service mesh
* It's not just about that Cluster life! Through Istio and Consul one could configure Kubernetes to work with resources outside the cluster and bring all of them under one Umbrella for visibility.
