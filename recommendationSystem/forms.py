from .models import *
from django import forms

class visitorSignupForm(forms.ModelForm):

    class Meta:
        model = Visitors
        fields = ['name', 'email', 'mobile', 'password']

        widgets = {
            'name' : forms.TextInput(attrs={'class':'form-control', 'id':'name', 'name':'name'}),
            'email' : forms.EmailInput(attrs={'class':'form-control', 'id':'email', 'name':'email'}),
            'mobile' : forms.TextInput(attrs={'class':'form-control', 'id':'mobile', 'name':'mobile'}),
            'password' : forms.PasswordInput(attrs={'class':'form-control', 'id':'password', 'name':'password'}),
        }
        labels = {
            'name':'Enter Name',
            'email':'Enter Your Email',
            'mobile':'Enter Your Mobile Number',
            'password':'Enter Your Password',
        }