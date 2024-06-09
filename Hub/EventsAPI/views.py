# The app's controllers

from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.decorators import api_view
from .models import Event
from .serializers import EventSerializer


#get all events
@api_view(['GET'])
def getEvents(request):
    events = Event.objects.all()
    serializer = EventSerializer(events, many=True)
    return Response(serializer.data)

#get a single event
@api_view(['GET'])
def getEvent(request, pk):
    event = Event.objects.get(id=pk)
    serializer = EventSerializer(event, many=False)
    return Response(serializer.data)

#create an event
@api_view(['POST'])
def createEvent(request):
    serializer = EventSerializer(data=request.data)

    if serializer.is_valid():
        serializer.save()
        return Response(serializer.data, status=201)

    print("Errors:", serializer.errors)
    return Response(serializer.errors, status=400)

#update an event
@api_view(['PUT'])
def updateEvent(request, pk):
    try:
        event = Event.objects.get(id=pk)
    except Event.DoesNotExist:
        return Response(status=404)

    serializer = EventSerializer(instance=event, data=request.data)
    if serializer.is_valid():
        serializer.save()
        return Response(serializer.data)
    return Response(serializer.errors, status=400)

#delete an event
@api_view(['DELETE'])
def deleteEvent(request, pk):
        event = Event.objects.get(id=pk)
        event.delete()

        return Response('Event was deleted')