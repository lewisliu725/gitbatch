# gitbatch
The batch to execute git commands on multiple repositories.

# Usage for Windows
## Prerequisites
* The [GIT Client](https://git-scm.com/downloads) is installed.
* The GIT Client is configured properly, which means you can run the git commands successfully.

## Steps
1. Copy the ***gitb.bat*** to your local folder which contains multiple git repositories.
2. Open a terminal, and locate to the folder.
3. Then you can type the ***gitb*** commands same as how you type the ***git*** commands.
   
   For example:
   
   The commands below will pull and rebase the code for all the code repositories under current folder.
   ```bash
   gitb pull --rebase --autostash
   ```
  
   

# Usage for Linux
All the steps are same as the usage for Windows, the only difference is ***gitb.sh*** will be used instead of ***gitb.bat***.
