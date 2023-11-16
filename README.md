# .vscode  


## My Shortcuts  

Alt+j   toggle terminal or focus on terminal  
Alt+p   previous editor window  
Alt+n   next editor window  

Alt+k  focus on first editor window  
Ctrl+1  focus on first editor window  
Ctrl+2  focus on second editor window  
Ctrl+3  focus on third editor window  

Ctrl+Shift+V  Readme preview window  



## Git setup 

[stackoverflow](https://stackoverflow.com/questions/5343068/is-there-a-way-to-cache-https-credentials-for-pushing-commits)


You can just use one of the following credential helpers:

git config --global credential.helper cache

The credential.helper cache value tells Git to keep your password cached in memory for a particular amount of minutes. The default is 15 minutes, you can set a longer timeout with:

##### Cache for 1 hour
git config --global credential.helper "cache --timeout=3600"

##### Cache for 1 day
git config --global credential.helper "cache --timeout=86400"

##### Cache for 1 week
git config --global credential.helper "cache --timeout=604800"
