from GPSPhoto import gpsphoto
from geopy.distance import geodesic as GD

# Введите координаты автоматов в coord_of_automatic_machines.txt
# В виде "latitude, longitude" в современном виде географических координат в градусах (без символа градуса)
# Пример записи: 55.94916286087507, 38.060506866656866


def image_geo_data(photo):
    # data = gpsphoto.getGPSData(photo)
    # if len(data) == 0:
    #     print("The photo does not have a geo position")
    #     return False
    # coord_of_person = (data['Latitude'], data['Longitude'])
    coord_of_person = (photo.split(', '))
    with open('modules/backed/coord_of_automatic_machines.txt') as f:
        for line in f:
            coord_of_automate = line.rstrip().split(",")
            try:
                coord_of_automate = tuple(float(n) for n in coord_of_automate)
            except Exception:
                print("exception in txt file")
                return False
            if GD(coord_of_person, coord_of_automate).meters <= 30:
                print("Person near machine")
                return True
    print("Person not near machine")
    return False


# image_geo_data(input())
