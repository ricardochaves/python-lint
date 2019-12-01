import uuid


def get_name_len(name: str) -> int:

    return len(name)


def start():
    print(get_name_len("Ricardo"))
    print(uuid.uuid4().hex)
