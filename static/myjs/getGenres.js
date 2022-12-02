function getGenres() {
    var htpx = new XMLHttpRequest()
    htpx.onreadystatechange = function () {
        if (this.status == 200 && this.readyState == 4) {
            var output = JSON.parse(this.response);
            console.log(output);
            s = "";
            for (var i = 0; i < output.length; i++) {
                s += `<li class="py-1"><a class="h-b-primary  py-1 font-size-14"
                         href="/movies/${output[i].id}">${output[i].name}</a>
                                                        </li>`
            }
            s += `<li class="py-1"><a class="h-b-primary  py-1 font-size-14"
                         href="/movies">All Movies</a>
                                                        </li>`
            document.getElementById('movieGenre').innerHTML = s;
            s3 = "";
            for (var j = 0; j < output.length; j++) {
                s3 += `<li class="py-1d">
                            <a class="h-g-white"
                               href="/movies/${output[j].id}">${output[j].name}</a>
                        </li>`
            }
            s3 += `<li class="py-1d">
                            <a class="h-g-white"
                               href="/movies">All Movies</a>
                        </li>`
            document.getElementById('footerGenres').innerHTML = s3;
        }
    }
    htpx.open('GET', 'getGenres', true)
    htpx.send()
}
