"""core URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, re_path
from django.urls import include

# from users.views import ConfirmAccountView
# from portfolios.views import AcceptInvitationView


PREFIX_API = "api/v1/"

urlpatterns = [
    path('admin/', admin.site.urls),
    path('baton/', include('baton.urls')),

    # path(PREFIX_API, include(('users.urls', 'users'), namespace='users')),
    # path(PREFIX_API + 'password_reset/', include('django_rest_passwordreset.urls', namespace='password_reset')),
    # path('ConfirmAccount/<str:uidb64>/<str:token>/', ConfirmAccountView, name='activate'),
    # path('AcceptInvitation/<str:portfolio_id>/', AcceptInvitationView, name='activate'),



] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


