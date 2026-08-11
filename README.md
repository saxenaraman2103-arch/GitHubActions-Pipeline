# GitHubActions-Pipeline
GitHubActions-Pipeline

# Terraform CI workflow
                 LAPTOP
                    │
                    │ git push
                    ▼
        feature/firstpipeline
                    │
                    ▼
             GitHub Actions
                    │
                    ▼
              Azure Login
                    │
                    ▼
          Terraform Format
                    │
                    ▼
           Terraform Init
                    │
                    ▼
         Terraform Validate
                    │
                    ▼
           Terraform Plan
                    │
                    ▼
               ❌ APPLY
              abhi nahi
