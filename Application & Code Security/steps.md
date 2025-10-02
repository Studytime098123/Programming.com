# 🚀 My Awesome Project
---

## Table of Contents  
- [About](#about)  
- [Tools](#tools)  
- [Prerequisites](#Prerequisitesn)
- [Docker](#docker)   
- [Usage](#usage)

---

## About

This is a assignment project about creating the multistage Dockerfile and implementing the Sast and SCA scaninng tools 


## Tools
  - Docker
  - SNYK (Sast)
  - Trivy (SCA)
  - Jenkins (CICD Tool)

# Prerequisites

## Jenkins Installation

Please follow the steps from the link [Jenkins-ubuntu](https://www.jenkins.io/doc/book/installing/linux/#debianubuntu)

## Docker

  1. Docker install please follow the steps form [Docker-ubuntu](https://docs.docker.com/engine/install/ubuntu/)
  2. give docker access to jenkins 
     ```bash
     sudo chmod -aG docker jenkins
     ```

# SNYK

  1. For SNYK you need to open an account using google or github ([SNYK](https://snyk.io/))
  2. Install SNYK CLI on to the meachine by selecting on menu->integrations->Cli and install based on the operating systems
  3. add token to the jenkins user, Go to bottem select account name -> select account settings -> click and copy the token
  4. on ubuntu change user 
  ```bash 
  sudo su jenkins 
  ```
  5. type 
  ```bash
  snyk auth <token>
  ```

# TRIVY

insatll trivy on meachine 
```bash
sudo apt-get update -y
sudo apt-get install -y wget apt-transport-https gnupg lsb-release

wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | sudo tee /etc/apt/sources.list.d/trivy.list

sudo apt-get update -y
sudo apt-get install -y trivy
```


use the provided jenkins file change the github link according to the need and run the pipeline 
