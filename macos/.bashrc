# Source the ~/.bashrc.d directory
for custom_config_file in ~/.bashrc.d/*.bash; do
	source ${custom_config_file}
done
unset -v custom_config_file
