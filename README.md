# IT-Learning-Journey-or-The-SysAdmin-Suitcase.
A collection of open-source notes, analogies, and troubleshooting guides from my IT journey.# 🧳 The SysAdmin's Suitcase: My IT Learning Journey

Welcome! This repository is my digital legacy—a collection of lessons, analogies, and technical guides I've gathered while self-learning Windows Server, Active Directory, and Cloud Infrastructure. 

Everything here is **Open Source** and free for anyone hungry to learn.

---

## 🚀 The Core Philosophy: "Logic over Syntax"
In IT, commands change, but logic is universal. I focus on understanding the "Pipeline" of how systems work.

### 💡 The "Suitcase" Analogy
I believe PowerShell isn't a "liquid" pipe; it’s a **conveyor belt of suitcases**. 
* **The Object (Suitcase):** Contains all the data (Name, ID, Status).
* **The Pipe (`|`):** The belt moving suitcases one by one.
* **The Filter:** An inspector at the end of the belt checking for specific "Tags" (like `LockedOut`).

---

## 🛠️ Technical Deep-Dives

### 1. Active Directory & GPO
* **The "Locked GUI" Pivot:** When RDP or Windows Server freezes, don't restart. Pivot to PowerShell.
* **GPO Nesting:** Understanding **AGDLP** (Account > Global > Domain Local > Permission).
* **Command Ritual:** ```powershell
  # Check group membership with scope tags
  Get-ADPrincipalGroupMembership -Identity "User" | Select Name, GroupScope
