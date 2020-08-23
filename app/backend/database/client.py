#!/usr/bin/env python3
"""
MongoDB Client
"""
from os import environ
from urllib.parse import quote_plus

from pymongo import MongoClient


def get_client():
    host = environ['MONGO_HOST']
    user = environ['MONGO_USERNAME']
    password = environ['MONGO_PASSWORD']

    user = quote_plus(user)
    password = quote_plus(password)

    uri = f'mongodb://{user}:{password}@{host}'
    
    client = MongoClient(uri)

    return client


def get_database():
    name = environ['MONGO_DATABASE']

    client = get_client()

    database = client[name]

    return database
