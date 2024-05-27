from django import forms
from .models import postulante


class postulanteForm(forms.ModelForm):
    class Meta:
        model = postulante
        fields = '__all__'