from django.shortcuts import render

def overview(request):
    return render(request, 'devopsweb/overview.html', {'title': 'Django Overview'})
