import tkinter as tk
from tkinter import ttk
import pymysql
#hacer la ruta para la lista de las herramnientas
def recupera():
    conn = pymysql.connect(host='localhost', user='root', password='', db='taller')
    cursor = conn.cursor()
    cursor.execute('SELECT cantidad, n_serie, nombre, descripcion FROM herramientas')
    articulo = cursor.fetchall()
    conn.close()
    return articulo
#hace que en el entry busque el nombre de la lista de las herramientas
def buscar():
    nombre = busqueda.get()
    resultados = [fila for fila in recupera() if nombre.lower() in fila[2].lower()]
    if resultados:
        tree.delete(*tree.get_children())
        for fila in resultados:
            tree.insert("", "end", values=fila)

        resultado.config(text="")
    else:
        resultado.config(text="¡Ups! No se encontró la palabra")
#para reiniciar la tabla de las herramientas
def reinicio():
    filas=recupera()
    mostrar(filas)
    resultado.config(text="")
#busca en la lista en relacion con la palabra puesta en el entry
def mostrar(resultados):
    tree.delete(*tree.get_children())
    for fila in resultados:
        tree.insert("", "end", values=fila)
#hacer la ventana del tkinter
tabla = tk.Tk()
tabla.resizable(1, 1)
tabla.geometry("600x400")
tabla.config(bg="gray")
tabla.title("Taller mecánico")
#los botones y la lista
busqueda=tk.Entry(tabla, width=50)
busqueda.pack(pady=10)
boton=tk.Button(tabla, text="Buscar", command=buscar)
boton.pack(pady=10)
boton2=tk.Button(tabla, text="Herramientas", command=reinicio)
boton2.pack(pady=10)
resultado = tk.Label(tabla, text="", bg="gray", fg="black")
resultado.pack()
filas = recupera()
encabezados = ('CANTIDAD', 'NUMERO DE SERIE', 'NOMBRE', 'DESCRIPCION')
tree = ttk.Treeview(tabla, columns=encabezados, show="headings")

for encabezado in encabezados:
    tree.heading(encabezado, text=encabezado)
    tree.column(encabezado, width=150)

mostrar(filas)
tree.pack(padx=10, pady=10)

tabla.mainloop()
