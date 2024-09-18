#!/bin/bash
# user data will get sudo access
dnf install ansible -y
cd /tmp
git clone https://github.com/Sandeep4856/expense-roles-ansible.git
cd expense-roles-ansible
ansible-playbook main.yaml -e component=backend -e login_password=ExpenseApp1
ansible-playbook main.yaml -e component=frontend




# #!/bin/bash
# # user data will get sudo access
# dnf install ansible -y
# cd /tmp
# git clone https://github.com/Sandeep4856/expense-roles-ansible.git
# cd expense-roles-ansible

# # Run the playbook with multiple components
# ansible-playbook main.yaml -e "components=['backend','frontend']" -e login_password=ExpenseApp1
