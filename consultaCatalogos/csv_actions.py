import csv
from django.utils import timezone
from consultaCatalogos.models import FormatoPubActor, FormatoPubPoblacion, FormatoPubPersona




def import_csv(filename):
    rows = open(filename)
    records_added = 0
    errors = []
    # Generate a dict per row, with the first CSV row being the keys.
    for row in csv.DictReader(rows, delimiter=","):

        print(row)
        # Bind the row data to the MyModelForm
        # form = MyModelForm(row)
        #if form.is_valid():
        #    model_instance = form.save(commit=False)
        #    model_instance.timestamp = timezone.now()
        #    model_instance.save()
        #    records_added += 1
        #else:
        #    errors.append(form.errors)

    return rows