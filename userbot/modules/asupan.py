# 🍀 © @tofik_dn
# ⚠️ Do not remove credits

import requests

from userbot import CMD_HANDLER as cmd
from userbot import CMD_HELP
from userbot.utils import ice_cmd
import random
from userbot import owner
from telethon.tl.types import InputMessagesFilterVideo

@ice_cmd(pattern="asupan$")
async def _(event):
    try:
        response = bot.iter_messages(
            "@tedeasupancache", filter=InputMessagesFilterVideo
        )
        aing = await event.client.get_me()
        await event.client.send_file(event.chat_id, 
        caption=f"Nih kak asupannya [{owner}](tg://user?id={aing.id})",
        file=random.choice(response))
        await event.delete()
    except Exception:
        await event.edit("**Tidak bisa menemukan video asupan.**")


@ice_cmd(pattern="wibu$")
async def _(event):
    try:
        response = requests.get("https://api-tede.herokuapp.com/api/asupan/wibu").json()
        await event.client.send_file(event.chat_id, response["url"])
        await event.delete()
    except Exception:
        await event.edit("**Tidak bisa menemukan video wibu.**")


@ice_cmd(pattern="chika$")
async def _(event):
    try:
        response = requests.get("https://api-tede.herokuapp.com/api/chika").json()
        await event.client.send_file(event.chat_id, response["url"])
        await event.delete()
    except Exception:
        await event.edit("**Tidak bisa menemukan video chikakiku.**")


CMD_HELP.update(
    {
        "asupan": f"**Plugin : **`asupan`\
        \n\n  •  **Syntax :** `{cmd}asupan`\
        \n  •  **Function : **Untuk Mengirim video asupan secara random.\
        \n\n  •  **Syntax :** `{cmd}wibu`\
        \n  •  **Function : **Untuk Mengirim video wibu secara random.\
        \n\n  •  **Syntax :** `{cmd}chika`\
        \n  •  **Function : **Untuk Mengirim video chikakiku secara random.\
    "
    }
)
