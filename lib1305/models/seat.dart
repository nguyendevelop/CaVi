class Seat {
  String seatNumber;
  String seatClass;
  String seatType;
  String seatStatus;
  double seatPrice;
  String flightCode;

  Seat({
    required this.seatNumber,
    required this.seatClass,
    required this.seatType,
    required this.seatStatus,
    required this.seatPrice,
    required this.flightCode,
  });
}


/** Document
id: định danh duy nhất của ghế.

flightId: định danh của chuyến bay tương ứng.

seatNumber: số hiệu của ghế trên chuyến bay.

deckLevel: tầng của ghế trên máy bay.

class: loại ghế (ví dụ: hạng thương gia, hạng phổ thông, v.v.).

position: vị trí của ghế trên máy bay.

isAvailable: trạng thái của ghế (ví dụ: đang trống, đã được đặt, v.v.).
 */