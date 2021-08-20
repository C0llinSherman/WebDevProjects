#while :; do echo $RANDOM && skeeo 5; done
#echo $RANDON
#echo $(($RANDOM % 50))



#start match game
#declare variables

green='\033[0;32m'
red='\033[0;31m'
gray='\033[0;37m'
cyan='\033[0;36m'

if [[ -z $2 ]]; then
    echo ${red}"Select easy or hard"
    echo "Select add, subtract, or multiply"
    echo ${cyan}"EX. sh flashCards.sh easy add"
    exit
fi

# if [[ -z $2 ]]; then
#     exit
# fi

function hard() {

function addition() {

num1=$(echo $(($RANDOM % 50)))
num2=$(echo $(($RANDOM % 50)))
sum=$(echo $((${num1} + ${num2})))

echo "What is ${num1} + ${num2}?" && read answer

if [[ ${answer} == ${sum} ]]; then
    echo ${green}"nice job"${gray}
    score+=(1)
    total=${#score[@]}
    echo "Score = " ${total}
else
    echo ${red}"wrong"${grey}
    total=${#score[@]}
    echo "Final Score = " ${total}
    exit
fi
addition
}


function subtraction() {

num1=$(echo $(($RANDOM % 50)))
num2=$(echo $(($RANDOM % 50)))
if [[ ${num1} -gt ${num2} ]]; then
sum=$(echo $((${num1} - ${num2})))
echo "What is ${num1} - ${num2}?" && read answer
else 
sum=$(echo $((${num2} - ${num1})))
echo "Sum changed"
echo "What is ${num2} - ${num1}?" && read answer
fi

if [[ ${answer} == ${sum} ]]; then
    echo ${green}"nice job"${gray}
    score+=(1)
    total=${#score[@]}
    echo "Score = " ${total}
else
    echo ${red}"wrong"${grey}
    total=${#score[@]}
    echo "Final Score = " ${total}
    exit
fi
subtraction
}


function multiplication() {

num1=$(echo $(($RANDOM % 50)))
num2=$(echo $(($RANDOM % 50)))
sum=$(echo $((${num1} * ${num2})))

echo "What is ${num1} * ${num2}?" && read answer

if [[ ${answer} == ${sum} ]]; then
    echo ${green}"nice job"${gray}
    score+=(1)
    total=${#score[@]}
    echo "Score = " ${total}
else
    echo ${red}"wrong"${grey}
    total=${#score[@]}
    echo "Final Score = " ${total}
    exit
fi
multiplication
}


function division() {

num1=$(echo $(($RANDOM % 50)))
num2=$(echo $(($RANDOM % 50)))
sum=$(echo $((${num1} * ${num2})))

echo "What is ${sum} / ${num1}?" && read answer

if [[ ${answer} == ${num2} ]]; then
    echo ${green}"nice job"${gray}
    score+=(1)
    total=${#score[@]}
    echo "Score = " ${total}
else
    echo ${red}"wrong"${grey}
    total=${#score[@]}
    echo "Final Score = " ${total}
    exit
fi
division
}
}



function easy() {

function addition() {

num1=$(echo $(($RANDOM % 10)))
num2=$(echo $(($RANDOM % 10)))
sum=$(echo $((${num1} + ${num2})))

echo "What is ${num1} + ${num2}?" && read answer

if [[ ${answer} == ${sum} ]]; then
    echo ${green}"nice job"${gray}
    score+=(1)
    total=${#score[@]}
    echo "Score = " ${total}
else
    echo ${red}"wrong"${grey}
    total=${#score[@]}
    echo "Final Score = " ${total}
    exit
fi
addition
}


function subtraction() {

num1=$(echo $(($RANDOM % 10)))
num2=$(echo $(($RANDOM % 10)))
if [[ ${num1} -gt ${num2} ]]; then
sum=$(echo $((${num1} - ${num2})))
echo "What is ${num1} - ${num2}?" && read answer
else 
sum=$(echo $((${num2} - ${num1})))
echo "Sum changed"
echo "What is ${num2} - ${num1}?" && read answer
fi



if [[ ${answer} == ${sum} ]]; then
    echo ${green}"nice job"${gray}
    score+=(1)
    total=${#score[@]}
    echo "Score = " ${total}
else
    echo ${red}"wrong"${grey}
    total=${#score[@]}
    echo "Final Score = " ${total}
    exit
fi
subtraction
}


function multiplication() {

num1=$(echo $(($RANDOM % 10)))
num2=$(echo $(($RANDOM % 10)))
sum=$(echo $((${num1} * ${num2})))

echo "What is ${num1} * ${num2}?" && read answer

if [[ ${answer} == ${sum} ]]; then
    echo ${green}"nice job"${gray}
    score+=(1)
    total=${#score[@]}
    echo "Score = " ${total}
else
    echo ${red}"wrong"${grey}
    total=${#score[@]}
    echo "Final Score = " ${total}
    exit
fi
multiplication
}


function division() {

num1=$(echo $(($RANDOM % 10)))
num2=$(echo $(($RANDOM % 10)))
sum=$(echo $((${num1} * ${num2})))

echo "What is ${sum} / ${num1}?" && read answer

if [[ ${answer} == ${num2} ]]; then
    echo ${green}"nice job"${gray}
    score+=(1)
    total=${#score[@]}
    echo "Score = " ${total}
else
    echo ${red}"wrong"${grey}
    total=${#score[@]}
    echo "Final Score = " ${total}
    exit
fi
division
}
}





case ${1} in
easy)
    easy;;
hard)
    hard;;
esac



case ${2} in 
add)
    addition
    ;;
subtract)
    subtraction
    ;;
multiply)
    multiplication
    ;;
divide)
    division
    ;;
esac

