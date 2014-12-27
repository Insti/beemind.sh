beemind.sh
==========

Simple shell script for submitting auto data to [Beeminder](https://www.beeminder.com/).

Usage
-----

Download the [shell script](https://raw.githubusercontent.com/Insti/beemind.sh/master/beemind.sh).

1. Make sure it is executable. (chmod +x beemind.sh)
2. Add your AUTH_TOKEN.
3. Add your GOAL slug.
4. Add a shell command which returns a VALUE.
5. Add it to your job scheduler. (e.g. cron)

Enjoy simple, local, self contained autodata submission.
