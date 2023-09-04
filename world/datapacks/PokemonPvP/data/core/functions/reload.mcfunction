tellraw @a [{"text":"リロード","color":"gold"},{"text":"されたらしいぞ","color":"gray"}]
#ポケモンのステータスのスコアボードを作成
scoreboard objectives add Level dummy
scoreboard objectives add Attack dummy
scoreboard objectives add Defence dummy
scoreboard objectives add SpAttack dummy
scoreboard objectives add SpDefence dummy
scoreboard objectives add Speed dummy
scoreboard objectives add HP dummy
scoreboard objectives add IvAttack dummy
scoreboard objectives add IvDefence dummy
scoreboard objectives add IvSpAttack dummy
scoreboard objectives add IvSpDefence dummy
scoreboard objectives add IvSpeed dummy
scoreboard objectives add IvHP dummy
scoreboard objectives add RvAttack dummy
scoreboard objectives add RvDefence dummy
scoreboard objectives add RvSpAttack dummy
scoreboard objectives add RvSpDefence dummy
scoreboard objectives add RvSpeed dummy
scoreboard objectives add RvHP dummy
scoreboard objectives add EvAttack dummy
scoreboard objectives add EvDefence dummy
scoreboard objectives add EvSpAttack dummy
scoreboard objectives add EvSpDefence dummy
scoreboard objectives add EvSpeed dummy
scoreboard objectives add EvHP dummy
scoreboard objectives add CvAttack dummy
scoreboard objectives add CvDefence dummy
scoreboard objectives add CvSpAttack dummy
scoreboard objectives add CvSpDefence dummy
scoreboard objectives add CvSpeed dummy
scoreboard objectives add CvHP dummy
scoreboard objectives add Pokemon dummy
scoreboard objectives add PlayerID dummy
scoreboard objectives add totalev dummy
scoreboard objectives add nowHP dummy "HP"
#クールタイムのスコアボードを作成
scoreboard objectives add coolTime dummy
#一時的なスコアボードを作成
scoreboard objectives add tmp0 dummy
scoreboard objectives add tmp1 dummy
scoreboard objectives add tmp2 dummy
scoreboard objectives add test dummy
scoreboard objectives add SpeedAttribute dummy
scoreboard objectives add Const dummy
scoreboard objectives add rng dummy
#検知系のスコアボードを作成
scoreboard objectives add swing minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add deathCounter deathCount
#ゲームの素早さの中心地(センター)を指定
scoreboard objectives add game dummy
scoreboard objectives add moveattackstatus dummy
scoreboard objectives add movelevelstatus dummy
scoreboard objectives add movepowerstatus dummy
#数のスコアボードを作成
scoreboard players set #2 Const 2
scoreboard players set #4 Const 4
scoreboard players set #5 Const 5
scoreboard players set #10 Const 10
scoreboard players set #26 rng 26
scoreboard players set #32 rng 32
scoreboard players set #50 Const 50
scoreboard players set #100 Const 100
#技関連のスコアボードを作成
scoreboard objectives add quick_attack_1 dummy
scoreboard objectives add quick_attack_2 dummy

team add NoCollision "重なり判定無視"
team modify NoCollision collisionRule never

#サイドバーの設定
scoreboard objectives setdisplay belowName nowHP
scoreboard objectives setdisplay list Level 
