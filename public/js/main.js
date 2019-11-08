

const myVM = (() => {
    let userButtons = document.querySelectorAll('.m-link'),
        lightBox = document.querySelector('.lightbox');

 
    function renderMovieCast(media) {
        return `<ul class="m-cast">
                    ${media.map(item => `<li>${item}</li>`).join("")}
                </ul>` 
    }

    function parseMovieInfo(movie) {
        let targetDiv = lightBox.querySelector('.lb-content'),
            targetImg = lightBox.querySelector('img');

        let movieContent = `
            <h3>${movie.Director}</h3>
            <h4>Movie Cast:</h4>
            <!-- loop thru social media stuff here -->
            ${renderMovieCast(movie.Cast)}
            <p>${movie.Reason}</p>

        `;

        targetDiv.innerHTML = movieContent;
        targetImg.src = movie.currentSrc;

        lightBox.classList.add('show-lb');
    }

    function getMovieInfo(event) {
        event.preventDefault();
        //debugger;

        let url = `/users/${this.getAttribute('href')}`,
            currentImg = this.previousElementSibling.querySelector('img').getAttribute('src');
            
 
        fetch(url)
            .then(res => res.json())
            .then(data => {
                console.log(data)
              

                data.currentSrc = currentImg;
                parseMovieInfo(data);
            })

            .catch(err => console.log(err));
    }

    userButtons.forEach(button => button.addEventListener("click", getMovieInfo));

    lightBox.querySelector('.close').addEventListener("click", function() {
        lightBox.classList.remove('show-lb');
    });

})();