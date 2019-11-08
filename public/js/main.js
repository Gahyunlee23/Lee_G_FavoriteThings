// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let userButtons = document.querySelectorAll('.m-link'),
        lightBox = document.querySelector('.lightbox');

    //create the social media list
    function renderMovieCast(media) {
        return `<ul class="m-cast">
                    ${media.map(item => `<li>${item}</li>`).join("")}
                </ul>`
    }

    function parseMovieInfo(movie) {
        let targetDiv = lightBox.querySelector('.lb-content'),
            targetImg = lightBox.querySelector('img');

        let movieContent = `
            <p>${movie.director}</p>
            <h4>Movie Cast:</h4>
            <!-- loop thru social media stuff here -->
            ${renderMovieCast(movie.cast)}
        `;

        targetDiv.innerHTML = movieContent;
        targetImg.src = person.currentSrc;

        lightBox.classList.add('show-lb');
    }

    function getMovieInfo(event) {
        event.preventDefault();
        // debugger;
        //1, 2 or 3 depending on which anchor tag you click
        let url = `/users/${this.getAttribute('href')}`,
            currentImg = this.previousElementSibling.getAttribute('src');


        // this goes and fetched the database content (or an API endp)
        // that's why ..?
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

    // lightBox.querySelector('.close').addEventListener("click", function () {
    //     lightBox.classList.remove('show-lb');
    // });

})();