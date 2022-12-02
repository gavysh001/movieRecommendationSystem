from django.shortcuts import *
from django.http import *
from django.views.generic import View
# Create your views here.
from .demo import get_movies, recommend
from .models import *
from .forms import *
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
from django.db.models import Exists

def index(request):
    registerForm = visitorSignupForm()
    x = Movies.objects.order_by('?')[:19]
    movies = []
    count = 1
    for i in x:
        d = {'count':count, 'movie':i}
        movies.append(d)
        count += 1
    return render(request, 'index.html',{'registerForm':registerForm, 'movies':movies,'pageTitle':'Home Page'})

def recommendPage(request):
    registerForm = visitorSignupForm()
    return render(request, 'recommendPage.html',{'registerForm':registerForm,'pageTitle':'Recommendation'})

def getMoviesNames(request):
    movies = get_movies()
    return JsonResponse({'names':movies}, safe=False)

def getRecommendations(request):
    movie = request.GET['movie']
    # print(movie)
    lst = recommend(movie)
    lst = [list(i) for i in lst]
    print(lst)
    return JsonResponse({'recommendedMovies':lst}, safe=False)

# @method_decorator(csrf_exempt, name='dispatch')
class registerUser(View):
    def post(self, request):
        visit = visitorSignupForm(request.POST)
        if visit.is_valid():
            visit.save()
            return HttpResponse('success')
        else:
            print(visit.errors)
            return HttpResponse('error')

class checkUser(View):
    def post(self, request):
        # print(request.POST)
        email = request.POST['email']
        password = request.POST['password']
        user = Visitors.objects.filter(email=email, password=password)
        # print(user)
        if len(user) > 0:
            request.session['visitor'] = {'email':request.POST['email'], 'name':user[0].name, 'mobile':user[0].mobile, 'id':user[0].id}
            return HttpResponse('success')
        else:
            return HttpResponse('failure')

def userLogout(request):
    request.session['visitor'] = ''
    del request.session['visitor']
    return redirect('index')

def getRegisterForm(request):
    registerForm = visitorSignupForm()
    return HttpResponse(registerForm)

def getGenres(request):
    all_genres = Genres.objects.all()
    # print(all_genres)
    # print(request.GET['id'])
    return JsonResponse(list(all_genres.values()), safe=False)

def movies(request, id=0):
    registerForm = visitorSignupForm()
    if id == 0:
        all_movies = Movies.objects.all()
    else:
        all_movies = Movies.objects.filter(genres=id)
    return render(request, 'movies.html',{'movies':all_movies,'registerForm':registerForm,'pageTitle':'Movies'})

def moviesdetails(request, id):
    registerForm = visitorSignupForm()
    movie = Movies.objects.get(pk=id)
    all_movies = Movies.objects.order_by('?')[:5]
    return render(request, 'moviesdetails.html', {'movie':movie,'all_movies':all_movies,'registerForm':registerForm,'pageTitle':f'{movie.name}'})

def postReview(request):
    old_review = Reviews.objects.filter(movies_id=request.POST['movieID'], visitors_id=request.session['visitor']['id'])
    if len(old_review) == 0:
        review = Reviews(title=request.POST['title'], desc=request.POST['desc'], movies_id=request.POST['movieID'],
                         visitors_id=request.session['visitor']['id'])
        review.save()
        return HttpResponse('success')
    else:
        return HttpResponse('You have Already submitted a review on this movie')

def getReviews(request, id):
    rev = Reviews.objects.filter(movies_id=id)
    return JsonResponse(list(rev.values()), safe=False)

def addWatchlist(request, id):
    if 'visitor' not in request.session:
        return HttpResponse('Please login First')
    else:
        data = Watchlist.objects.filter(user_id=request.session['visitor']['id'], movies_id=id)
        if len(data) == 0:
            wlist = Watchlist(user_id=request.session['visitor']['id'], movies_id=id)
            wlist.save()
            print(id)
            return HttpResponse('success')
        else:
            return HttpResponse('Already in Watchlist')

def watchlistPage(request):
    userid = request.session['visitor']['id']
    registerForm = visitorSignupForm()
    movies = Movies.objects.filter(watchlist__user_id=userid)
    return render(request, 'watchlist.html', {'movies': movies, 'registerForm': registerForm,'pageTitle':'My Watchlist'})

def removeWatchlist(request, id):
    movie = Watchlist.objects.get(movies_id=id, user_id=request.session['visitor']['id'])
    movie.delete()
    return redirect('watchlistPage')

def changePassword(request):
    if 'visitor' in request.session:
        return render(request,'changepassword.html',{'pageTitle':'Change Password'})
    else:
        return redirect('index')

@csrf_exempt
def changeUserPass(request):
    if 'visitor' in request.session:
        user = Visitors.objects.filter(email=request.POST['email'], password=request.POST['oldpass'])
        if len(user) == 0:
            return HttpResponse('Invalid Old Password')
        else:
            user[0].password = request.POST['newpass']
            user[0].save()
            return HttpResponse('success')
    else:
        return redirect('index')
