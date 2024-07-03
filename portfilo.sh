#!/usr/bin/env bash
#variables
name="Valerie"
major="Information Technology"
truthOne="$name has a server that they maintain"
answerOne="True! $name, has worked with both Google cloud console and Oracle cloud, but has a Oracle Cloud server that they regularly host things on and take care of"
lie="$name's main language is SQL"
answerTwo="False, While SQL is somethign $name is very proficent in, python is $name's main language"
truthTwo="$name has particpated in a Hackathon"
answerThree="True! $name created a website that gamified Cybersecurity for end users, make sure to checkout on github!"
facts=("$name is a $major major" "$name has worked in 3 total tech postions variying in skills" "$name has a passion for backend devleopment and databases!" "$name has created a lot of projects all that show different sets of skills!" "$name loves to read, cross-stich and play video games when they have freetime")

#intro
echo "Welcome to the Hall of knowledge where you will learn more about $name!"
echo "there are 5 facts about $Valerie that you have access to, which would you like to see?"

#info gathering
while true; do 
    read -p "Pick a number 1-5, enter 6 to quit: " number

    # Check if the input is a valid number
    if ! [[ "$number" =~ ^[0-9]+$ ]]; then
        echo "Invalid input. Please enter a valid number."
        continue
    fi

    # Check if the input is 6 to quit
    if [ "$number" -eq 6 ]; then
        echo "Exiting..."
        break
    fi

    # Convert the input to an index by subtracting 1
    i=$((number - 1))

    # Check if the index is within the valid range of the array
    if ((i >= 0 && i < ${#facts[@]})); then
        echo "${facts[$i]}/n"
    else
        echo "Invalid input. Please enter a number between 1 and 5."
    fi
done

echo "do you think you know Valerie enough to play 2 truths one Lie, doesn't matter you have to play!"

# Two Truths and a Lie game
while true; do
    # print all options
    echo "1. $truthOne"
    echo "2. $lie"
    echo "3. $truthTwo"
    read -p "Enter the number of the statement you think is a lie: " choice

    case $choice in
        1)
            echo "$answerOne/n"
            ;;
        2)
            echo "$answerTwo"
            break
            ;;
        3)
            echo "$answerThree"
            ;;
        *)
            echo "Invalid choice. Please enter 1, 2, or 3."
            continue
            ;;
    esac

    echo "Try again!"
done
# print links
echo "learn more about $name at any of these links:"
echo "linkedin: https://www.linkedin.com/in/valerie-nielson-6b4417250/"
echo "github: https://github.com/SKel1817/SKel1817"