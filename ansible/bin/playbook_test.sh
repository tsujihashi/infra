PLAYBOOK_DIR="../playbooks"
PLAYBOOK="test.yml"
CONFIG_FILE="../ansible.cfg"
LOG_FILE="../log/ansible-${PLAYBOOK%.yml}-$(date +%Y%m%d-%H%M).log"

export ANSIBLE_CONFIG=$CONFIG_FILE
export ANSIBLE_LOG_PATH=$LOG_FILE

echo "PLAYBOOK=${PLAYBOOK}" >> $ANSIBLE_LOG_PATH
echo "ANSIBLE_CONFIG=${ANSIBLE_CONFIG}" >> $ANSIBLE_LOG_PATH

pushd $PLAYBOOK_DIR
ansible-playbook $PLAYBOOK
popd
