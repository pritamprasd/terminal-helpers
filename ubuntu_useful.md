```sh
# service mgmt
sudo systemctl start | stop | restart | status <service-name>

# multi java environment
update-java-alternatives --list
sudo update-java-alternatives --set /path/to/java/version
##dialog box
sudo update-alternatives --config java
##set in current terminal
export JAVA_HOME="$(jrunscript -e 'java.lang.System.out.println(java.lang.System.getProperty("java.home"));')"

```