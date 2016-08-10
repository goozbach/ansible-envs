for myenv in dev beta stage prod
do
  ansible-playbook --vault-password-file .vault-pw-file -i inv/ site.yml -e environ=$myenv
done
