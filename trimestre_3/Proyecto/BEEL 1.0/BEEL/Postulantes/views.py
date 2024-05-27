from django.shortcuts import render, redirect
from django.http import HttpResponse        
from .forms import postulanteForm


# Create your views here.



def index(request):
    return render(request, 'postulantes/index.html')


def loginPostulante(request):
    return render(request, 'postulantes/autenticacion.html')


def formularioPostulante(request): 
    if request.method == 'POST':
        form = postulanteForm(request.POST)
        if form.is_valid():
            form.save()
            # hacer algo después de guardar los datos del usuario
    else:
        form = postulanteForm()
    return render(request, 'postulantes/formulario.html', {'form':form})
