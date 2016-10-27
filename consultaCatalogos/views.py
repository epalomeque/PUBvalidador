from django.shortcuts import render
from django.shortcuts import render_to_response
from django.template.context import RequestContext

# Create your views here.
def main(request):
    return render_to_response('main.html', {}, context_instance=RequestContext(request))