# CTF2022 Challenge Hints
Here are hints for the challenges.

## Challenge 1: So Su Me
SUDO rule: `localuser1	ALL=(ALL) NOPASSWD: /bin/su *, !/bin/su root`

<details>
  <summary>Hint</summary>
Does that ! do what the author of rule intended it to do?
</details>

## Challenge 2: Copy Challenge
SUDO rule: `localuser2	ALL=(ALL) NOPASSWD: /bin/cp`

<details>
  <summary>Hint</summary>
You can copy any file, including one you wrote, to anywhere on the system, including overwriting files already in place!
</details>

## Challenge 3: Copy Cat
SUDO rule: `localuser3	ALL=(ALL) NOPASSWD: /bin/cp * /var/tmp`

<details>
  <summary>Hint</summary>
Have you thought about what a symbolic link could do for you?
</details>

## Challenge 4: Copy Dog
SUDO rule: `localuser4	ALL=(ALL) NOPASSWD: /bin/cp /var/tmp/* /tmp/*`

<details>
  <summary>Hint</summary>
Try connecting the dots?
</details>

## Challenge 5: A Sudo With a View
SUDO rule: `localuser5	ALL=(ALL) NOPASSWD: /usr/bin/view`

<details>
  <summary>Hint</summary>
Read that man page again.
</details>

## Challenge 6: Finders Weepers
SUDO rule: `localuser6	ALL=(ALL) NOPASSWD: /usr/bin/find /var -name [A-Za-z0-9]*`

<details>
  <summary>Hint</summary>
Check those command line arguments for find again.
</details>

## Challenge 7: Less With More
SUDO rule: `localuser7	ALL=(ALL) NOPASSWD: /bin/more /var/log/*`

<details>
  <summary>Hint</summary>
Have you tried typing h?
</details>

## Challenge 8: Tar Is Older Than Tar
SUDO rule: `localuser8	ALL=(ALL) NOPASSWD: /bin/tar [ctx]f /backup.tar *`

<details>
  <summary>Hint</summary>
Run "pwd", and consider that for a moment.
</details>

## Challenge 9: Pass The Root Please
SUDO rule: `localuser9	ALL=(ALL) NOPASSWD: /usr/bin/passwd *, !/usr/bin/passwd root`

<details>
  <summary>Hint</summary>
Consider the ! and the *.
</details>

## Challenge 10: "You're the Top, You're the Colosseum"
SUDO rule: `localuser10	ALL=(ALL) NOPASSWD: /usr/bin/top`

<details>
  <summary>Hint</summary>
Re-read that top man page.
</details>

## Challenge 11: Send in the Chowns
SUDO rule: `localuser11	ALL=(ALL) NOPASSWD: /bin/chown localuser11 /var/spool/our_queue/[a-z][a-z][a-z]/?`

<details>
  <summary>Hint</summary>
Concentrate on the '?'.
</details>

## Challenge 12: Watching You Watching Me
SUDO rule: `localuser12	ALL=(ALL) NOPASSWD: /usr/bin/watch du -hs /var`

<details>
  <summary>Hint</summary>
Are you on the right *path*?
</details>

## Challenge 13: The Chmod Squad
SUDO rule: `localuser13	ALL=(ALL) NOPASSWD: /bin/chmod [ugoa][-+=][rwxXst] /var/spool/our_queue/[a-z][a-z][a-z]/?`

<details>
  <summary>Hint</summary>
Try re-reading the chmod man page.
</details>

## Challenge 14: Conjunction Junction ...
SUDO rule: `localuser14	ALL=(ALL) NOPASSWD:SETENV: /bin/ls`

<details>
  <summary>Hint</summary>
Look at sudo -l again, and read all the things.
</details>

## Challenge 15: htop Was Made for Walkin...
SUDO rule: `localuser15	ALL=(ALL) NOPASSWD: /usr/bin/htop`

<details>
  <summary>Hint</summary>
To find the right path, hit h and go through all the features.
</details>

## Challenge 16: Fresh Popt Corn
SUDO rule: `localuser16	ALL=(ALL) NOPASSWD: /usr/bin/rsync -a /app/dir1/ /app/dir2`

<details>
  <summary>Hint</summary>
Try ldd and re-read the man page.
</details>

## Challenge 17: Replay It Again Sam
SUDO rule: `localuser17	ALL=(ALL) NOPASSWD: /bin/ls /reports/, /bin/cat, /usr/local/bin/sudo_report.sh`

<details>
  <summary>Hint</summary>
This one is hard, but I have sed that before.
</details>

## Challenge 18: License to Kill
SUDO rule: `localuser18	ALL=(ALL) NOPASSWD: /usr/local/bin/admin_task.sh, /usr/local/bin/kill_admin.pl`

<details>
  <summary>Hint</summary>
Hmm... system() eh?
</details>

## Challenge 19: Copy Llama
SUDO rule: `localuser19	ALL=(ALL) NOPASSWD: /usr/local/bin/dir_archive.sh`

<details>
  <summary>Hint</summary>
$F <-- Hmm...
</details>

## Challenge 20: MOTD in a bottle
SUDO rule: `localuser20	ALL=(ALL) NOPASSWD: /usr/local/bin/motd.py`

<details>
  <summary>Hint</summary>
What's this dash e doing in here?
</details>

## Challenge 21: Overflowing with Users
SUDO rule: `localuser21	ALL=(ALL) NOPASSWD: /usr/local/bin/qa_users.py, /usr/local/bin/rm_qa_users.sh, /bin/su - mail_qa_*`

<details>
  <summary>Hint</summary>
This one is real hard, no hints for you!
</details>
