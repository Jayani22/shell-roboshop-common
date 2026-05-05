# Roboshop Deployment using Shell (Common Modules)

This repository demonstrates the deployment of the **Roboshop microservices application** using Shell scripting with a focus on **reusability and modular design**.

Unlike basic shell automation, this project introduces a **common script/module approach**, reducing code duplication and improving maintainability.

---

## Project Overview

Roboshop is a **microservices-based e-commerce application** consisting of multiple services such as:

- Web (Frontend)
- Catalogue
- User
- Cart
- Shipping
- Payment
- Dispatch

In this repository, shared logic across services is centralized into **common scripts**, making deployment cleaner and more efficient.

---

## Why Common Scripts?

In large automation projects, repeating the same commands across multiple scripts leads to:

- Code duplication
- Difficult maintenance
- Higher chances of errors

This project solves that by:

- Creating reusable functions
- Centralizing common operations
- Improving script readability

---

## Tech Stack

- Linux
- Bash (Shell Scripting)
- Git & GitHub

---

## Architecture
Each service has its own script (e.g., `catalogue.sh`, `user.sh`)
A **common script file** contains reusable logic like:
  - Package installation
  - Logging
  - Status checks
  - Service setup functions
Individual service scripts call the common functions

---

## Key Features

- Modular shell scripting approach
- Reusable common functions
- Reduced code duplication
- Improved maintainability
- Cleaner and scalable automation

---

## Setup & Execution

1. Clone the Repository

```bash
git clone https://github.com/Jayani22/shell-roboshop-common.git
cd shell-roboshop-common
```

---

2. Give Execute Permission

```bash
chmod +x *.sh
```

---

3. Run a Service Script

```bash
./catalogue.sh
```

---

## Example (Common Script Usage)

```bash
source common.sh

status_check() {
  if [ $? -eq 0 ]; then
    echo "SUCCESS"
  else
    echo "FAILURE"
    exit 1
  fi
}
```

---

## Learning Outcomes

Through this project, I gained:

- Writing modular shell scripts
- Code reusability in automation
- Structuring scalable scripts
- Understanding real-world deployment patterns

---

## Future Enhancements

- Convert scripts into Ansible roles
- Add logging and error handling improvements
- Integrate with CI/CD pipelines
- Parameterize scripts for different environments

---

## Note

This project is part of my DevOps learning journey, focusing on writing reusable and maintainable automation scripts for real-world applications.

