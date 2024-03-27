
#!/usr/bin/env python3

"""
Find all schools that cover the specified topic.
"""


def schools_by_topic(mongo_collection, topic):
    """schools that cover the specified topic"""
    cursor = mongo_collection.find({"topics": topic})
    return [doc for doc in cursor]

