from operator import truediv
from marshmallow_sqlalchemy.schema import load_instance_mixin
from ma import ma
from models.user import UserModel


class UserSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = UserModel
        load_only = ("password",)
        dump_only = ("id","activated")
        load_instance = True
