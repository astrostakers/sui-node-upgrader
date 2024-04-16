# SUI Node Update Playbook

This Ansible playbook is designed to automate the update process for SUI nodes. It performs a series of tasks to ensure that your SUI node is updated correctly and efficiently.

## Prerequisites

Before running this playbook, ensure you have the following:

- Ansible installed on your control machine.
- Access to the target machine(s) where the SUI node is running.
- Necessary permissions to execute commands on the target machine(s).

## Usage

1. Clone this repository to your control machine:

    ```bash
    git clone git@github.com:astrostakers/sui-node-upgrader.git
    cd sui-node-upgrader
    ```

2. Update the `vars/vars-code-upgrade.yml` file with the appropriate variables for your setup. These variables include the target directory, script source and destination, branch target, and expected checksum, among others.

3. Run the playbook using the following command:

    ```bash
    ansible-playbook -i <inventory-file> sui-code-upgrade.yml
    ```

    Replace `<inventory-file>` with the path to your Ansible inventory file.

## Tasks Overview

1. **Delete the SUI directory**: Removes the existing SUI directory to ensure a fresh update.
2. **Clone the SUI GitHub repository**: Clones the specified branch of the SUI repository to the target directory.
3. **Copy script**: Copies a necessary script to the target machine.
4. **Compare the checksum**: Verifies the integrity of the cloned repository.
5. **Update sui-client**: Builds the sui-client from the source.
6. **Update sui-node**: Compiles the sui-node binary with optimizations.
7. **Stop Node Service if running**: Ensures that the node service is not running before updating.
8. **Copy binary**: Copies the newly built binary to the specified location.
9. **Start Node Service**: Restarts the node service with the updated binary.

## Support

For any issues or questions regarding this playbook, please open an issue in the repository or contact the maintainers.

## Contributing

Contributions to this playbook are welcome. Please fork the repository, make your changes, and submit a pull request.

