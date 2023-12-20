Use the following syntax to run most processes as a daemon, not owned by any process besides init

`( executable & )`  
https://stackoverflow.com/questions/20338162/how-can-i-launch-a-new-process-that-is-not-a-child-of-the-original-process

Then you can run things like D-Bus and Pipewire and still be able to log out of your TTY

Running a process like this is not secure, and there are a million steps you are supposed to take to make it secure, but this works for a minimal learning environment  
https://man7.org/linux/man-pages/man7/daemon.7.html

