from rest_framework.views import APIView
from rest_framework.authtoken.models import Token
from rest_framework.response import Response
from rest_framework.decorators import permission_classes


from django.contrib.auth import authenticate, login


@permission_classes([])
class AuthGetToken(APIView):

    def post(self, request, *args, **kwargs):

        payload = request.data['payload']
        print()
        print(payload)
        print()

        username = payload['username']
        password = payload['password']
        user = authenticate(request, username=username, password=password)
        response = {}

        if user is not None:
            laa = login(request, user)

            token, _ = Token.objects.get_or_create(user=user)

            print()
            print(token)
            print(user.pk)
            print(user.email)
            print()

            response = {
                'token': token,
                'user_id': user.pk,
                'email': user.email
            }


        else:
            # Return an 'invalid login' error message.
            print()
            print("WWWWWWWWWWWWWWWWWW")
            print()

            response = {
                "status": False
            }

        return Response(response)
