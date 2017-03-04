# 変数初期化
HOME=$1
AREA=$2
SHOP=$3
PAGE=$4
URL=$5

LM=`(wget -S --spider ${URL} 1>/dev/null) 2>&1 | gawk -f ${HOME}/modefied.awk`
if [ "${LM}" = "" ]
then
	DT="ERROR"
else
	DT=`date -d "${LM}" +"%Y/%m/%d_%H:%M:%S"`
fi

echo "${AREA} ${SHOP} ${PAGE} ${DT} ${URL}"

