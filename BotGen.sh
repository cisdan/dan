#!/bin/bash
# -*- ENCODING: UTF-8 -*-

meu_ip_fun () {
MIP=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
MIP2=$(wget -qO- ipv4.icanhazip.com)
[[ "$MIP" != "$MIP2" ]] && IP="$MIP2" || IP="$MIP"
}


#check_ip
#function_verify
  [[ -e /etc/newadm-instal ]] && BASICINST="$(cat /etc/newadm-instal)" || BASICINST="ID.txt slowdns.sh ADMbot.sh C-SSR.sh Crear-Demo.sh PDirect.py PGet.py POpen.py PPriv.py PPub.py apacheon.sh blockBT.sh budp.sh dns-netflix.sh dropbear.sh fai2ban.sh message.txt openvpn.sh paysnd.sh ports.sh sockspy.sh speed.py squid.sh squidpass.sh ssl.sh tcp.sh ultrahost v2ray.sh python.py"

SCPT_DIR="/etc/cat/script"
#
[[ ! -e ${SCPT_DIR} ]] && mkdir ${SCPT_DIR}

mkdir /etc/bot/creditos
DIR="/etc/http-shell"
LIST="lista-arq"
CIDdir=/etc/CAT-BOT && [[ ! -d ${CIDdir} ]] && mkdir ${CIDdir}
SRC="${CIDdir}/sources" && [[ ! -d ${SRC} ]] && mkdir ${SRC}
CID="${CIDdir}/User-ID" && [[ ! -e ${CID} ]] && echo > ${CID}
keytxt="${CIDdir}/keys" && [[ ! -d ${keytxt} ]] && mkdir ${keytxt}
[[ ! -d /etc/CAT-BOT/Creditos ]] && mkdir /etc/CAT-BOT/Creditos
USRdatabase2="/etc/CAT-BOT/Creditos"
[[ $(dpkg --get-selections|grep -w "jq"|head -1) ]] || apt-get install jq -y &>/dev/null
[[ ! -e "/bin/ShellBot.sh" ]] && wget -O /bin/ShellBot.sh https://www.dropbox.com/s/gfwlkfq4f2kplze/ShellBot.sh &> /dev/null
[[ -e /etc/texto-bot ]] && rm /etc/texto-bot
LINE="━━━━━━━━━━━━━━━━━━━━━━"

# Importando API 
source ShellBot.sh


# Token del bot
bot_token="$(cat ${CIDdir}/token)"

# Inicializando el bot
ShellBot.init --token "$bot_token" --monitor --flush --return map
ShellBot.username

reply () {
	[[ ! -z ${callback_query_message_chat_id[$id]} ]] && var=${callback_query_message_chat_id[$id]} || var=${message_chat_id[$id]}

		 	 ShellBot.sendMessage	--chat_id  $var \
									--text "$comando" \
									--parse_mode html \
									--reply_markup "$(ShellBot.ForceReply)"
	[[ "${callback_query_data}" = /del || "${message_text}" = /del ]] && listID_src
}



# verificacion primarias
gerar_key () {
meu_ip_fun
unset newresell
newresell="${USRdatabase2}/Mensaje_$chatuser.txt"
if [[ ! -e ${newresell} ]]; then
echo "@dexmod1" > ${SCPT_DIR}/message.txt 
else
echo "$(cat ${newresell})" > ${SCPT_DIR}/message.txt
fi

[[ ! $newresell ]] && credill="By $(cat ${USRdatabase2}/Mensaje_$chatuser.txt)" || credill="By $(cat ${SCPT_DIR}/message.txt)"

valuekey="$(date | md5sum | head -c10)"
valuekey+="$(echo $(($RANDOM*10))|head -c 5)"
fun_list "$valuekey"
keyfinal=$(ofus "$IP:8888/$valuekey/$LIST")
local bot_retorno="┅┅┅⋙💥❯❯ ❯❯❲ BOT GEN ❳❮❮ ❮❮💥⋘┅┅┅   \n"
bot_retorno+="🔑 KEY GENERADA V9X🔑 \n"
bot_retorno+="⏱️ Vence: En 3 Hrs o al Usarla\n"
bot_retorno+="\n"
bot_retorno+="$LINE\n"
bot_retorno+="RESELLER : $credill\n"
bot_retorno+="$LINE\n"
bot_retorno+="========▣INSTALADOR▣=========\n"
bot_retorno+="$LINE\n"
bot_retorno+="<code>apt update -y; apt upgrade -y; wget https://raw.githubusercontent.com/lacasitamx/INSTALADOR-X/master/LACASITA/LACASITA.sh; chmod 777 LACASITA.sh; ./LACASITA.sh</code>\n\n"
bot_retorno+="$LINE\n"
bot_retorno+="◈ COPIAR LA KEY ◈  \n"
bot_retorno+="$LINE\n"
bot_retorno+="<code>${keyfinal}</code>\n"
bot_retorno+="$LINE\n"
bot_retorno+="TOTAL DE KEY GENERADAS:  [  $(ls /etc/http-shell/ | grep name | wc -l) ]\n"
#bot_retorno+=" 👀 𝗞𝗘𝗬 𝗜𝗡𝗦𝗧𝗔𝗟𝗔𝗗𝗢𝗦: [$k_used]\n"
bot_retorno+="$LINE\n"
bot_retorno+="📀 𝙐𝙗𝙪𝙣𝙩𝙪: 𝟭𝟴, 𝟮𝟬.𝟬𝟰 𝙇𝙏𝙎 ¡𝙍𝙚𝙘𝙤𝙢𝙚𝙣𝙙𝙖𝙙𝙤\n"
bot_retorno+="$LINE\n"
#bot_retorno+="🚦 𝗔𝗱𝗾𝘂𝗶𝗲𝗿𝗲 𝗧𝘂 𝗮𝗰𝗰𝗲𝘀𝗼 𝗘𝗻 @LATMXDANBOT\n"
echo "$keyfinal" >> ${keytxt}/key_${chatuser}.txt
msj_fun

#upfile_fun ${keytxt}/key_${chatuser}.txt
#rm ${keytxt}/key_${chatuser}.txt
}


