# from flask import Flask, request, jsonify
# import json
# import numpy as np
# from sklearn.metrics.pairwise import cosine_similarity

# app = Flask(__name__)

# # Load API flight data from flights.json
# with open('flights.json') as f:
#     flights = json.load(f)

# # Get departure airports from API flight data
# departure_airports = list(set([flight['departureAirport'] for flight in flights]))

# # Calculate cosine similarity between departure airports
# def get_similar_flights(departure_airport):
#     vectors = []
#     for flight in flights:
#         vector = np.zeros(len(departure_airports))
#         index = departure_airports.index(flight['departureAirport'])
#         vector[index] = 1
#         vectors.append(vector)

#     query_vector = np.zeros(len(departure_airports))
#     query_index = departure_airports.index(departure_airport)
#     query_vector[query_index] = 1

#     similarities = cosine_similarity([query_vector], vectors)[0]
#     indices = np.argsort(similarities)[::-1]
#     similar_flights = [flights[i] for i in indices]

#     return similar_flights[:10]

# # API endpoint for recommending similar flights
# @app.route('/recommend', methods=['POST'])
# def recommend_flights():
#     data = request.get_json()
#     departure_airport = data['departureAirport']
#     similar_flights = get_similar_flights(departure_airport)
#     return jsonify(similar_flights)

# if __name__ == '__main__':
#     app.run(port=6000)


from flask import Flask, request, jsonify
import numpy as np
from sklearn.metrics.pairwise import cosine_similarity
import requests

app = Flask(__name__)

# Load API flight data from flights.json
# with open('flights.json') as f:
#     flights = json.load(f)

response = requests.get('https://cavijs.vercel.app/flights')
flights = response.json()

# Calculate cosine similarity between flights based on multiple attributes


def get_similar_flights(departure_airport):
    vectors = []
    for flight in flights:
        vector = np.array([
            1 if flight['departureAirport'] == departure_airport else 0,
            # Extract day from date
            float(flight['departureDate'].split('-')[2]),
            1 if flight['arrivalAirport'] == departure_airport else 0,
            flight['availableSeats'],
            flight['ticketPrice'],
            float(flight['airlineCode']),
            1 if flight['airlineName'] == departure_airport else 0,
            1 if flight['aircraftType'] == departure_airport else 0
        ])
        vectors.append(vector)
        print("vector:", vector)

    query_vector = np.array([
        1,  # Match departure airport
        0,  # Ignore departure date for now
        0,  # Ignore arrival airport for now
        0,  # Ignore available seats for now
        0,  # Ignore ticket price for now
        0,  # Ignore airline code for now
        0,  # Ignore airline name for now
        0   # Ignore aircraft type for now
    ])

    similarities = cosine_similarity([query_vector], vectors)[0]
    print("Similarities:")
    for i, similarity in enumerate(similarities):
        print(f"Flight {i+1}: {similarity}")

    indices = np.argsort(similarities)[::-1]
    print("Indices:", indices)
    similar_flights = [flights[i] for i in indices]

    return similar_flights[:10]


# API endpoint for recommending similar flights

# API endpoint for recommending similar flights
@app.route('/recommend', methods=['POST'])
def recommend_flights():
    data = request.get_json()
    departure_airport = data['departureAirport']
    similar_flights = get_similar_flights(departure_airport)
    # Trả về dữ liệu trong khóa 'similar_flights'
    return jsonify(similar_flights=similar_flights)


if __name__ == '__main__':
    app.run(port=8000)
