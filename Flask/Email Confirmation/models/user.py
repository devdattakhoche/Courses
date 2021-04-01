from enum import unique

from flask.helpers import url_for
from db import db
from flask import request
from requests import Response,post

class UserModel(db.Model):
    __tablename__ = "users"

    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(80), nullable=False, unique=True)
    password = db.Column(db.String(80), nullable=False)
    email =  db.Column(db.String(80), nullable=False, unique=True)
    activated = db.Column(db.Boolean, nullable=False, default=False)

    @classmethod
    def find_by_username(cls, username: str) -> "UserModel":
        return cls.query.filter_by(username=username).first()

    @classmethod
    def find_by_id(cls, _id: int) -> "UserModel":
        return cls.query.filter_by(id=_id).first()
    
    def send_email(self) -> Response:
        print(self) 
        link = request.url_root[:-1]+url_for("userconfirmation",user_id=self.id)
        return post(
		"https://api.mailgun.net/v3/sandboxd5fb61e77c8e427fbcadf63b361244c3.mailgun.org/messages",
		auth=("api", "2e34a9a2f116e890c5ba980aa77efe2e-b6d086a8-242fcd61"),
		data={"from": "Mailgun Sandbox <postmaster@sandboxd5fb61e77c8e427fbcadf63b361244c3.mailgun.org>",
			"to": "Dante123 <"+"2018.devdatta.khoche@ves.ac.in"+">",
			"subject": "Hello Dante123",
			"text": "Congratulations Dante123, you need to click this link below\n"+link+"\n!  You are truly awesome!"})

    def save_to_db(self) -> None:
        db.session.add(self)
        db.session.commit()

    def delete_from_db(self) -> None:
        db.session.delete(self)
        db.session.commit()
