#!/usr/bin/env python3
"""
Posts Blueprint
"""
from flask import Blueprint

from backend.observability import get_logger


logger = get_logger(__name__)


posts = Blueprint('posts', __name__)


@posts.route('/')
def index():
    return 'Posts'
