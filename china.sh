#!/bin/sh

# ホームフォルダ
HOME=~/data/develop/sh/china
SITE=${HOME}/sitelist.txt

# ログファイル名
DT=`date +"%Y%m%d%H%M%S"`
LOG="${HOME}/log"
LOGFILE="${LOG}/${DT}.log"

# 更新日時チェック
cat ${SITE} | gawk -v home=${HOME} -f ${HOME}/pagelist.awk | bash | tee ${LOGFILE}

# 比較
echo "■ ■ ■ 更新日時チェック ■ ■ ■"
cd ${LOG}
ls -r | head -2 | gawk 'BEGIN{a=1;}{b[a++]=$0;}END{print "diff " b[2] " " b[1];}' | bash

# クリーン
echo "■ ■ ■ クリーン ■ ■ ■"
ls -r | gawk 'BEGIN{a=0;}{if(a>=2){printf("rm -f %s\n",$0);}a++;}' | bash

