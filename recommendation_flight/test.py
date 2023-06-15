import requests

# API endpoint URL
url = 'http://localhost:8000/recommend'

# Chọn sân bay xuất phát
departure_airport = 'GDN'

# Gửi yêu cầu POST đến server Flask
response = requests.post(url, json={'departureAirport': departure_airport})

# Kiểm tra mã trạng thái của yêu cầu
if response.status_code == 200:
    # Chuyển đổi kết quả thành đối tượng JSON
    similar_flights = response.json()

    # Hiển thị kết quả đề xuất chuyến bay
    print('Các chuyến bay tương tự:')
    for flight in similar_flights:
        print(f"Flight Code: {flight['flightCode']}")
        print(f"Departure Date: {flight['departureDate']}")
        print(f"Departure Time: {flight['departureTime']}")
        print(f"Arrival Date: {flight['arrivalDate']}")
        print(f"Arrival Time: {flight['arrivalTime']}")
        print(f"Departure Airport: {flight['departureAirport']}")
        print(f"Arrival Airport: {flight['arrivalAirport']}")
        print(f"Available Seats: {flight['availableSeats']}")
        print(f"Ticket Price: {flight['ticketPrice']}")
        print(f"Airline Code: {flight['airlineCode']}")
        print(f"Airline Name: {flight['airlineName']}")
        print(f"Aircraft Type: {flight['aircraftType']}")
        print('----------------------')
else:
    print('Đã xảy ra lỗi khi gửi yêu cầu.')
