git status --porcelain | grep -e '^[AM]\(.*\).php$' | cut -c 3- | while read line; do
    echo "FILE $line check"
    { output=$(php-cs-fixer fix --verbose "$line" --level=psr2 --fixers=-psr0 2>&1 1>&3-) ;} 3>&1
    if [[ $output =~ ^I ]]; then  echo "Syntax error in $line  COMMIT REJECTED"; exit 1; fi
    git add "$line";
    echo ""
done
