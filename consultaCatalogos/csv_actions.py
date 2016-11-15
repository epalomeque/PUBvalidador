import codecs
#import unicodecsv as csv
import csv
from django.utils import timezone
from consultaCatalogos.models import FormatoPubActor, FormatoPubPoblacion, FormatoPubPersona

"""
def csv_unireader(f, encoding="utf-8", delimiter=','):
    for row in csv.reader(codecs.iterencode(codecs.iterdecode(f, encoding), "utf-8"), delimiter=delimiter):
        yield [e.decode("utf-8") for e in row]
"""

def import_csv(filename):
    f = open(filename, 'rb')
    records_added = 0
    errors = []
    #registros = csv_unireader(f)
    registros = csv.reader(f, delimiter=',', dialect=csv.excel)
    # Generate a dict per row, with the first CSV row being the keys.
    for row in registros:
    #for row in registros:
        #losdatos[] = row
        print row
        # Bind the row data to the MyModelForm
        # form = MyModelForm(row)
        #if form.is_valid():
        #    model_instance = form.save(commit=False)
        #    model_instance.timestamp = timezone.now()
        #    model_instance.save()
        #    records_added += 1
        #else:
        #    errors.append(form.errors)

    return registros


# >>> import csv
# >>> f = open('myclone.csv', 'rb')
# >>> reader = csv.reader(f)
# >>> headers = reader.next()
# >>> headers
# ['workers', 'constant', 'age']
# >>> column = {}
# >>> for h in headers:
# ...    column[h] = []
# ...
# >>> column
# {'workers': [], 'constant': [], 'age': []}
# >>> for row in reader:
# ...   for h, v in zip(headers, row):
# ...     column[h].append(v)
# ...
# >>> column
# {'workers': ['w0', 'w1', 'w2', 'w3'], 'constant': ['7.334', '5.235', '3.2225', '0'], 'age': ['-1.406', '-4.936', '-1.478', '0']}
# >>> column['workers']
# ['w0', 'w1', 'w2', 'w3']
# >>> column['constant']
# ['7.334', '5.235', '3.2225', '0']
# >>> column['age']
# ['-1.406', '-4.936', '-1.478', '0']