#ファイル編集用のモジュールのインポート
import os

#フォルダ名の設置
movename = input("技名を入力してください\n※英語で入力してください。\n")

#その他の値の設置
movedistance = input("技は何マス先に出ますか？数字を入力してください\n")
movesound = input("技の音は何にしますか？名前空間を入力してください\n")
moveparticle = input("技のパーティクルは何にしますか？名前空間を入力してください\n")
moveparticlepoint = input("技のパーティクルの場所は何にしますか？数字を入力してください\n例 \"~ ~ ~\" ")
moveparticlerange = input("技のパーティクルの範囲は何にしますか？数字を入力してください\n例 \"3 3 3\" ")
moveparticlecount = input("技のパーティクルの数は何にしますか？数字を入力してください\n")
movesptype = input("技のは特攻にしますか？攻撃にしますか？SpAttack or Attack で入力してください\n")
movepower = input("技の威力は何にしますか？数字を入力してください\n")
movecooltime = input("技のクールタイムは何にしますか？数字を入力してください\n")

#フォルダの作成
os.mkdir(movename)

#moveファイルの作成
move = open(movename + "/move.mcfunction", "w")

#moveファイルの書き込み
move.write("execute at @s[scores={swing=1..,coolTime=0}] run summon minecraft:armor_stand ^ ^ ^" + movedistance + " {Tags:[\"" + movename + "armor\"]}\nexecute at @s[scores={swing=1..,coolTime=0}] run playsound " + movesound + " master @s[scores={swing=1..,coolTime=0}] ~ ~1 ~ 1 1\nexecute as @e[tag=" + movename + "] at @e[tag=" + movename + "armor] run particle " + moveparticle + " " + moveparticlepoint + " " + moveparticlerange + " 1 " + moveparticlecount + "\nscoreboard players operation @e[tag=" + movename + "armor] moveattackstatus = @s[scores={swing=1..,coolTime=0}] " + movesptype + "\nscoreboard players operation @e[tag=" + movename + "armor] movelevelstatus = @s[scores={swing=1..,coolTime=0}] Level\nscoreboard players set @e[tag=flamethrowerarmor] movepowerstatus " + movepower + "\ntag @s[scores={swing=1..,coolTime=0}] add punch\nexecute as @s[scores={swing=1..,coolTime=0}] run scoreboard players set @s coolTime " + movecooltime + "\nexecute as @s[scores={swing=1..}] run scoreboard players set @s swing 0\n")

#damagecountファイルの作成
damagecount = open(movename + "/damagecount.mcfunction", "w")

#damagecountファイルの書き込み
damagecountright = "\
    scoreboard players operation @s tmp1 = #2 Const\
    scoreboard players operation @s tmp1 *= @e[tag=" + move + "] movelevelstatus\
    scoreboard players operation @s tmp1 /= #5 Const\
    scoreboard players operation @s tmp1 += #2 Const\
    scoreboard players operation @s tmp1 *= @e[tag=flamethrowerarmor] movepowerstatus\
    scoreboard players operation @s tmp1 *= @e[tag=flamethrowerarmor] moveattackstatus \
    scoreboard players operation @s tmp1 /= @s SpDefence\
    scoreboard players operation @s tmp1 /= #50 Const\
    scoreboard players operation @s tmp1 += #2 Const\scoreboard players operation @s nowHP -= @s tmp1\
    execute if score @s nowHP matches ..0 run tag @a[tag=punch,limit=1,sort=nearest] add killed\
    tag @a[tag=punch] remove punch"


#damagecheckファイルの作成
damagecheck = open(movename + "/damagecheck.mcfunction", "w")
