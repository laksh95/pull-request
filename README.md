# pull-request

# HOW IT WORKS:

# Step 1: Clone this repository
  
    `git clone https://github.com/laksh95/pull-request.git` 

     OR you can clone to a specific directory using 

    `git clone https://github.com/laksh95/pull-request.git /path/to/your/folder`
  
# Step 2: make the script executable

     RUN: `chmod +x /path/to/repository-folder/pull.sh`
    
     This will give excutable privilege to the script.
 
# Step 3: Create an alias in your `.bashrc` or `.zshrc` 

     In both cases the format to create an alias is same.

    `alias aliasname='command'`

     For understanding purpose I am creating alias by the name `pr` bt feel free to use any other name of your choice.

     Hence, in our case the alias will look like:

    `alias pr='sh /path/to/repository-folder/pull.sh'`
 
 Now the following step is required only if you are using Linux envorment
  
Voila, alias is ready and script is ready, now in order to make a PR all you have to do is call the alias and rest will be taken care of by itself.

# Also, important things to note here.

The default base branch name is set to `develop`. Since I made the script I used the one which I wanted. So in case your base branch is different there are 2 ways do it:

1. When you call the alias pass a parameter as the name of the base branch you want to create pull request to.

Now first way is useful when you want to create a PR to a branch which is always your base branch.

In case you want to setup a default base branch and dont want to send the branch name as a parameter follow the next step.

Open the script in your choice of editor and edit the following line:

https://github.com/laksh95/pull-request/blob/master/pull.sh#L8

In this line change the string `develop...$ref` to `your_branch_name...$ref`

And now you are good to go.
