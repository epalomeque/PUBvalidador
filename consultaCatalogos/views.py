from django.shortcuts import render
from django.shortcuts import render_to_response
from django.template.context import RequestContext
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.core.urlresolvers import reverse
from django.http.response import HttpResponseRedirect
from forms import SignUpForm


# Create your views here.
def signup(request):
    if request.method == 'POST':  # If the form has been submitted...
        formRegistro = SignUpForm(request.POST)  # A form bound to the POST data
        if formRegistro.is_valid():  # All validation rules pass

            # Process the data in form.cleaned_data
            username = formRegistro.cleaned_data["username"]
            password = formRegistro.cleaned_data["password"]
            email = formRegistro.cleaned_data["email"]
            first_name = formRegistro.cleaned_data["first_name"]
            last_name = formRegistro.cleaned_data["last_name"]

            # At this point, user is a User object that has already been saved
            # to the database. You can continue to change its attributes
            # if you want to change other fields.
            user = User.objects.create_user(username, email, password)
            user.first_name = first_name
            user.last_name = last_name

            # Save new user attributes
            user.save()

            return HttpResponseRedirect(reverse('home'))  # Redirect after POST
    else:
        formRegistro = SignUpForm()

    data = {
        'formRegistro': formRegistro,
    }
    return render_to_response('login.html', data, context_instance=RequestContext(request))


#def main(request):
#   return render_to_response('main.html', {}, context_instance=RequestContext(request))

@login_required()
def home(request):
    return render_to_response('home.html', {'user': request.user}, context_instance=RequestContext(request))