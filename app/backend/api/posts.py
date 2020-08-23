#!/usr/bin/env python3
"""
Posts Blueprint
"""
from bson.json_util import dumps as jsonify
from flask import Blueprint

from backend.database import get_database
from backend.database.seed import main
from backend.observability import get_logger


logger = get_logger(__name__)


posts = Blueprint('posts', __name__)


@posts.route('/')
def index():
    db = get_database()
    posts = db.posts

    cursor = posts.find({})
    docs = []
    for document in cursor:
        docs.append(document)
        logger.info(document)
    print(jsonify(cursor))
    return jsonify(docs)

@posts.route('/new')
def create():
    db = db = get_database()
    posts = db.posts

    import datetime

    post = {
        "author": "Mike",
        "text": "My first blog post!",
        "tags": ["mongodb", "python", "pymongo"],
        "date": datetime.datetime.utcnow()
    }

    post_id = posts.insert_one(post).inserted_id
    return f"Post ID: {post_id}"

@posts.route('/seed')
def seed():
    main()
    return "Seeding"

@posts.route('/post')
def post():
    return "post"
