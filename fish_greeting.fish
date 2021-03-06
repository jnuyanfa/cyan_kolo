# Set global color styles, for example:
#
# function cyan_error
#   set_color -o red
# end
#
# function cyan_normal
#   set_color normal
#

function fish_greeting -d "what's up, fish?"
    if math "$LINES >= 20 && $COLUMNS >= 80" > /dev/null
        switch (uname)
            case Linux
                python3 (dirname (status -f))/archey_linux.py
            case Darwin
                bash (dirname (status -f))/archey_mac.sh
            case '*'
                echo Hello
        end
    end
end
