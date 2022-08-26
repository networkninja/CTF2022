#!/usr/bin/python3

# Libs
import numpy as np
import os
import pwd
import sys
import tempfile as tf

# Get highest UID
uids = []
for i in pwd.getpwall():
    if 'nobody' not in i[0]:
        uids.append(i[2])

x = np.array(uids)
start_uid = np.add(np.amax(x), 1, dtype=np.ushort)

# Generate our UID list.
a = np.array(list(range(100)), dtype=np.ushort)
qa_uids = np.add(a, start_uid)

# Get gecos field
gecos = input("Mail QA Test Purpose: ")
if ':' in gecos:
    print("ERROR: No colons allowed in input!")
    sys.exit(1)

# Check that there aren't any mail_qa_* users on system right now.
for i in pwd.getpwall():
    if 'mail_qa_' in i[0]:
        print("ERROR: Mail QA users already on system!")
        sys.exit(1)

# Write our batch user add to a temporary file for use with the newusers comm.
batch = tf.NamedTemporaryFile()

for uid in qa_uids.astype(str):
   s = bytes("mail_qa_" + uid + ":x:" + uid + ":" + uid + ":" + gecos + ":/home/mail_qa_" + uid + ":/bin/bash\n", 'utf-8')
   batch.write(s)

batch.flush()

os.system("/usr/sbin/newusers " + batch.name)

batch.close()
