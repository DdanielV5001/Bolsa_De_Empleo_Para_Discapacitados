from django import forms
from .models import postulantes, empresas


class postulanteForm(forms.ModelForm):
    class Meta:
        model = postulantes
        fields = '__all__'

class empresaForm(forms.ModelForm):
    class Meta:
        model = empresas
        fields = '__all__'