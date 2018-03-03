#!/bin/bash

#echo STARTINGD RUN.SH FOR STARTING DJANGO SERVER PORT IS $PORT
#
#echo ENVIRONMENT VARiABLES IN RUN.SH
#printenv


#Change this values for django superuser
# USER="sodo"
# MAIL="ochieng.grace@students.jkuat.ac.ke"
# PASS="sodo1234"

if [ -z "$PORT" ];
  then SERVER_PORT=5000;
  else SERVER_PORT="$PORT";
fi

echo [$0] port is------------------- $SERVER_PORT
python manage.py syncdb --noinput
python manage.py migrate
# echo "from django.contrib.auth.models import User; User.objects.create_superuser('${USER}', '${MAIL}', '${PASS}')" | python manage.py shell
echo [$0] Starting Django Server...
python manage.py runserver 0.0.0.0:$SERVER_PORT --noreload