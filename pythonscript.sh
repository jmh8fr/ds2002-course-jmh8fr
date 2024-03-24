#!/usr/bin/python3


import os

FAV_MOVIE = input('What is yoru favorite movie? ')
GENDER = input('What is your gender? ')
USER_TOWN = input('What town are you from? ')

os.environ["FAV_MOVIE"] = "The Shawshank Redemption"
os.environ["GENDER"] = "Male"
os.environ["USER_TOWN"] = "Arlington"

print("Environment Variables Set: ")
print(f"FAV_MOVIE: {os.getenv('FAV_MOVIE')}")
print(f"GENDER: {os.getenv('GENDER')}")
print(f"USER_TOWN: {os.getenv('USER_TOWN')}")


