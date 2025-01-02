#!/usr/bin/python
import telebot
import sys
import os

API_TOKEN = os.environ.get("TOKEN")

bot = telebot.TeleBot(API_TOKEN)

chat_id = os.environ.get("CHAT_ID")

def main():
    if len(sys.argv) == 1:
        bot.send_message(chat_id,"error")
    elif (sys.argv[1] == "-test"):
        bot.send_message(chat_id,"test")
    else:
    #  len(sys.argv) > 1:
        SendMessage()
    # else:
    #     bot.send_message(chat_id,"error")

def SendMessage():
    if (sys.argv[1] == "-d"):
        status = "disconnected"
    if (sys.argv[1] == "-c"):
        status = "connected"

    message = """\
{5} {7} {6} {8} {9}
[OCServ info]
User {0} {1}
User IP: {2}
Server IP: {3}
User local IP: {4}""".format(sys.argv[2], status, sys.argv[5], sys.argv[3], sys.argv[4], sys.argv[6], sys.argv[7], sys.argv[8], sys.argv[9], sys.argv[10])
    
    bot.send_message(chat_id, message)


if __name__ == "__main__":
    main()