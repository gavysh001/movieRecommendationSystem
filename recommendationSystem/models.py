from django.db import models
from django.utils.html import format_html

# Create your models here.

class Visitors(models.Model):
    email = models.EmailField()
    name = models.CharField(max_length=255)
    password = models.CharField(max_length=255)
    mobile = models.CharField(max_length=15)
    otp = models.IntegerField(null=True)
    object = models.Manager

    def __str__(self):
        return self.name
    class Meta:
        db_table = 'visitors'


class Genres(models.Model):
    name = models.CharField(max_length=255)
    description = models.CharField(max_length=255)
    object = models.Manager

    def __str__(self):
        return self.name
    class Meta:
        db_table = 'genres'

class Artists(models.Model):
    name = models.CharField(max_length=255)
    description = models.CharField(max_length=255)
    object = models.Manager

    def __str__(self):
        return self.name
    class Meta:
        db_table = 'artists'

class Movies(models.Model):
    name = models.CharField(max_length=255)
    director = models.CharField(max_length=255)
    release_date = models.CharField(max_length=255)
    poster = models.FileField(upload_to='movies/')
    overview = models.CharField(max_length=255)
    cast = models.ManyToManyField(to=Artists, related_name='cast')
    genres = models.ManyToManyField(to=Genres, related_name='genres')
    object = models.Manager

    def __str__(self):
        return self.name
    class Meta:
        db_table = 'movies'

    def show_image(self):
        return format_html(f"<img src='/static/media/{self.poster}' alt='{self.name}' width=50")

class Reviews(models.Model):
    title = models.CharField(max_length=255)
    desc = models.TextField(max_length=255)
    visitors = models.ForeignKey(to=Visitors, on_delete=models.CASCADE)
    movies = models.ForeignKey(to=Movies, on_delete=models.CASCADE)
    date = models.DateTimeField(auto_now=True)
    status = models.CharField(max_length=1, choices=[('p','Pending'),('c',"Confirmed"),('d',"Deleted")], default='p')

    def __str__(self):
        return self.title
    class Meta:
        db_table = 'reviews'

class Watchlist(models.Model):
    user = models.ForeignKey(to=Visitors, on_delete=models.CASCADE)
    movies = models.ForeignKey(to=Movies, on_delete=models.CASCADE)

    def __str__(self):
        return self.user
    class Meta:
        db_table = 'watchlist'