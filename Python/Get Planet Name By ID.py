def get_planet_name(id):
    planets = [
        "Mercury",
        "Venus",
        "Earth",
        "Mars",
        "Jupiter",
        "Saturn",
        "Uranus",
        "Neptune",
    ]
    names = {id: planet for id, planet in enumerate(planets, 1)}

    return names.get(id, "")
