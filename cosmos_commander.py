import paramiko
import time

hosts = ["172.168.3.94","172.168.3.95","172.168.3.96","172.168.3.97"]
user = "ubuntu"
password="ORK7oBtr"
gaia_home="/data/gaia"

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy)
commands = ["cd "+gaia_home,"sh start_gaiad.sh"]
for host in hosts:
    try: 
        client.connect(hostname=host,username=user,password=password)
        transport = client.get_transport()
        chan = transport.open_session()
        chan.exec_command('cd '+gaia_home+' ; nohup ./gaiad start > nohup.log 2>&1 &')
        time.sleep(2)
        chan.close()
    except Exception as e:
        print(e)

