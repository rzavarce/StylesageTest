from rest_framework.views import APIView
from rest_framework.authtoken.models import Token
from rest_framework.response import Response
from rest_framework.decorators import permission_classes


from django.contrib.auth import authenticate, login


@permission_classes([])
class AuthGetToken(APIView):

    def post(self, request, *args, **kwargs):

        payload = request.data['payload']
        username = payload['username']
        password = payload['password']
        user = authenticate(request, username=username, password=password)

        if user is not None:

            token, _ = Token.objects.get_or_create(user=user)
            response = {
                'token': str(token),
                'user_id': user.pk,
                'username': user.username,
                'email': user.email
            }

        else:
            # Return an 'invalid login' error message.
            response = {
                "status": False,
                "msg": "Error: user and password are invalid."
            }

        return Response(response)
