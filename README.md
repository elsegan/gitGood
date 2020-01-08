# gitGood

### How to use:
#1. Open a terminal in the folder "utilityScripts"

#2. Run a script:
    "applyAliasesGlobal.sh" to make aliases global
    "applyAliasesLocal.sh" to make aliases local to this git repo
    "commonBasicAliases.sh" to make some basic global shortcuts
    
#3. You can now use the aliases to gitGood

### Basic housekeeping rules for the git-scripts

#1. Any scripts that are added must have the format:
-->
```
    #!/bin/sh
    # Author : <most recent author>
    # Purpose: <purpose of the script>
```
<--

#2. Try to add an echo which shows the script intent/description:
--> 
``` git-kleen.sh
    "Keep LEan Every Node"
```
<--
This is a 'super' clean, but 'clean' is already a git command
It is keeping the nodes lean by recursive resetting and leaning
  a node in this context is a level of submodule

#3. `camelCaseLikeThis` is the preferred format of branches/variables/names etc.
    use it wherever possible

#4. No commits should be made directly on the develop or master branch
    in other words, follow proper gitFlow and use the 3 main feature branches
```
feature/checkoutScripts
feature/cloneScripts
feature/utilityScripts
```
   Once a feature is in one of these branches it could be merged into develop

#5. Don't delete history of feature branches if they directly interface with develop

6. Make modular code if possible
 i.e. `refresh.sh` uses `kleen.sh` and `subdate.sh`
