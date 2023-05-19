#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
GUESS_NUMBER=$(( $RANDOM % 1000 + 1 ))

START_GUESS() {
  USERNAME=$1
  GAMES_PLAYED=$2
  BEST_GAME=$3
  NOW_GUESS=1
  echo -e "\nGuess the secret number between 1 and 1000:"
  read INPUT
  while [[ $INPUT != $GUESS_NUMBER ]]
  do
    if [[ $INPUT =~ ^[0-9]+$ ]]
    then
      # 是数字
      if [[ $INPUT -lt $GUESS_NUMBER ]]
      then
        # 猜的数字比随机数小
        echo "It's lower than that, guess again:"
      else
        # 猜的数字比随机数大
        echo "It's higher than that, guess again:"
      fi
    else
      # 不是数字
      echo "That is not an integer, guess again:"
    fi
    NOW_GUESS=$(( $NOW_GUESS + 1 ))
    read INPUT
  done
  echo "You guessed it in $NOW_GUESS tries. The secret number was $GUESS_NUMBER. Nice job!"
  if [[ $BEST_GAME == 0 ]]
  then
    # 表示是新客户
    UPDATE=$($PSQL "INSERT INTO users(name, games_played, best_game) VALUES('$USERNAME', 1, $NOW_GUESS)")
  else
    # 旧客户
    GAMES_PLAYED=$(( $GAMES_PLAYED + 1 ))
    if [[ $NOW_GUESS -lt $BEST_GAME ]]
    then
      # 现在猜的是最佳数据
      BEST_GAME=$NOW_GUESS
    fi
    UPDATE=$($PSQL "UPDATE users SET games_played=$GAMES_PLAYED, best_game=$BEST_GAME WHERE name='$USERNAME'")
  fi
}

echo "Enter your username:"
# 读取玩家姓名
read USERNAME
# 用name来匹配玩家的id
USERINFO=$($PSQL "SELECT user_id, games_played,best_game FROM users WHERE name = '$USERNAME'")
# 没有获取到
if [[ -z $USERINFO ]]
  then
  # 要加入新玩家
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  START_GUESS $USERNAME 0 0
else
  # 在数据库中找到，输出玩家信息
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE name='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE name='$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  START_GUESS $USERNAME $GAMES_PLAYED $BEST_GAME
fi


