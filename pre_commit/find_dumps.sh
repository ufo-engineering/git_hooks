FILES_PATTERN='\.(php|html|tpl)(\..+)?$'
FORBIDDEN='((;| |)var_dump\(|(;| |)dd\(|(;| |)cl\(|(;| |)print_r\()'
git diff --cached --name-only | \
    grep -E $FILES_PATTERN | \
    GREP_COLOR='4;5;37;41' xargs grep -w -E --color --with-filename -n "$FORBIDDEN" && \
    echo 'COMMIT REJECTED' && \
    exit 1

exit 0
