from marshmallow import Schema , fields

class UserSchema(Schema):
    id = fields.Int()
    username  = fields.str()