from django.urls import path
from . import views

urlpatterns = [
    path('events/', views.getEvents, name='get-events'),
    path('events/<int:pk>/', views.getEvent, name='get-event'),
    path('events/create/', views.createEvent, name='create-event'),
    path('events/<int:pk>/update/', views.updateEvent, name='update-event'),
    path('events/<int:pk>/delete/', views.deleteEvent, name='delete-event'),
]