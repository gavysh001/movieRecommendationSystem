window.onload = getMoviesNames();
var allMovies = []

function getMoviesNames() {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var output = JSON.parse(this.response);
            allMovies = output['names']
            createAutoComplete(output['names'])
        }
    };
    xmlhttp.open("GET", "/getMoviesNames", true);
    xmlhttp.send();
}

function recommendmovie() {
    var movieName = document.getElementById('tags').value;
    {
        // alert(movieName);

    }
    var flag = false
    allMovies.forEach((name) => {
        if (name == movieName) {
            flag = true;
        }
    });
    if (flag) {
        alert('Movie Found');
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var output = JSON.parse(this.response);
                var count = 1;
                output['recommendedMovies'].forEach(movie => {
                    console.log(movie);
                    // https://api.themoviedb.org/3/movie/550?api_key=980d96176457a6e65b8bc282bcadccd4
                    var apiData = fetch('https://api.themoviedb.org/3/movie/' + movie[0] + '?api_key=980d96176457a6e65b8bc282bcadccd4&language=en-US')
                        .then(response => response.json())
                        .then(data => {
                            console.log(data);
                            document.getElementById('movieName'+ count).innerHTML = data.original_title;
                            document.getElementById('movieImg'+count).src = 'https://image.tmdb.org/t/p/w500'+data.poster_path;
                            // console.log('movieName'+count);
                            count++;
                        });

                    console.log(apiData);
                });
            }
        };
        xmlhttp.open("GET", "getRecommendations?movie=" + movieName, true);
        xmlhttp.send();
    } else {
        alert('Not Found');
    }
}

function createAutoComplete(movie_list) {
    var availableTags = movie_list;
    $("#tags").autocomplete({
        source: availableTags
    });
}
