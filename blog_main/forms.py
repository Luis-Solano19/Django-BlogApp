# Add your forms here.
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm

# Create a custom form extending UserCreationForm's by Django.

class RegisterForm(UserCreationForm):
    class Meta:
        # Create form based on User model fields.
        model = User
        fields = ('email', 'username', 'password1', 'password2')