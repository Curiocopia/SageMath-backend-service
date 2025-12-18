# 📦 SageMath Backend Server

This is a utility repo used in the adaptation of a sample Kubernetes docs learning example ([fine parallel processing work queue]). It is used to generate a Docker image that is called via an exposed FastAPI that triggers the execution of various [SageMath] scripts for computations.

## 🌟 Highlights

- Uses FastAPI to expose a REST API to clients 
- Implements a list of SageMath scripts including `factor()`, `is_prime()`, `oppermann_counts()` as well as a `generic()` method to evaluate SageMath expressions.  

## ℹ️ Overview

Please refer to [CurioCopia] for the specific blog and the relevant repo(s). 

### ✍️ Authors

All repos shared in [CurioCopia] are shared under Creative Commons license for others to adopt and use it as they wish.

## 🚀 Usage

So far, the only use of this repo was to generate the resultant Docker container and use it as a backend service to a client implemented as a Kubernetes Job. Please refer to the eventual link repo how it is used.

## ⬇️ Installation

Build the Docker container with your preferred tool, tag and commit to your choice of registry. 

```bash
podman build -t sagemath-backend-service .
podman tag oppermann-worker <registry>/sagemath-backend-service
podman push <registry>/sagemath-backend-service
```

## 💭 Feedback and Contributing

Please refer to the eventual link repo.

[fine parallel processing work queue]: https://kubernetes.io/docs/tasks/job/fine-parallel-processing-work-queue/
[SageMath]: https://sagemath.org
[Curiocopia]: https://curiocopia.com