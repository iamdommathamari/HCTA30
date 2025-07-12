# 🏗️ 30-Day Terraform Associate Certification Plan

**Goal:** Pass the HashiCorp Certified Terraform Associate (003) exam in 30 days  
**Exam Format:** 57 questions, 60 minutes, $70.50 USD  
**Prerequisites:** Basic CLI knowledge and cloud familiarity (AWS/Azure/GCP)

## 📅 Daily Study Plan

### Week 1: Terraform Fundamentals
| Day | Topics | Hands-on Lab |
|-----|--------|--------------|
| 1 | Installation & First Config | `terraform init`, `plan`, `apply` |
| 2 | HCL Syntax | Write resource blocks for EC2/S3 |
| 3 | State Management | Explore `terraform.tfstate` file |
| 4 | Variables & Outputs | Create `variables.tf` and `outputs.tf` |
| 5 | Modules | Use public modules from registry |
| 6 | Providers | Configure AWS/Azure/GCP provider |
| 7 | Project: Deploy Web Server | EC2 + Security Group + ELB |

### Week 2: Advanced Concepts
| Day | Focus Area | Task |
|-----|------------|------|
| 8 | Workspaces | Create dev/prod environments |
| 9 | Remote State | Set up S3 backend |
| 10 | Dynamic Blocks | Auto-generate security group rules |
| 11 | Provisioners | Use `local-exec` for configs |
| 12 | Debugging | Practice `TF_LOG` scenarios |
| 13 | Terraform Cloud | Free tier setup |
| 14 | Mock Exam #1 | Timed practice test |

### Week 3: Real-World Scenarios
| Day | Topic | Resource |
|-----|-------|----------|
| 15 | AWS Deep Dive | Deploy VPC + EKS |
| 16 | Azure/GCP | Multi-cloud configs |
| 17 | Sentinel Policies | Enterprise use cases |
| 18 | Cost Estimation | `terraform plan` analysis |
| 19 | Mock Exam #2 | Review incorrect answers |
| 20 | Weak Areas | Focused revision |

### Week 4: Exam Prep
| Day | Task |
|-----|------|
| 21-23 | 3 Full Practice Exams |
| 24-26 | Flashcards Review |
| 27 | Schedule Exam |
| 28-29 | Final Notes Review |
| 30 | **Exam Day** |

## 🛠️ Hands-On Projects
1. **Multi-Tier AWS Architecture** (VPC, EC2, RDS, S3)
2. **Modular Kubernetes Cluster** (EKS/AKS)
3. **State Locking** (S3 + DynamoDB)

## 📚 Resources
- [Official Study Guide](https://learn.hashicorp.com/terraform/certification/associate-study-guide)
- [Practice Exams](https://www.whizlabs.com/terraform-associate/)
- [Terraform Cheatsheet](https://github.com/shuaibiyy/awesome-terraform)

## 💡 Exam Tips
- Focus on: **State (35%)**, **Modules (20%)**, **CLI (15%)**
- Know these commands cold:
  ```bash
  terraform validate
  terraform fmt
  terraform taint
  terraform import