BINDIR=$(dirname ${BASH_SOURCE})

PLAYBOOK_DIR="${BINDIR}/../playbooks"
PLAYBOOK="${PLAYBOOK_DIR}/test.yml"
CONFIG_FILE="${BINDIR}/../ansible.cfg"
LOG_FILE="${BINDIR}/../log/ansible-${PLAYBOOK%.yml}-$(date +%Y%m%d-%H%M%S).log"
INVENTORY_FILE="${BINDIR}/../inventory/inventory.ini"

export ANSIBLE_CONFIG=$CONFIG_FILE
export ANSIBLE_LOG_PATH=$LOG_FILE

echo "PLAYBOOK=${PLAYBOOK}" >> $ANSIBLE_LOG_PATH
echo "ANSIBLE_CONFIG=${ANSIBLE_CONFIG}" >> $ANSIBLE_LOG_PATH

#pushd $PLAYBOOK_DIR
ansible-playbook $PLAYBOOK -i $INVENTORY_FILE
#popd
