from django.test import TestCase
from rest_framework.test import APIClient
from rest_framework import status
from .models import Event

class EventAPITestCase(TestCase):

    def setUp(self):
        self.client = APIClient()
        self.event = Event.objects.create(title='Test Event', description='Test description', location='Test location', date='2024-07-01', organizer='Test Organizer')

    def test_get_events(self):
        response = self.client.get('/events-api/events/')
        self.assertEqual(response.status_code, status.HTTP_200_OK)

    def test_get_event(self):
        response = self.client.get(f'/events-api/events/{self.event.pk}/')
        self.assertEqual(response.status_code, status.HTTP_200_OK)

    def test_create_event(self):
        data = {
            'title': 'New Event',
            'description': 'New description',
            'location': 'New location',
            'date': '2024-07-02',
            'organizer': 'New Organizer'
        }
        response = self.client.post('/events-api/events/create/', data, format='json')
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)

    def test_update_event(self):
        data = {
            'title': 'Updated Event',
            'description': 'Updated description',
            'location': 'Updated location',
            'date': '2024-07-03',
            'organizer': 'Updated Organizer'
        }
        response = self.client.put(f'/events-api/events/{self.event.pk}/update/', data, format='json')
        self.assertEqual(response.status_code, status.HTTP_200_OK)

    # def test_delete_event(self):
    #     response = self.client.delete(f'/events-api/events/{self.event.pk}/delete/')
    #     self.assertEqual(response.status_code, status.HTTP_204_NO_CONTENT)
