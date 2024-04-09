from functions import showPostulantes, createPostulante, updateData, deletePostulante, showEmpresa, createEmpresa, updateEmpresa, deleteEmpresa, printURL
from connection import conexion
cursor = conexion.cursor()

#MENÚ PRINCIPAL
def menu():
    while True:
        print('')
        print('----Sistema CRUD base de datos de Postulante y Empresa----')
        print('')
        print('1. Manipular DB postulantes')
        print('2. Manipular DB empresas')
        print('3. Salir')

        opcion = input('Seleccione una opción: ')

        if opcion == '1':

            while True:
                print("\n--- CRUD postulantes ---")
                print('')
                printURL('http://127.0.0.1:5500/CRUD/tablasPostulantes.html', 'Diccionario de IDs de los postulantes')
                print('')
                print("1. Mostrar datos postulantes")
                print("2. Agregar nuevo postulante")
                print("3. Actualizar datos de un postulante")
                print("4. Eliminar datos de un postulante")
                print("5. Salir")

                opcion = input("Seleccione una opción: ")

                if opcion == "1":
                    showPostulantes()
                elif opcion == "2":
                    nombres = input("Nombres: ")
                    apellidos = input("Apellidos: ")
                    id_nacionalidad = int(input("Nacionalidad: "))
                    celular = int(input("Celular: "))
                    celularAlt = input("Celular Alterno: ")
                    id_tipoDocumento = int(input("Tipo Documento: "))
                    numeroDocumento = int(input("Número Documento: "))
                    id_sexo = int(input("Sexo: "))
                    id_genero = int(input("Género: "))
                    id_etnia = int(input("Etnia: "))
                    email = input('E-mail: ')
                    id_rhGrupoSanguineo = int(input('RH y grupo sanguíneo: '))
                    id_estadoCivil = int(input('Estado civil: '))
                    id_rangoSalarial = int(input('Rango salarial: '))
                    idiomas = input('Idioma: ')
                    id_nivelIdiomaPostulante = int(input('Nivel idioma: '))
                    id_tipoDiscapacidad = int(input('Tipo de Discapacidad: '))
                    descripcion = input('Descripción de la Discapacidad: ')
                    id_gradoDiscapacidad = int(input('Grado de discapacidad: '))
                    direccion = input('Dirección: ')
                    id_localidad = int(input('Localidad: '))
                    createPostulante(nombres, apellidos, id_nacionalidad, celular, celularAlt, id_tipoDocumento,numeroDocumento, id_sexo, id_genero, id_etnia, email, id_rhGrupoSanguineo, id_estadoCivil, id_rangoSalarial, idiomas, id_nivelIdiomaPostulante, id_tipoDiscapacidad, descripcion, id_gradoDiscapacidad, direccion, id_localidad)
                elif opcion == "3":
                    id = int(input("ID del empleado a actualizar: "))
                    nombres = input("Nuevos Nombres: ")
                    apellidos = input("Nuevos Apellidos: ")
                    id_nacionalidad = int(input("Nueva Nacionalidad: "))
                    celular = int(input("Nuevo Celular: "))
                    celularAlt = input("Nuevo Celular Alterno: ")
                    id_tipoDocumento = int(input("Nuevo Tipo Documento: "))
                    numeroDocumento = int(input("Nuevo Número Documento: "))
                    id_sexo = int(input("Nuevo Sexo: "))
                    id_genero = int(input("Nuevo Género: "))
                    id_etnia = int(input("Nuevo Etnia: "))
                    email = input('Nuevo E-mail: ')
                    id_rhGrupoSanguineo = int(input('Nuevo RH y grupo sanguíneo: '))
                    id_estadoCivil = int(input('Nuevo Estado civil: '))
                    id_rangoSalarial = int(input('Nuevo Rango salarial: '))
                    idiomas = input('Nuevo Idioma: ')
                    id_nivelIdiomaPostulante = int(input('Nuevo Nivel idioma: '))
                    id_tipoDiscapacidad = int(input('Nuevo tipo de discapacidad: '))
                    descripcion = input('Nueva descripción de la discapacidad: ')
                    id_gradoDiscapacidad = int(input('Nuevo grado de discapacidad: '))
                    direccion = input('Nueva dirección: ')
                    id_localidad = int(input('Nueva localidad: '))
                    updateData(id, nombres, apellidos, id_nacionalidad, celular, celularAlt, id_tipoDocumento,numeroDocumento, id_sexo, id_genero, id_etnia, email, id_rhGrupoSanguineo, id_estadoCivil, id_rangoSalarial, idiomas, id_nivelIdiomaPostulante, id_tipoDiscapacidad,descripcion, id_gradoDiscapacidad, direccion, id_localidad)
                elif opcion == "4":
                    id = int(input("ID del postulante a eliminar: "))
                    deletePostulante(id)
                elif opcion == "5":
                    break
                else:
                    print("Opción inválida. Por favor, seleccione una opción válida.")

        if opcion == '2':
            while True:
                print("\n--- CRUD Empresas ---")
                print('')
                printURL('http://127.0.0.1:5500/CRUD/tablasEmpresas.html', 'Diccioario de IDs de las empresas')
                print('')
                print("1. Mostrar datos de empresas")
                print("2. Agregar datos de empresa")
                print("3. Actualizar datos de una empresa")
                print("4. Eliminar datos de una empresa")
                print("5. Salir")

                opcion = input("Seleccione una opción: ")

                if opcion == '1':
                    showEmpresa()
                elif opcion == "2":
                    razonSocial = input("Razón social: ")
                    direccion = input("Dirección: ")
                    email = input("E-mail: ")
                    id_industria = int(input("Industria: "))
                    id_sector = input("Sector: ")
                    rut = input("RUT: ")
                    id_actividadEconomica = int(input("Actividad Económica: "))
                    id_tipoEmpresa = int(input("Tipo Empresa: "))
                    nit = input("NIT: ")
                    id_tamaño = int(input("Tamaño: "))
                    createEmpresa(razonSocial, direccion, email, id_industria, id_sector, rut, id_actividadEconomica, id_tipoEmpresa, nit, id_tamaño)
                elif opcion == '3':
                    id = int(input("ID de la empresa a actualizar: "))
                    razonSocial = input("Razón social: ")
                    direccion = input("Dirección: ")
                    email = input("E-mail: ")
                    id_industria = int(input("Industria: "))
                    id_sector = input("Sector: ")
                    rut = input("RUT: ")
                    id_actividadEconomica = int(input("Actividad Económica: "))
                    id_tipoEmpresa = int(input("Tipo Empresa: "))
                    nit = input("NIT: ")
                    id_tamaño = int(input("Tamaño: "))
                    updateEmpresa(id,razonSocial, direccion, email, id_industria, id_sector, rut, id_actividadEconomica, id_tipoEmpresa, nit, id_tamaño)
                elif opcion == "4":
                    id = int(input("ID de la empresa a eliminar: "))
                    deleteEmpresa(id)
                elif opcion == '5':
                    break
                else:
                    print("Opción inválida. Por favor, seleccione una opción válida.")

        elif opcion == '3':
            break
        else:
            print("Opción inválida. Por favor, seleccione una opción válida.")
                
        
# Ejecutar el menú principal
if __name__ == "__main__":
    menu()
