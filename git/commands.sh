  # SET UP GITHUB USER
  
  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"

  

  # SET UP SSH ( ./git/config )

  git remote set-url origin <SSH_URL>

  git remote set-url origin git@github.com:stefanoHTB/microservices-springboot.git


  
    # SQUASH 
  git rebase -i HEAD~3 
