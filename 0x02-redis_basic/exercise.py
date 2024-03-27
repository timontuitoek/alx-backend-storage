#!/usr/bin/env python3

import redis
import uuid
from typing import Union


class Cache:
    """
    A class for interacting with a Redis cache.
    """

    def __init__(self) -> None:
        """
        Initialize the Cache object with a Redis client and flush the Redis instance.
        """
        self._redis: redis.Redis = redis.Redis()
        self._redis.flushdb()

    def store(self, data: Union[str, bytes, int, float]) -> str:
        """
        Store the input data in Redis using a random key and return the key.
        """
        key = str(uuid.uuid4())
        self._redis.set(key, data)
        return key

