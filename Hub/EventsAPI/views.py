# The apps controllers

from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.decorators import api_view
from .models import Event
from .serializers import EventSerializer


#get all users
@api_view(['GET'])
def getEvents(request):
    events = Event.objects.all()
    serializer = EventSerializer(events, many=True)
    return Response(serializer.data)

#get a single user
@api_view(['GET'])
def getEvent(request, pk):
    event = Event.objects.get(id=pk)
    serializer = EventSerializer(event, many=False)
    return Response(serializer.data)

#create a user
@api_view(['POST'])
def createEvent(request):
    serializer = EventSerializer(data=request.data)

    if serializer.is_valid():
        serializer.save()

    return Response(serializer.data)

#update a user
@api_view(['PUT'])
def updateEvent(request, pk):
    event = Event.objects.get(id=pk)
    serializer = EventSerializer(instance=event, data=request.data)

    if serializer.is_valid():
        serializer.save()

    return Response(serializer.data)

#delete a user
@api_view(['DELETE'])
def deleteEvent(request, pk):
    event = Event.objects.get(id=pk)
    event.delete()

    return Response('User was deleted')


