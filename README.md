# chat.dataverse.org 

http://chat.dataverse.org is a public place for current and potential Dataverse users and developers to chat and is logged at http://irclog.iq.harvard.edu/dataverse/toda
y

This chat room is an IRC channel called "#dataverse" on the freenode IRC network, which means that any IRC client can be used to connect. http://chat.dataverse.org is simply a web interface that makes connecting to IRC easiser.

This git repo contains code and documentation related to this chat room.

## Customizations for chat.dataverse.org 

http://chat.dataverse.org is an instance of [Shout][] 0.51.1 with a couple tweaks to make it more orange and easier to join.

[Shout]: https://github.com/erming/shout

## Setup for irclog.iq.harvard.edu

http://irclog.iq.harvard.edu is running ilbot and setup instructions are currently at https://github.com/dvn/iqirclog-vagrant but should be moved here.

## Metrics

We're interested in questions such as:

- In the last year, how many unique users have there been?
- In the last year, how many messages have been written?

To answer these and other questions, we invite the community to help use crunch the numbers by downloading the data in either tabular or MySQL format:

- http://dvn-vm1.hmdc.harvard.edu/data/mysql/irclog/irclog.tsv
- The latest backup (all are complete) from http://dvn-vm1.hmdc.harvard.edu/data/mysql/
