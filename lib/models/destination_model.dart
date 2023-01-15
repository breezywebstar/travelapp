import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'lib/images/capetown.png',
    name: 'Cape Town Arena',
    type: 'Tourist location',
    startTimes: ['11:00 pm', '1:00pm'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'lib/images/kenya.png',
    name: 'Beautiful Kenya',
    type: 'Tourist location',
    startTimes: ['9:00 pm', '11:00am'],
    rating: 4,
    price: 100,
  ),
  Activity(
    imageUrl: 'lib/images/lacampagne.png',
    name: 'La Campagne Tropicana',
    type: 'Tourist location',
    startTimes: ['12:30 pm', '2:00pm'],
    rating: 3,
    price: 125,
  )
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'lib/images/capetown.png',
    city: 'Cape Town',
    country: 'South Africa',
    description: 'Visit Cape Town for an amazing adventure',
    activities: activities,
  ),
  Destination(
    imageUrl: 'lib/images/kenya.png',
    city: 'Nairobi',
    country: 'Kenya',
    description: 'Visit Nairobi for an amazing adventure',
    activities: activities,
  ),
  Destination(
    imageUrl: 'lib/images/lacampagne.png',
    city: 'Ibeju Lekki - Lagos',
    country: 'Nigeria',
    description: 'Visit La Campagne for an amazing adventure',
    activities: activities,
  ),
  Destination(
    imageUrl: 'lib/images/lagos.png',
    city: 'Lagos',
    country: 'Nigeria',
    description: 'Visit Lagos for an amazing adventure',
    activities: activities,
  ),
  Destination(
    imageUrl: 'lib/images/sunrise_SA.png',
    city: 'Limpopo',
    country: 'South Africa',
    description: 'Visit Sunrise for an amazing adventure',
    activities: activities,
  ),
  Destination(
    imageUrl: 'lib/images/southafrica.png',
    city: 'South Africa',
    country: 'South Africa',
    description: 'Visit SA for an amazing adventure',
    activities: activities,
  ),
];
