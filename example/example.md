
    swapi.getSpecies(url: url_next_page).then((species) {
        for (int i = 0; i < species.results.length; i++) {
            print(species.results[i].name);
            SpeciesItem item = await swapi.getSpeciesItem(url: species.results[i].url);
            print("---> " + item.language);
        }
    })



    Planets planets = await swapi.getPlanets();
    for (int i = 0; i < planets.results.length; i++) {
        print(planets.results[i].name);
        PlanetsItem item = await swapi.getPlanetsItem(url: planets.results[i].url);
        print("---> " + item.rotationPeriod);
    }