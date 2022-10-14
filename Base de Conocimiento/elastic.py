from haystack.document_store.elasticsearch import ElasticsearchDocumentStore
#conexion con el contenedor de elasticsearch
document_store = ElasticsearchDocumentStore(host="localhost", username="", password="", index="document")

#Convierte el DataFrame en un diccionario
import pandas as pd 

df = pd.read_csv('Dataset_DatosFiltro.csv')
print(df.head())

dicts = df.to_dict('records')

final_dicts = []

cont = 0
for each in dicts:
    try:
        cont = cont + 1
        tmp = {}
        tmp['text'] = each.pop('body_text')
        tmp['meta'] = each
        final_dicts.append(tmp)
        # print(each.get('title') )
    except:
        print("error en: ", each.get('sha'))

#Se agrega los documentos al contendor elasticsearch
document_store.write_documents(final_dicts)

print("articulos totales: ",cont)