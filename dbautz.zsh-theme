#Colors
#Red
ral_3003='134;26;34'
#Yellow
ral_1027='167;127;14'
#Blue
ral_5018='5;139;140'
#White
ral_9016='241;240;234'
#Black
ral_9005='14;14;16'

if [[ -n $SSH_CONNECTION ]]; then
    DOMAINNAME=.$(hostname --fqdn | cut -d '.' -f2)
else
    DOMAINNAME=""
fi
PROMPT=$'%{\e[38;2;${ral_3003}m%}%n%{\e[38;2;${ral_1027}m%}@%{\e[38;2;${ral_3003}m%}%m$DOMAINNAME%}%{\e[38;2;${ral_9016}m%}: %{\e[38;2;${ral_5018}m%}%~ %{\e[38;2;${ral_1027}m%}%#%{\e[0m%} '
