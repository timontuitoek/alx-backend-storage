
#!/usr/bin/env python3

"""
Insert a new document into the given MongoDB collection based on kwargs
"""


def insert_school(mongo_collection, **kwargs):
    """
    Insert a new document into MongoDB.
    """
    new_school = mongo_collection.insert_one(kwargs)
    return new_school.inserted_id
