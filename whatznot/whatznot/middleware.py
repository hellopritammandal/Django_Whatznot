# whatznot/middleware.py

from django.shortcuts import redirect

class RedirectOn404Middleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        response = self.get_response(request)

        # Check if the response status code is 404 (Page Not Found)
        if response.status_code == 404:
            return redirect('custom_404')

        return response
