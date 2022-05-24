import subprocess

sub = subprocess.Popen('ps -ef | grep response.py', shell=True, stdout=subprocess.PIPE)
sub.wait()
res = sub.stdout.readlines()
pids = []
for line in res:
    line = line.decode().strip()
    if('grep' not in line):
        pids.append(line.split()[1])

for pid in pids:
    cmd = 'sudo kill -9 {}'.format(pid)
    subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE)
