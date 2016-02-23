telegram-bot
============

[![https://yago.me/tg-bot](https://img.shields.io/badge/💬_Telegram-Bot_Dev._Group-blue.svg)](https://yago.me/tg-bot) [![https://telegram.me/Yago_Perez](https://img.shields.io/badge/💬_Telegram-Yago__Perez-blue.svg)](https://telegram.me/Yago_Perez) [![https://gitter.im/yagop/telegram-bot](https://img.shields.io/badge/💬_Gitter-Join_Chat-green.svg)](https://gitter.im/yagop/telegram-bot)
[![Donate button](https://img.shields.io/badge/Red_Cross-donate-yellow.svg)](https://www.icrc.org/ "Donate to Red Cross Society")

A Telegram Bot based on plugins using [tg](https://github.com/vysheng/tg).

MONITORING ELECTRONIC CHANNELS PERFORMANCE via TELEGRAM
----------
- When user sends command, bot replies to origin.

![http://i.imgur.com/Rp6whfh.png](http://i.imgur.com/Rp6whfh.png)

Bot Commands
------------
<table>
  <thead>
    <tr>
      <td><strong>Name</strong></td>
      <td><strong>Description</strong></td>
      <td><strong>Usage</strong></td>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>ace.lua</td>
      <td>Grab the status of ATMs per branch</td>
      <td>!notif atm [branch code]</td>
    </tr>
    <tr>
      <td>ace.lua</td>
      <td>Grab the status of CDMs per branch</td>
      <td>!notif cdm [branch code]</td>
    </tr>
    <tr>
      <td>ace.lua</td>
      <td>Grab list of branches reached the best 100% ATM availability</td>
      <td>!best atm</td>
    </tr>
    <tr>
      <td>ace.lua</td>
      <td>Grab list of branches reached the best 100% EDC Merchant availability</td>
      <td>!best merchant</td>
    </tr>
    <tr>
      <td>ace.lua</td>
      <td>Grab list of branches reached the best 100% EDC BRILINK availability</td>
      <td>!best brilink</td>
    </tr>
    <tr>
      <td>ace.lua</td>
      <td>Grab list of branches reached the best 100% EDC UKO availability</td>
      <td>!best uko</td>
    </tr>
    <tr>
      <td>ace.lua</td>
      <td>Grab list of branches reached the best 100% EDC UKO availability</td>
      <td>!best uko</td>
    </tr>
	
    <tr>
      <td>ace.lua</td>
      <td>Grab list of branches reached the worst ATM availability</td>
      <td>!worst atm</td>
    </tr>
    <tr>
      <td>ace.lua</td>
      <td>Grab list of branches reached the worst EDC Merchant availability</td>
      <td>!worst merchant</td>
    </tr>
    <tr>
      <td>ace.lua</td>
      <td>Grab list of branches reached the worst EDC BRILINK availability</td>
      <td>!worst brilink</td>
    </tr>
    <tr>
      <td>ace.lua</td>
      <td>Grab list of branches reached the worst EDC UKO availability</td>
      <td>!worst uko</td>
    </tr>
    <tr>
      <td>ace.lua</td>
      <td>Grab list of branches reached the worst availability under certain percentage value</td>
      <td>!status under [percentage]</td>
    </tr>
    <tr>
      <td>ace.lua</td>
      <td>Grab the status per ATMs</td>
      <td>!status atm [Terminal ID]</td>
    </tr>
    <tr>
      <td>ace.lua</td>
      <td>Grab the status per CDMs</td>
      <td>!status cdm [Terminal ID]</td>
    </tr>
	
    <tr>
      <td>ace.lua</td>
      <td>Grab list of ATMs with 'Cash Out' status per branch code</td>
      <td>!status co [branch code]<br>!co [branch code]</td>
    </tr>
    <tr>
      <td>ace.lua</td>
      <td>Grab list of ATMs with 'Cash Low' status per branch code</td>
      <td>!status cl [branch code]<br>!cl [branch code]</td>
    </tr>
	
    <tr>
      <td>ace.lua</td>
      <td>Grab list of ATMs with 'Dispenser Failure' status per branch code</td>
      <td>!status df [branch code]<br>!df [branch code]</td>
    </tr>
	
    <tr>
      <td>ace.lua</td>
      <td>Grab list of ATMs with 'Encrypted Pinpad' status per branch code</td>
      <td>!status epp [branch code]<br>!epp [branch code]</td>
    </tr>
    <tr>
      <td>ace.lua</td>
      <td>Grab list of ATMs with 'Out of Service' status per branch code</td>
      <td>!status epp [branch code]<br>!oos [branch code]</td>
    </tr>
	<tr>
      <td>ace.lua</td>
      <td>Grab list of ATMs with 'Offline' status per branch code</td>
      <td>!status epp [branch code]<br>!off [branch code]</td>
    </tr>
    <tr>
      <td>ace.lua</td>
      <td>Grab list of ATMs with 'No Operation' status per branch code</td>
      <td>!status nop [branch code]<br>!nop [branch code]</td>
    </tr>
	<tr>
      <td>ace.lua</td>
      <td>Grab list of ATMs with 'Operational Problems' status per branch code</td>
      <td>!status ops [branch code]<br>!ops [branch code]</td>
    </tr>
	<tr>
      <td>ace.lua</td>
      <td>Grab list of ATMs with 'Electricity' status per branch code</td>
      <td>!status listrik [branch code]<br>!listrik [branch code]</td>
    </tr>
	
	
  </tbody>
</table>

[Installation](https://github.com/yagop/telegram-bot/wiki/Installation)
------------
```bash
# Tested on Ubuntu 14.04, Mint 17.1, 17.2, 17.3 for other OSs check out https://github.com/yagop/telegram-bot/wiki/Installation
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev
```

```bash
# After those dependencies, lets install the bot
cd $HOME
git clone https://github.com/jansenicus/telegram-bot.git
cd telegram-bot
./launch.sh install
./launch.sh # Will ask you for a phone number & confirmation code.
```

Enable more [`plugins`](https://github.com/yagop/telegram-bot/tree/master/plugins)
-------------
See the plugins list with `!plugins` command.

Enable a disabled plugin by `!plugins enable [name]`.

Disable an enabled plugin by `!plugins disable [name]`.

Those commands require a privileged user, privileged users are defined inside `data/config.lua` (generated by the bot), stop the bot and edit if necessary.


Run it as a daemon
------------
If your Linux/Unix comes with [upstart](http://upstart.ubuntu.com/) you can run the bot by this way
```bash
$ sed -i "s/yourusername/$(whoami)/g" etc/telegram.conf
$ sed -i "s_telegrambotpath_$(pwd)_g" etc/telegram.conf
$ sudo cp etc/telegram.conf /etc/init/
$ sudo start telegram # To start it
$ sudo stop telegram # To stop it
```

Contact me
------------
You can contact me [via Telegram](https://telegram.me/jansensimanullang) but if you have an issue please [open](https://github.com/yagop/telegram-bot/issues) one.

[Join](https://telegram.me/joinchat/ALJ3izwBCNXSswCHOKMwGw) on the TelegramBot Discussion Group.

Acknowledgment
------------
Plugins for  monitoring electronic channels developed by Jansen Simanullang. The skeleton is shown here but the auxiliary python scripts for grabbing the status is not provided for public here.

This work is based on telegram-bot developed by yago perez and telegram-cli by vysheng.
