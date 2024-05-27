from typing import Any
from django.db import models


# Create your models here.


class postulante(models.Model):
    id = models.AutoField(primary_key=True)
    nombres = models.CharField(max_length=255, verbose_name="Nombre", null=False)
    apellidos = models.CharField(max_length=255, verbose_name="Apellido", null=False)
    cedula = models.TextField(verbose_name="Número de Cédula", null=False, unique=True)
    fecha_nacimiento = models.DateField(verbose_name="Fecha de nacimiento", null=False)
    celular = models.CharField(max_length=255, verbose_name="Celular", null=False)
    correo = models.EmailField(verbose_name="Correo electrónico", unique=True, null=False)
    direccion = models.CharField(max_length=255, verbose_name="Dirección", null=False)
    descripcionDiscapacidad = models.TextField(verbose_name="Descripción de discapacidad", null=False)

