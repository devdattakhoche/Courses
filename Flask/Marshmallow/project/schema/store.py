from marshmallow import Schema 
from ma import ma
from models.store import StoreModel

class ItemSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = StoreModel
        load_only = ("store",)
        dump_only = ("id",)
        include_fk = True


