""" Userbot module for other small commands. """
from userbot import CMD_HANDLER as cmd
from userbot import CMD_HELP, owner
from userbot.utils import edit_or_reply, man_cmd


@man_cmd(pattern="ihelp$")
async def usit(event):
    await edit_or_reply(
        event,
        f"**Hai {owner} Kalo Anda Tidak Tau Perintah Untuk Memerintah Ku Ketik** `.help` Atau Bisa Minta Bantuan Ke:\n"
        f"✣ **Group :** [ᗰᑌᔑᏆᏦ Ꮶᑌ ᔑᑌᑭᑭᝪᖇᎢ​](t.me/musikkugroup)\n"
        f"✣ **Channel :** [𝙋𝙧𝙤𝙟𝙚𝙘𝙩 𝙅𝙖𝙬𝙖](t.me/musikkuchannel)\n"
        f"✣ **Owner Repo :** [Kᴇɴ Kᴀɴ](t.me/escape_aja)\n"
        f"✣ **Repo :** [Iᴄᴇ-Usᴇʀʙᴏᴛ](https://github.com/jokokendi/Ice-Userbot)\n",
    )


@man_cmd(pattern="listvar$")
async def var(event):
    await edit_or_reply(
        event,
        "**Daftar Lengkap Vars Dari Ice-Userbot:** [KLIK DISINI](https://telegra.ph/List-Variabel-Heroku-untuk-Man-Userbot-09-22)",
    )


CMD_HELP.update(
    {
        "helper": f"**Plugin : **`helper`\
        \n\n  •  **Syntax :** `{cmd}ihelp`\
        \n  •  **Function : **Bantuan Untuk Ice-Userbot.\
        \n\n  •  **Syntax :** `{cmd}listvar`\
        \n  •  **Function : **Melihat Daftar Vars.\
        \n\n  •  **Syntax :** `{cmd}repo`\
        \n  •  **Function : **Melihat Repository Ice-Userbot.\
        \n\n  •  **Syntax :** `{cmd}string`\
        \n  •  **Function : **Link untuk mengambil String Ice-Userbot.\
    "
    }
)
