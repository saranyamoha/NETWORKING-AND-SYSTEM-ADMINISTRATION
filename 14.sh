declare -A grades=(
    [Alice]=90
    [Bob]=80
    [Charlie]=70
    [David]=60
    [Emma]=50
)

for name in "${!grades[@]}"
do
    echo "$name: ${grades[$name]}%"
done
