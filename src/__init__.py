from .config import DBConnection
from .entities import Users as UserModels

class UserRepo:

    def insert_user(self, name):
        with DBConnection() as db:
            new_user = UserModels(name=name)
            db.session.add(new_user)
            db.session.commit()