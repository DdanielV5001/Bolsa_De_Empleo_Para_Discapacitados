from connection import conexion
cursor = conexion.cursor()

#funcion para agregar datos de nuevo postulante
def createPostulante(nombres, apellidos, id_nacionalidad, celular, celularAlt, id_tipoDocumento,numeroDocumento, id_sexo, id_genero, id_etnia, email, id_rhGrupoSanguineo, id_estadoCivil, id_rangoSalarial, idiomas, id_nivelIdiomaPostulante, id_tipoDiscapacidad, descripcion, id_gradoDiscapacidad, direccion, id_localidad):
    sql = "INSERT INTO infopersonalpostulante (nombres, apellidos, id_nacionalidad, celular, celularAlt, id_tipoDocumento, numeroDocumento, id_sexo, id_genero, id_etnia, email, id_rhGrupoSanguineo, id_estadoCivil, id_rangoSalarial, idiomas, id_nivelIdiomaPostulante, id_tipoDiscapacidad, descripcion, id_gradoDiscapacidad, direccion, id_localidad) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);"
    valores = (nombres, apellidos, id_nacionalidad, celular, celularAlt, id_tipoDocumento,numeroDocumento, id_sexo, id_genero, id_etnia, email, id_rhGrupoSanguineo, id_estadoCivil, id_rangoSalarial, idiomas, id_nivelIdiomaPostulante, id_tipoDiscapacidad, descripcion, id_gradoDiscapacidad, direccion, id_localidad)
    cursor.execute(sql, valores)
    conexion.commit()
    print('Postulante agregado exitosamente')

#función para listar los datos de los postulantes
def showPostulantes():
    cursor.execute('SELECT infopersonalpostulante.id, nombres, apellidos, id_nacionalidad, celular, celularAlt, id_tipoDocumento, numeroDocumento, id_sexo, id_genero, id_etnia, email, id_rhGrupoSanguineo, id_estadoCivil, id_rangoSalarial, idiomas, id_nivelIdiomaPostulante, id_tipoDiscapacidad, descripcion, id_gradoDiscapacidad, direccion, id_localidad FROM infopersonalpostulante')
    infopersonalpostulante = cursor.fetchall()
    for postulante in infopersonalpostulante:
        print(postulante)

#función para actualizar los datos de un Postulante
def updateData(id, nombres, apellidos, id_nacionalidad, celular, celularAlt, id_tipoDocumento,numeroDocumento, id_sexo, id_genero, id_etnia, email, id_rhGrupoSanguineo, id_estadoCivil, id_rangoSalarial, idiomas, id_nivelIdiomaPostulante, id_tipoDiscapacidad, descripcion, id_gradoDiscapacidad, direccion, id_localidad):
    sql = 'UPDATE infopersonalpostulante SET nombres = %s, apellidos = %s, id_nacionalidad = %s, celular = %s, celularAlt = %s, id_tipoDocumento = %s, numeroDocumento = %s, id_sexo = %s, id_genero= %s, id_etnia = %s, email = %s, id_rhGrupoSanguineo = %s, id_estadoCivil = %s, id_rangoSalarial = %s, idiomas = %s, id_nivelIdiomaPostulante = %s, id_tipoDiscapacidad = %s, descripcion = %s, id_gradoDiscapacidad = %s, direccion = %s, localidad = %s WHERE id = %s'
    valores = (nombres, apellidos, id_nacionalidad, celular, celularAlt, id_tipoDocumento, numeroDocumento, id_sexo, id_genero, id_etnia, email, id_rhGrupoSanguineo, id_estadoCivil, id_rangoSalarial, idiomas, id_nivelIdiomaPostulante, id_tipoDiscapacidad, descripcion, id_gradoDiscapacidad, direccion, id_localidad, id)
    cursor.execute(sql, valores)
    conexion.commit()
    print('Datos del postulante actualizados')

#función para elminar los datos del postulante
def deletePostulante(id):
    sql = 'DELETE FROM infopersonalpostulante WHERE id = %s'
    cursor.execute(sql, (id,))
    conexion.commit()
    print('Datos postulante eliminados')



#funcion para agregar datos nueva empresa
def createEmpresa(razonSocial, direccion, email, id_industria, id_sector, rut, id_actividadEconomica, tipoEmpresa, nit, id_tamaño):
    sql = "INSERT INTO infobasicaempresa (razonSocial, direccion, email, id_industria, id_sector, rut, id_actividadEconomica, id_tipoEmpresa, nit, id_tamaño) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s);"
    valores = (razonSocial, direccion, email, id_industria, id_sector, rut, id_actividadEconomica, tipoEmpresa, nit, id_tamaño)
    cursor.execute(sql, valores)
    conexion.commit()
    print('Empresa agregada exitosamente')

#función para mostrar los datos de las empresas
def showEmpresa():
    cursor.execute('SELECT infobasicaempresa.id, razonSocial, direccion, email, id_industria, id_sector, rut, id_actividadEconomica, id_tipoEmpresa, nit, id_tamaño FROM infobasicaempresa')
    infobasicaempresa = cursor.fetchall()
    for postulante in infobasicaempresa:
        print(postulante)

#funcion para actualizar datos de la empresa
def updateEmpresa(razonSocial, direccion, email, id_industria, id_sector, rut, id_actividadEconomica, id_tipoEmpresa, nit, id_tamaño):
    sql = 'UPDATE infobasicaempresa SET razonSocial = %s, direccion = %s, email = %s, id_industria = %s, id_sector = %s, rut = %s, id_actividadEconomica = %s, id_tipoEmpresa WHERE id = %s'
    valores = (razonSocial, direccion, email, id_industria, id_sector, rut, id_actividadEconomica, id_tipoEmpresa, nit, id_tamaño)
    cursor.execute(sql, valores)
    conexion.commit()
    print('Empresa agregada exitosamente')

#funcion para eliminar los datos de empresa
def deleteEmpresa(id):
    sql = 'DELETE FROM infobasicaempresa WHERE id = %s'
    cursor.execute(sql, (id,))
    conexion.commit()
    print('Datos de empresa eliminados')


def printURL(texto, url):
    print("\033[1;34m{}\033[m: {}".format(texto, url))

