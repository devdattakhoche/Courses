from schema.item import ItemSchema
from marshmallow import Schema 
from ma import ma
from models.store import StoreModel

class StoreSchema(ma.SQLAlchemyAutoSchema):
    items =  ma.Nested(ItemSchema, many=True)
    class Meta:
        model = StoreModel
        dump_only = ("id",)
        include_fk = True


