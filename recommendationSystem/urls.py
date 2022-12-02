from django.contrib import admin
from django.urls import path
from .views import *

urlpatterns = [
    path('', index, name='index'),
    path('recommendPage', recommendPage, name='recommendPage'),
    path('getMoviesNames', getMoviesNames, name='getMoviesNames'),
    path('getRecommendations', getRecommendations, name='getRecommendations'),
    path('getRegisterForm', getRegisterForm, name='getRegisterForm'),
    path('userLogout', userLogout, name='userLogout'),
    path('registerUser', registerUser.as_view(), name='registerUser'),
    path('checkUser', checkUser.as_view(), name='checkUser'),
    path('getGenres', getGenres, name='getGenres'),
    path('movies/<int:id>', movies, name='movies'),
    path('movies', movies, name='movies'),
    path('moviesdetails/<int:id>', moviesdetails, name='moviesdetails'),
    path('postReview', postReview, name='postReview'),
    path('getReviews/<int:id>', getReviews, name='getReviews'),
    path('addWatchlist/<int:id>', addWatchlist, name='addWatchlist'),
    path('removeWatchlist/<int:id>', removeWatchlist, name='removeWatchlist'),
    path('watchlistPage', watchlistPage, name='watchlistPage'),
    path('changePassword', changePassword, name='changePassword'),
    path('changeUserPass', changeUserPass, name='changeUserPass'),

]