fun_list () {
rm ${SCPT_DIR}/*.x.c &> /dev/null
unset KEY
KEY="$1"
#CRIA DIR
[[ ! -e ${DIR} ]] && mkdir ${DIR}
#ENVIA ARQS
i=0
VALUE+="gerar.sh instgerador.sh http-server.py lista-arq $BASICINST"
for arqx in `ls ${SCPT_DIR}`; do
[[ $(echo $VALUE|grep -w "${arqx}") ]] && continue 
echo -e "[$i] -> ${arqx}"
arq_list[$i]="${arqx}"
let i++
done
#CRIA KEY
[[ ! -e ${DIR}/${KEY} ]] && mkdir ${DIR}/${KEY}
#PASSA ARQS
nombrevalue="${chatuser}"
#ADM BASIC
echo "$chatuser" >${SCPT_DIR}/ID.txt
arqslist="$BASICINST"
for arqx in `echo "${arqslist}"`; do
[[ -e ${DIR}/${KEY}/$arqx ]] && continue #ANULA ARQUIVO CASO EXISTA
cp ${SCPT_DIR}/$arqx ${DIR}/${KEY}/
echo "$arqx" >> ${DIR}/${KEY}/${LIST}
done
rm ${SCPT_DIR}/*.x.c &> /dev/null
echo "$nombrevalue" > ${DIR}/${KEY}.name
[[ ! -z $IPFIX ]] && echo "$IPFIX" > ${DIR}/${KEY}/keyfixa
at now +3 hours <<< "rm -rf ${DIR}/${KEY} && rm -rf ${DIR}/${KEY}.name"
}

ofus() {
      unset server
      server=$(echo ${txt_ofuscatw} | cut -d':' -f1)
      unset txtofus
      number=$(expr length $1)
      for ((i = 1; i < $number + 1; i++)); do
        txt[$i]=$(echo "$1" | cut -b $i)
        case ${txt[$i]} in
        ".")txt[$i]="C";;
        "C")txt[$i]=".";;
        "3")txt[$i]="@";;
        "@")txt[$i]="3";;
        "5")txt[$i]="9";;
        "9")txt[$i]="5";;
        "6")txt[$i]="D";;
        "D")txt[$i]="6";;
        "J")txt[$i]="Z";;
        "Z")txt[$i]="J";; 
        esac
        txtofus+="${txt[$i]}"
      done
      echo "$txtofus" | rev
    }

menu_print () {
[[ ! -z ${callback_query_message_chat_id[$id]} ]] && var=${callback_query_message_chat_id[$id]} || var=${message_chat_id[$id]}

	if [[ $(echo $permited|grep "${chatuser}") = "" ]]; then
				 #ShellBot.sendMessage 	--chat_id ${message_chat_id[$id]} \
				ShellBot.sendMessage 	--chat_id $var \
										--text "<i>$(echo -e $bot_retorno)</i>" \
										--parse_mode html \
										--reply_markup "$(ShellBot.InlineKeyboardMarkup -b 'botao_user')"
	else
				 #ShellBot.sendMessage 	--chat_id ${message_chat_id[$id]} \
				ShellBot.sendMessage 	--chat_id $var \
										--text "<i>$(echo -e $bot_retorno)</i>" \
										--parse_mode html \
										--reply_markup "$(ShellBot.InlineKeyboardMarkup -b 'botao_conf')"
	fi
}

menu_printSN () {
[[ ! -z ${callback_query_message_chat_id[$id]} ]] && var=${callback_query_message_chat_id[$id]} || var=${message_chat_id[$id]}

	if [[ $(echo $permited|grep "${chatuser}") = "" ]]; then
				ShellBot.sendMessage 	--chat_id $var \
				--text "<i>$(echo -e $bot_retorno)</i>" \
				--parse_mode html \
				--reply_markup "$(ShellBot.InlineKeyboardMarkup -b 'botao_send_id')"
	fi
}

download_file () {
# shellbot.sh editado linea 3986
user=User-ID
[[ -e ${CID} ]] && rm ${CID}
local file_id
          ShellBot.getFile --file_id ${message_document_file_id[$id]}
          ShellBot.downloadFile --file_path "${return[file_path]}" --dir "${CIDdir}"
local bot_retorno="ID user bot\n"
		bot_retorno+="$LINE\n"
		bot_retorno+="Se restauro con exito!!\n"
		bot_retorno+="$LINE\n"
		bot_retorno+="${return[file_path]}\n"
		bot_retorno+="$LINE"
			ShellBot.sendMessage	--chat_id "${message_chat_id[$id]}" \
									--reply_to_message_id "${message_message_id[$id]}" \
									--text "<i>$(echo -e "$bot_retorno")</i>" \
									--parse_mode html
return 0
}

msj_add () {
	      ShellBot.sendMessage --chat_id ${1} \
							--text "<i>$(echo -e "$bot_retor")</i>" \
							--parse_mode html
}

upfile_fun () {
	[[ ! -z ${callback_query_message_chat_id[$id]} ]] && var=${callback_query_message_chat_id[$id]} || var=${message_chat_id[$id]}
          ShellBot.sendDocument --chat_id $var  \
                             --document @${1}
}

invalido_fun () {
	[[ ! -z ${callback_query_message_chat_id[$id]} ]] && var=${callback_query_message_chat_id[$id]} || var=${message_chat_id[$id]}
local bot_retorno="━━━━━━━━━━━━━━━━━━━━\n"
         bot_retorno+="        LO SIENTO 😞 PUSISTE ALGO INCORRECTO \n"
         bot_retorno+="         TE AYUDO 👇\n"
         bot_retorno+="       Quizas debes usar este /keygen\n"
         bot_retorno+=" ━━━━━━━━━━━━━━━━━━━━\n"
	     ShellBot.sendMessage --chat_id $var \
							--text "<i>$(echo -e $bot_retorno)</i>" \
							--parse_mode html
	return 0	
}

msj_fun () {
	[[ ! -z ${callback_query_message_chat_id[$id]} ]] && var=${callback_query_message_chat_id[$id]} || var=${message_chat_id[$id]}
	      ShellBot.sendMessage --chat_id $var \
							--text "<i>$(echo -e "$bot_retorno")</i>" \
							--parse_mode html
	return 0
}

upfile_src () {
cp ${CID} $HOME/
upfile_fun $HOME/User-ID
rm $HOME/User-ID
}

start_gen () {
unset PIDGEN
PIDGEN=$(ps aux|grep -v grep|grep "http-server.sh")
if [[ ! $PIDGEN ]]; then
screen -dmS generador /bin/http-server.sh -start
local bot_retorno="$LINE\n"
          bot_retorno+="Generador: <u>EN LINEA</u> ✅\n"
	  bot_retorno+="$LINE\n"
msj_fun
else
killall http-server.sh
local bot_retorno="$LINE\n"
          bot_retorno+="Generador: <u>APAGADA</u> ❌\n"
	  bot_retorno+="$LINE\n"
msj_fun
fi
}

infosys_src () {

#HORA Y FECHA
unset _hora
unset _fecha
_hora=$(printf '%(%H:%M:%S)T') 
_fecha=$(printf '%(%D)T') 

#PROCESSADOR
unset _core
unset _usop
_core=$(printf '%-1s' "$(grep -c cpu[0-9] /proc/stat)")
_usop=$(printf '%-1s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")

#MEMORIA RAM
unset ram1
unset ram2
unset ram3
ram1=$(free -h | grep -i mem | awk {'print $2'})
ram2=$(free -h | grep -i mem | awk {'print $4'})
ram3=$(free -h | grep -i mem | awk {'print $3'})

unset _ram
unset _usor
_ram=$(printf ' %-9s' "$(free -h | grep -i mem | awk {'print $2'})")
_usor=$(printf '%-8s' "$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')")

unset os_sys
os_sys=$(echo $(cat -n /etc/issue |grep 1 |cut -d' ' -f6,7,8 |sed 's/1//' |sed 's/      //')) && echo $system|awk '{print $1, $2}'
meu_ip=$(wget -qO- ifconfig.me)
bot_retorno="$LINE\n"
          bot_retorno+="S.O: $os_sys\n"
	  bot_retorno+="Su IP es: $(meu_ip)\n"
	  bot_retorno+="$LINE\n"
	  bot_retorno+="Ram: $ram1 || En Uso: $_usor\n"
	  bot_retorno+="USADA: $ram3 || LIBRE: $ram2\n"
	  bot_retorno+="$LINE\n"
	  bot_retorno+="CPU: $_core || En Uso: $_usop\n"
	  bot_retorno+="$LINE\n"
	  bot_retorno+="FECHA: $_fecha\n"
	  bot_retorno+="HORA: $_hora\n"
          bot_retorno+="$LINE\n"
msj_fun
}


cache_src () {

#MEMORIA RAM
unset ram1
unset ram2
unset ram3
unset _usor
_usor=$(printf '%-8s' "$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')")
ram1=$(free -h | grep -i mem | awk {'print $2'})
ram2=$(free -h | grep -i mem | awk {'print $4'})
ram3=$(free -h | grep -i mem | awk {'print $3'})
	  bot_retorno="==========Antes==========\n"
	  bot_retorno+="Ram: $ram1 || EN Uso: $_usor\n"
	  bot_retorno+="USADA: $ram3 || LIBRE: $ram2\n"
	  bot_retorno+="=========================\n"
msj_fun

sleep 2

sudo sync
sudo sysctl -w vm.drop_caches=3 > /dev/null 2>&1

unset ram1
unset ram2
unset ram3
unset _usor
_usor=$(printf '%-8s' "$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')")
ram1=$(free -h | grep -i mem | awk {'print $2'})
ram2=$(free -h | grep -i mem | awk {'print $4'})
ram3=$(free -h | grep -i mem | awk {'print $3'})
	  bot_retorno="==========Ahora==========\n"
	  bot_retorno+="Ram: $ram1 || EN Uso: $_usor\n"
	  bot_retorno+="USADA: $ram3 || LIBRE: $ram2\n"
	  bot_retorno+="=========================\n"
msj_fun
}




myid_src () {
bot_retorno="====================\n"
          bot_retorno+="SU ID: <code>${chatuser}</code>\n"
          bot_retorno+="====================\n"
msj_fun
}

deleteID_src () {
          bot_retorno="/del"
      reply
      listID_src
}

deleteID_reply () {
ids=$(echo ${message_text[$id]} | awk '{print $1}' | sed -e 's/[^a-z0-9 -]//ig')
idc=$(echo ${message_text[$id]} | awk '{print $3}' | sed -e 's/[^a-z0-9 -]//ig')
sed -i "${message_text[$id]}/d" ${CID}
bot_retorno="$LINE\n"
          bot_retorno+=" ID ELIMINADO EXITOSAMENTE!\n"
          bot_retorno+=" ID Eliminado: ${ids}\n"
          bot_retorno+="$LINE\n"
			
          bot_retor="  HOLA DE NUEVO AL BOTGEN\n"
          #bot_retor+=" HOLA『 $message_from_first_name $message_from_last_name 』\n"
          bot_retor+="Desafortunadamente tu Membresia ha Finalizado\n"
          #bot_retor+=" BOT SIN ACCESO ⛔️ \n"
          bot_retor+="Fecha de Corte : $(date '+%C%y-%m-%d') - $(date +%R)  \n"
          bot_retor+="Si tienes Dudas, Contacta con @cisdan\n"
          bot_retor+="$LINE\n"
          bot_retor+="Recuerda adquirir creditos, o Realizar una Colaboracion\n $(cat < /etc/mpayu) \n"
          #bot_retor+="Para mantener tu acceso al BotGen Recuerda Mostrar tu Token de Donacion o Compra\n"
          bot_retor+="$LINE\n"
      msj_fun
      msj_add ${ids}
      upfile_src

}


addID_src () {
          bot_retorno="/add"
      reply
}

addID_reply () {
     ids=$(echo ${message_text[$id]} | awk '{print $1}' | sed -e 's/[^a-z0-9 -]//ig')
        idc=$(echo ${message_text[$id]} | awk '{print $3}' | sed -e 's/[^a-z0-9 -]//ig')
        valid=$(date '+%C%y-%m-%d' -d " +$idc days")
	  [[ $(cat ${CID}|grep "$ids" ) = "" ]] && {
		#[[ -e /root/RegBOT/banID ]] && sed -i "/${ids}/d" /root/RegBOT/banID
        echo "/${ids} | $valid" >> ${CID}
        echo "/${ids} | $(date '+%C%y-%m-%d') | $(date +%R)" >> ${CID}.reg
          bot_retorno=" TU ID FUE ACEPTADO EXITOSAMENTE \n"
          bot_retorno+=" 🆔 : ${ids} | ACEPTADO 🧾\n"
          bot_retorno+="$LINE\n"
          bot_retorno+=" FECHA DE REGISTRO : $(date '+%C%y-%m-%d')|$(date +%R) \n VALIDO HASTA : ${valid}|$(date +%R)\n"
          bot_retorno+="$LINE\n"
          bot_retorno+="  ✅ ID REGISTRADO EXITOSAMENTE ✅\n"
          bot_retorno+="$LINE\n"
          bot_retorno+="        ⚜ Power ⚜\n"
unset i
for i in $(cat /etc/CAT-BOT/User-ID | awk '{print $3}'); do 
[[ "$(date -d $(date '+%C%y-%m-%d') +%s)" -ge "$(date -d $i +%s)" ]] && {
for id in $(cat /etc/CAT-BOT/User-ID | grep "$i" | awk '{print $1}' | sed -e 's/[^a-z0-9 -]//ig'); do
sed -i "/${id}/d" /etc/CAT-BOT/User-ID
          bot_retor="   HOLA DE NUEVO AL BOT 🤖 \n"
          bot_retor+=" SU MEMBRESIA HA FINALIZADO \n"
          bot_retor+=" FIN DEL ACCESO : $(date '+%C%y-%m-%d') - $(date +%R) \n"
          bot_retor+=" SI DESEAS APELAR TU CONTRADO, CONTACTA CON $(cat < /etc/ADM-db/resell)\n"
          bot_retor+=" $LINE\n"
          bot_retor+=" ADQUIERE TU MEMBRESIA DESDE @$(ShellBot.username) , DIGITANDO /prices \n"
          bot_retor+=" RECUERDA MANTENER TU CAPTURA DE PAGO, PARA ALGUN RECLAMO!\n"
          bot_retor+=" $LINE\n"
msj_add ${id}
done
}
done
[[ -z ${callback_query_from_username} ]] && nUSER=${message_from_username} || nUSER=${callback_query_from_username}
[[ -z ${callback_query_from_first_name} ]] && firsnme="${message_from_first_name}" || firsnme="${callback_query_from_first_name}"
[[ -z ${callback_query_from_last_name} ]] && lastnme="${message_from_last_name}" || lastnme="${callback_query_from_last_name}"
		  bot_retor=" HOLA BIENVENIDO SU REGISTRO FUE APROBADO \n"
		  bot_retor+=" $LINE\n"
          bot_retor+=" EL ADM ${message_from_first_name[$id]} APROBO TU SOLICITUD\n"
          bot_retor+="GRACIAS POR USAR EL BOT VIP\n"
          bot_retor+="REGISTRADO EL : $(date '+%C%y-%m-%d')|$(date +%R) \nVALIDO HASTA EL : ${valid}|$(date +%R)\n"
                  bot_retor+="\n"
		  bot_retor+=" 🆔 : ${ids} |  ACEPTADO 🧾\n"
		  bot_retor+="Autorizado por: ${firsnme} ${lastnm} \n"
          bot_retor+=" $LINE\n"
          bot_retor+=" GENERAR Key's usar el comando /keygen\n"
          bot_retor+=" Para MENU Digita el comando /menu\n"
          #bot_retor+=" $LINE\n"
          bot_retor+=" ADQUIERE TU MEMBRESIA DESDE @$(ShellBot.username)  \n"
          #bot_retor+=" DIGITANDO O DANDO CLIK 👉 /prices\n"
          bot_retor+=" $LINE\n"
      msj_fun
      msj_add ${ids}
      upfile_src
    } || {
          bot_retorno="====ERROR====\n"
          bot_retorno+="Este ID ya existe\n"
          bot_retorno+="$LINE\n"
      msj_fun
    }
}

link_src () {
	bot_retorno="$LINE\n"
	bot_retorno+="SCRIPT LATMX x.9\n"
	bot_retorno+="$LINE\n"
	bot_retorno+="<code>wget https://raw.githubusercontent.com/mo.sh; chmod 777 didi.sh; ./sh</code>\n"
	bot_retorno+="$LINE\n"

msj_fun
}

listID_src () {
lsid=$(cat -n ${CID})
local bot_retorno="$LINE\n"
          bot_retorno+="Recuerda para eliminar ejem /id \n"
          bot_retorno+="Listado de ID ACTIVOS\n"
          bot_retorno+="$LINE\n"
          bot_retorno+="${lsid}\n"
          bot_retorno+="$LINE\n"
msj_fun
}

ayuda_id(){
bot_retorno="$LINE\n"
bot_retorno+="ɪɴғᴏʀᴍᴀᴄɪᴏɴ sᴏʙʀᴇ ʟᴏs ᴘʀᴇᴄɪᴏs \n"
bot_retorno+="► PRECIO PAYPAL  ► PRECIO MEXICANO\n"
bot_retorno+="► 7 DIAS💰1.5 USD     ► 💰30 MXN\n"
bot_retorno+="► 13 DIAS💰2.3 USD   ► 💰40.06 MXN\n"
bot_retorno+="► 35 DIAS💰3.98 USD ► 💰79 MXN\n"
bot_retorno+="► 90 DIAS💰7 USD       ► 💰160 MXN\n"
bot_retorno+="TRANSFERENCIA\n"
bot_retorno+="<code>646180192100197089</code>\n"

			 bot_retorno+="$LINE\n"
			msj_fun
			}

prices_on () {
[[ -z ${callback_query_from_first_name} ]] && firsnme="${message_from_first_name}" || firsnme="${callback_query_from_first_name}"
[[ -z ${callback_query_from_last_name} ]] && lastnme="${message_from_last_name}" || lastnme="${callback_query_from_last_name}"
local msg
                  msg=' •••••••••••••••••••••••••••••••••••••••••••••••••\n'
		  msg+=" Hola, 『 ${firsnme} ${lastnme} 』 \n"
		  msg+=' •••••••••••••••••••••••••••••••••••••••••••••••••\n' 
                  msg+=' $0.70 USD - Acceso ilimitado al BOT 4 dias \n'   
		  msg+=' $1.00 USD - Acceso ilimitado al BOT 7 dias \n'   
                  msg+=' $1.50 USD - Acceso ilimitado al BOT 15 dias \n'   
                  msg+=' $2.00 USD - Acceso ilimitado al BOT 30 dias \n'   
		  msg+=' $3.00 USD - Acceso ilimitado al BOT 60 dias\n' 
		  msg+=' $4.00 USD - Acceso ilimitado al BOT 90 dias\n' 
		  msg+=' $5.00 USD - Acceso ilimitado al BOT 180 dias\n' 
		  msg+=' $9.00 USD - Acceso ilimitado al BOT 365 dias\n' 
		  msg+='•••••••••••••••••••••••••••••••••••••••••••••••••\n' 
		  msg+=" BOT PREMIUM CON ACCESO Ilimitado \n Incluyendo tu reseller en la Key! \n Soporte, Actualizaciones y MAS!!)\n"
		  msg+='•••••••••••••••••••••••••••••••••••••••••••••••••\n'  
		  msg+=" VISITA NUESTRO CATALOGO EN https://shoppy.gg/ \n"
		  msg+='•••••••••••••••••••••••••••••••••••••••••••••••••\n' 
          
          ShellBot.sendMessage	--chat_id "${message_chat_id[$id]}" \
							--reply_to_message_id "${message_message_id[$id]}" \
							--text "<i>$(echo -e $msg)</i>" \
							--parse_mode html
return 0
}

menu_src () {
bot_retorno="━━━━◢ 𝗠𝗘𝗡𝗨 𝗣𝗥𝗜𝗡𝗖𝗜𝗣𝗔𝗟 ◣━━━━\n"
	 if [[ $(echo $permited|grep "${chatuser}") = "" ]]; then
		 if [[ $(cat ${CID}|grep "${chatuser}") = "" ]]; then
                         bot_retorno+="\n"
			 bot_retorno+="•✱ ─━─𝗕𝗜𝗘𝗡𝗩𝗘𝗡𝗜𝗗𝗢 𝗔𝗟 𝗕𝗢𝗧 ━─━ ✱• \n"
                         bot_retorno+="\n"
                         bot_retorno+="Hola 👨‍💻 [ ${message_from_first_name[$id]} ] \n"
                         bot_retorno+="\n"
			 bot_retorno+="┇ 𝗛𝗢𝗥𝗔: $(printf '%(%D⏰%H:%M:%S)T')\n"
			#bot_retorno+=" NOMBRE :${message_from_first_name[$id]}\n"
			bot_retorno+="┇ 𝗦𝗨 🆔  [ ${chatuser} ] SIN ACCESO\n"
			bot_retorno+="┇ 𝗨𝗦𝗨𝗔𝗥𝗜𝗢 :@${message_from_username[$id]} \n"
			bot_retorno+="┇➜ AUN NO ESTAS AUTORIZADO 🚫\n"
			#bot_retorno+="️┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅\n"
			#bot_retorno+="┅┅┅┅┅┅\n"
			 #bot_retorno+="➜/ID (muestra su ID)\n"
			 #bot_retorno+="➜/acceso (Pedir Autorizacion)\n"
			#bot_retorno+="➜/ayuda (modo de uso)\n"
			 #bot_retorno+="️┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅\n"
                         menu_printSN
			 
		 else
		#creditos agregados
		unset creditos
		creditos="$(cat /etc/CAT-BOT/Creditos/Mensaje_$chatuser.txt)"
		  [[ ! $creditos ]] && credi="OFF" || credi="$creditos"
		#menú
                 data_user=$(cat ${CID}|grep "${chatuser}" | awk -F "|" '{print $2}')
			data_sec=$(date +%s)
			data_user_sec=$(date +%s --date="$data_user")
			variavel_soma=$(($data_user_sec - $data_sec))
			dias_use=$(($variavel_soma / 86400))
			[[ "$dias_use" -le 0 ]] && dias_use=0 || dias_use=$(($dias_use + 1))
                        unset usadas
		 usadas="$(cat /etc/http-instas)"
		 [[ ! $usadas ]] && k_used="0" || k_used="$usadas"
			#bot_retorno+="$LINE\n"
                         bot_retorno+="\n"
			 bot_retorno+="•✱ ─━─𝗕𝗜𝗘𝗡𝗩𝗘𝗡𝗜𝗗𝗢 𝗔𝗟 𝗕𝗢𝗧 ━─━ ✱• \n"
                         bot_retorno+="\n"
                         bot_retorno+="\n"
                         bot_retorno+="Hola 👨‍💻 [ ${message_from_first_name[$id]} ] \n"
                         bot_retorno+="\n"
                         bot_retorno+="𝗨𝗦𝗧𝗘𝗗 𝗧𝗜𝗘𝗡𝗘 𝗔𝗖𝗖𝗘𝗦𝗢 𝗣𝗢𝗥 \n"
                         bot_retorno+=" 🕑 $dias_use dias\n"
			 bot_retorno+="𝗧𝗨 𝗔𝗖𝗖𝗘𝗦𝗢 𝗩𝗘𝗡𝗖𝗘 𝗘𝗟 𝗗𝗜𝗔 \n"
                         bot_retorno+=" $data_user | $(date +%R) \n"
		    #bot_retorno+="HORA Y FECHA 📆 $(printf '%(%D⏰%H:%M:%S)T')\n"
		#bot_retorno+="NOMBRE TELEGRAM: ${message_from_first_name[$id]}\n"
		bot_retorno+="𝗦𝗨 𝗜𝗗 𝗘𝗦: <code>${chatuser}</code>\n"
		bot_retorno+="𝗨𝗦𝗨𝗔𝗥𝗜𝗢: @${message_from_username[$id]} \n"
		#bot_retorno+="USER: @${message_from_username[$id]}\n"
		bot_retorno+="𝗥𝗘𝗦𝗘𝗟𝗟𝗘𝗥: $credi\n"
		bot_retorno+="𝗧𝗢𝗧𝗔𝗟 𝗗𝗘 𝗞𝗘𝗬 𝗨𝗦𝗔𝗗𝗔𝗦: [$k_used] \n"
		#bot_retorno+="/resell (add nuevo reseller)\n"
	    #bot_retorno+="/instalador (link de instalacion)\n"
		#bot_retorno+="/gerar (Generar una key)\n"
		#bot_retorno+="️┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅\n"
		#bot_retorno+="┅┅┅┅┅┅\n"
			 menu_print
		 fi
		 
	 else
		 unset PID_GEN
		 PID_GEN=$(ps x|grep -v grep|grep "http-server.sh")
		 [[ ! $PID_GEN ]] && PID_GEN='(APAGADA) ❌' || PID_GEN='(EN LINEA) ✅'
		 unset creditos
		 creditos="$(cat /etc/CAT-BOT/Creditos/Mensaje_$chatuser.txt)"
		  [[ ! $creditos ]] && credi="OFF" || credi="$creditos"
		 unset usadas
		 usadas="$(cat /etc/http-instas)"
		 [[ ! $usadas ]] && k_used="0" || k_used="$usadas"
		 bot_retorno+=" HOLA BIENVENIDO AL BOTGEN\n"
		bot_retorno+="Panel de control | SCRIPT VPS\n"
		 bot_retorno+="ESTADO DEL BOT  $PID_GEN \n"
                bot_retorno+="Keys Usadas [$k_used] \n"
		bot_retorno+="RESELLER: $credi\n"
		 #bot_retorno+="$LINE\n"
		 bot_retorno+="ADMIN: @${message_from_username[$id]}\n"
		 bot_retorno+="$LINE\n"
		 menu_print
	 fi	
}

mensajecre(){
  error_fun () {
local bot_retorno="$LINE\n"
		  bot_retorno+="USAR EL COMANDO DE ESTA MANERA\n"
		  bot_retorno+="$LINE\n"
          bot_retorno+="Ejemplo: /resell  @d\n"
          bot_retorno+="$LINE\n"
	      ShellBot.sendMessage --chat_id ${message_chat_id[$id]} \
							--text "<i>$(echo -e "$bot_retorno")</i>" \
							--parse_mode html
return 0
}

[[ -z $1 ]] && error_fun && return 0

echo "$1" > ${USRdatabase2}/Mensaje_$chatuser.txt
          bot_retorno="$LINE\n"
          bot_retorno+="✅Creditos Cambiado ✅\n"
          bot_retorno+="$LINE\n"
          bot_retorno+="Nuevo Reseller: $1\nPARA REGRESAR /menu\n"
          bot_retorno+="$LINE"
      
          [[ ! -z ${callback_query_message_chat_id[$id]} ]] && var=${callback_query_message_chat_id[$id]} || var=${message_chat_id[$id]}
	     ShellBot.sendMessage --chat_id $var \
							--text "<i>$(echo -e "$bot_retorno")</i>" \
							--parse_mode html
							
	return 0
                    }
                    
 autori() {
MSG_id=$((${message_message_id} + 1 ))
[[ -z ${callback_query_from_first_name} ]] && firsnme="${message_from_first_name}" || firsnme="${callback_query_from_first_name}"
[[ -z ${callback_query_from_last_name} ]] && lastnme="${message_from_last_name}" || lastnme="${callback_query_from_last_name}"
[[ -z ${callback_query_from_username} ]] && nUSER=${message_from_username} || nUSER=${callback_query_from_username}
[[ -e /root/RegBOT/U_check.txt ]] && n_soli=$(cat /root/RegBOT/U_check.txt | grep ${chatuser} | wc -l) || n_soli=1
[[ $n_soli < 2 ]] && {
echo "${chatuser}" >> /root/RegBOT/U_check.txt
          bot_retor="$LINE\n"
          bot_retor+=" Cliente 『 ${firsnme} ${lastnme} 』Solicita Autorización\n"
		  [[ -z ${nUSER} ]] && bot_retor+=" ⚠️ USUARIO SIN ALIAS ⚠️\n" || bot_retor+=" <u> ALIAS</u>: @${nUSER} CON $n_soli INTENTO\n"
		  bot_retor+="$LINE\n"
		  bot_retor+=" EJEMPLO $MSG_id <tg-spoiler>${chatuser}</tg-spoiler> | <u>DIAS</u> \n"
          bot_retor+=" O SOLO DA CLICK AQUI 👉 /add , LUEGO COPIA ALGUNO DE ABJO\n"
          bot_retor+=" 4 DIAS COPIA 👉 <code>${chatuser} | 4</code> \n"
          bot_retor+=" 7 DIAS COPIA 👉 <code>${chatuser} | 7</code> \n"
          bot_retor+=" 15 DIAS COPIA 👉 <code>${chatuser} | 15</code> \n"
          bot_retor+=" 30 DIAS COPIA👉 <code>${chatuser} | 30</code> \n"
          bot_retor+=" 60 DIAS COPIA 👉 <code>${chatuser} | 60</code> \n"
          bot_retor+=" 90 DIAS COPIA👉 <code>${chatuser} | 90</code> \n"
          bot_retor+=" 180 DIAS COPIA👉 <code>${chatuser} | 179</code> \n"
          bot_retor+=" 1 AÑO COPIA 👉 <code>${chatuser} | 364</code> \n"
		  #bot_retor+=" CUSTOM COPY 👉 ♨️ <code>${chatuser} | dias</code> ♨️\n"
          bot_retor+="$LINE\n"
          bot_retor+=" ANTES DE LA AUTORIZACION VERIFICAR PAGO\n"
          bot_retor+="$LINE\n"
		  msj_add "$(cat < ${CIDdir}/Admin-ID)"
    	bot_retorno="$LINE\n"
        bot_retorno+=" 🆔 【 <code>${chatuser}</code> 】\n"
        bot_retorno+="$LINE\n"
        [[ -z ${nUSER} ]] && bot_retorno+=" ⚠️ AÑADA UN ALIAS PARA PODER SOLICITAR ⚠️\n" || bot_retorno+=" SOLICITUD DE ID EN PROCESO $(cat < /etc/ADM-db/resell)\n"
        [[ -z ${nUSER} ]] && bot_retorno+="   IMPOSIBLE VERIFICAR ID SIN ALIAS\n  SU ${n_soli} SOLITUD ES INVALIDA \n" || bot_retorno+=" ESTA ES SU ${n_soli} SOLICITUD MEDIANTE ID DE REGISTRO\n"
        bot_retorno+="$LINE\n"
        [[ -z ${nUSER} ]] && bot_retorno+=" SU ID FUE ENVIADO CON ADVERTENCIA (POSIBLE BANEO DE ID) ⚠️\n" || bot_retorno+="      ✅ ID ENVIADO EXITOSAMENTE ✅\n"
        bot_retorno+="$LINE\n"
		bot_retorno+=" ENVIE SU COMPROBANTE DE PAGO\n"
		bot_retorno+="$LINE\n"
		msj_fun
			} || {
				bot_retorno="$LINE\n"
				bot_retorno+=" 🆔 【 <code>${chatuser}</code> 】 \n"
				bot_retorno+="$LINE\n"
				[[ -z ${nUSER} ]] && bot_retorno+=" ⚠️ USUARIO SIN ALIAS ⚠️\n" || bot_retorno+=" <u> ALIAS</u>: @${nUSER} CON ID : <code>${chatuser}</code>\n"
				[[ -z ${nUSER} ]] && bot_retorno+=" ⚠️ AÑADA UN ALIAS PARA PODER SOLICITAR DE MANERA EXITOSA ⚠️\n" || bot_retorno+=" ESTÁ ES SU ${n_soli} SOLICITUD $(cat < /etc/ADM-db/resell)\n"
				[[ -z ${nUSER} ]] && bot_retorno+="   IMPOSIBLE VERIFICAR ID SIN ALIAS\n  🚦 SU ${n_soli} SOLITUD INVALIDA \n" || bot_retorno+=" SU PETICION FUE RECHAZADA POR EXCESO DE PETICIONES\n"
				bot_retorno+="     🚫🚫️ SU ID FUE BANEADO 🚫🚫 \n"
				bot_retorno+="$LINE\n"
				echo "${chatuser}" >> /root/RegBOT/banID
		bot_retorno+="        ⚜ Power botgen ⚜\n"
		bot_retorno+="$LINE\n"
		msj_fun
	}
}
mensaje(){
      [[ $(cat ${SCPT_DIR}|grep "${message_text[$id]}") = "" ]]
echo "${message_text[$id]}" > ${USRdatabase2}/Mensaje_$chatuser.txt
         local bot_retorno="$LINE\n"
          bot_retorno+="✅RESELLER AGREGADO CON EXITO ✅\n"
          bot_retorno+="$LINE\n"
          bot_retorno+="Nuevo Reseller: ${message_text[$id]}\nVolver: /menu\n"
          bot_retorno+="$LINE"
          [[ ! -z ${callback_query_message_chat_id[$id]} ]] && var=${callback_query_message_chat_id[$id]} || var=${message_chat_id[$id]}
	     ShellBot.sendMessage --chat_id $var \
							--text "<i>$(echo -e "$bot_retorno")</i>" \
							--parse_mode html
							#  --reply_markup ${message_reply_to_message_text[$id]
	return 0
          }
newres(){
	[[ ! -z ${callback_query_message_chat_id[$id]} ]] && var=${callback_query_message_chat_id[$id]} || var=${message_chat_id[$id]}
		 ShellBot.sendMessage --chat_id $var \
            --text "☟INGRESE SU RESELLER ABAJO☟" \
            --reply_markup "$(ShellBot.ForceReply)"
                    
}

rm_resell(){
rm ${USRdatabase2}/Mensaje_$chatuser.txt
[[ -z ${USRdatabase2}/Mensaje_$chatuser.txt ]] && rs="$(cat ${USRdatabase2}/Mensaje_$chatuser.txt)" || rs="Sin-Reseller"
bot_retorno="$LINE\n"
bot_retorno+="reseller eliminada\n"
bot_retorno+="verificador de reseller: ${rs}\n"
bot_retorno+="$LINE\n"
[[ ! -z ${callback_query_message_chat_id[$id]} ]] && var=${callback_query_message_chat_id[$id]} || var=${message_chat_id[$id]}
	      ShellBot.sendMessage --chat_id $var \
							--text "<i>$(echo -e "$bot_retorno")</i>" \
							--parse_mode html
	return 0
}
                    
botao_conf=''
botao_user=''
botao_donar=''
unset botao_send_id
botao_send_id=''
ShellBot.InlineKeyboardButton --button 'botao_send_id' --line 1 --text "MI ID" --callback_data '/ID'
ShellBot.InlineKeyboardButton --button 'botao_send_id' --line 2 --text 'SOLICITAR' --callback_data '/acceso'
ShellBot.InlineKeyboardButton --button 'botao_send_id' --line 3 --text "PRECIOS" --callback_data '/ayuda'
ShellBot.InlineKeyboardButton --button 'botao_send_id' --line 4 --text "MENU" --callback_data '/menu'
ShellBot.InlineKeyboardButton --button 'botao_send_id' --line 4 --text "ADMIN" --callback_data '1' --url 'https://t.me/dexmod1'

ShellBot.InlineKeyboardButton --button 'botao_conf' --line 1 --text '👤 AGREGAR ID' --callback_data '/add'
ShellBot.InlineKeyboardButton --button 'botao_conf' --line 1 --text '🚮 ELIMINAR' --callback_data '/del'
ShellBot.InlineKeyboardButton --button 'botao_conf' --line 1 --text '👥 LISTA USER' --callback_data '/list'
ShellBot.InlineKeyboardButton --button 'botao_conf' --line 1 --text '🆔 ID' --callback_data '/ID'

ShellBot.InlineKeyboardButton --button 'botao_conf' --line 2 --text '❌ POWER ✅' --callback_data '/power'
ShellBot.InlineKeyboardButton --button 'botao_conf' --line 2 --text '🛠️ MENU' --callback_data '/menu'

ShellBot.InlineKeyboardButton --button 'botao_conf' --line 3 --text '🔑 KEYGEN' --callback_data '/keygen'
ShellBot.InlineKeyboardButton --button 'botao_conf' --line 4 --text '🔰AGREGAR RESELLER🔰' --callback_data '/reseller'
ShellBot.InlineKeyboardButton --button 'botao_conf' --line 4 --text '🗑QUITAR RESELLER🗑' --callback_data '/delresell'

#boton para usuarios
ShellBot.InlineKeyboardButton --button 'botao_user' --line 1 --text '🔑 KEYGEN' --callback_data '/keygen'
ShellBot.InlineKeyboardButton --button 'botao_user' --line 1 --text '🆔' --callback_data '/ID'
ShellBot.InlineKeyboardButton --button 'botao_user' --line 2 --text '🔰AGREGAR RESELLER🔰' --callback_data '/reseller'
ShellBot.InlineKeyboardButton --button 'botao_user' --line 2 --text '🗑QUITAR RESELLER🗑' --callback_data '/delresell'
ShellBot.InlineKeyboardButton --button 'botao_user' --line 3 --text 'HABLAR CON ADMIN' --callback_data '1' --url 'https://t.me/@dexmod1'
#ShellBot.InlineKeyboardButton --button 'botao_user' --line 4 --text 'GRUPO ORG' --callback_data '1' --url 'https://t.me/d_ADM'
#ShellBot.InlineKeyboardButton --button 'botao_user' --line 4 --text '👨‍💻ADMIN MOD👨‍💻' --callback_data '1' --url 'https://t.me/C'
ShellBot.InlineKeyboardButton --button 'botao_user' --line 4 --text 'PRECIOS 💰' --callback_data '/ayuda'
#ShellBot.InlineKeyboardButton --button 'botao_user' --line 5 --text 'MENU' --callback_data '1' --url 'https://t.me/d_ADM'



#
# Ejecutando escucha del bot
while true; do
    ShellBot.getUpdates --limit 100 --offset $(ShellBot.OffsetNext) --timeout 30
    for id in $(ShellBot.ListUpdates); do

	    chatuser="$(echo ${message_chat_id[$id]}|cut -d'-' -f2)"
	    [[ -z $chatuser ]] && chatuser="$(echo ${callback_query_from_id[$id]}|cut -d'-' -f2)"
	    echo $chatuser >&2
	    #echo "user id $chatuser"

	    comando=(${message_text[$id]})
	    [[ -z $comando ]] && comando=(${callback_query_data[$id]})
	    #echo "comando $comando"

	    [[ ! -e "${CIDdir}/Admin-ID" ]] && echo "null" > ${CIDdir}/Admin-ID
	    permited=$(cat ${CIDdir}/Admin-ID)
	
	    if [[ $(echo $permited|grep "${chatuser}") = "" ]]; then
		 if [[ $(cat ${CID}|grep "${chatuser}") = "" ]]; then
			 case ${comando[0]} in
				 /[Ii]d|/[Ii]D)myid_src &;;
				/[Aa]cceso|[Aa]cceso)autori &;;
				 /[Mm]enu|[Mm]enu|/[Ss]tart|[Ss]tart|[Cc]omensar|/[Cc]omensar)menu_src &;;
				 /[Aa]yuda|[Aa]yuda|[Hh]elp|/[Hh]elp)ayuda_id &;;
                                 /sendid)send_ID;;
				 /*|*)invalido_fun &;;
			 esac
		 else
		if [[ ${message_reply_to_message_message_id[$id]} ]]; then
				case ${message_reply_to_message_text[$id]} in
					'☟INGRESE SU RESELLER ABAJO☟')mensaje;;
					#*)invalido_fun;;
				esac
		 	elif [[ ${message_text[$id]} || ${callback_query_data[$id]} ]]; then
			 case ${comando[0]} in
				 /[Mm]enu|[Mm]enu|/[Ss]tart|[Ss]tart|[Cc]omensar|/[Cc]omensar)menu_src &;;
				/[Rr]eseller)newres;;
				    /[Dd]elresell)rm_resell &;;
				 /[Ii]d|/[Ii]D)myid_src &;;
				 #/[Ii]nstalador)link_src &;;
				
				/[Kk]eygen|/[Gg]erar|[Gg]erar|[Kk]eygen)gerar_key &;;
				# /[Cc]ambiar)creditos &;;
				 /*|*)invalido_fun &;;
			 esac
			fi
			
		 fi
	    else

	    	if [[ ${message_reply_to_message_message_id[$id]} ]]; then
				case ${message_reply_to_message_text[$id]} in
					'/del')deleteID_reply;;
					'/add')addID_reply;;
					'☟INGRESE SU RESELLER ABAJO☟')mensaje;;
					*)invalido_fun;;
				esac

			elif [[ ${message_document_file_id[$id]} ]]; then
					 download_file

	    	elif [[ ${message_text[$id]} || ${callback_query_data[$id]} ]]; then

		 		case ${comando[0]} in
					 /[Mm]enu|[Mm]enu|/[Ss]tart|[Ss]tart|[Cc]omensar|/[Cc]omensar)menu_src &;;
					 /[Aa]yuda|[Aa]yuda|[Hh]elp|/[Hh]elp)ayuda_src &;;
					 /[Ii]d|/[Ii]D)myid_src &;;
					 /[Aa]dd|/[Dd]el)reply &;;
					 /[Pp]ower)start_gen &;;
					/[Rr]eseller)newres;;
				    /[Dd]elresell)rm_resell &;;
					 /[Kk]eygen|/[Gg]erar|[Gg]erar|[Kk]eygen)gerar_key &;;
					#
					# /[Cc]ambiar)creditos &;;
			 		 /[Ii]nfosys)infosys_src &;;
			 		 /[Ll]ist)listID_src &;;
			 		 /[Ii]nstalador)link_src &;;
			 		 /[Cc]ache)cache_src &;;
			 		 /*|*)invalido_fun &;;
				esac

			fi

	    fi
    done
done
