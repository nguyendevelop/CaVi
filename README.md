# CaVi
 Flight Booking Ticket (name: CaVi)

![](RackMultipart20230703-1-jgvit3_html_c1233be450c4e1f4.jpg)

TRƯỜNG CÔNG NGHỆ THÔNG TIN VÀ TRUYỀN THÔNG

VIỆT - HÀN

**Khoa Khoa Học Máy Tính**

![](RackMultipart20230703-1-jgvit3_html_2dda3eeae49c608d.png)

**MỤC LỤC**

# Trang

**[Chương 1](#_Toc137711005)****TỔNG QUAN 1**

[1.1Giới thiệu 1](#_Toc137711006)

[1.2Lý do chọn đề tài 2](#_Toc137711007)

[1.3Giải pháp 2](#_Toc137711008)

[1.4Mục tiêu 2](#_Toc137711009)

[1.5Phạm vi 2](#_Toc137711010)

[1.6Cấu trúc đồ án 2](#_Toc137711011)

**[Chương 2](#_Toc137711012)****CƠ SỞ LÝ THUYẾT 4**

[2.1Ngôn ngữ Dart và Framework Flutter 4](#_Toc137711013)

[2.1.1Giới thiệu ngôn ngữ Dart 4](#_Toc137711014)

[2.1.2Tìm hiểu về Flutter 4](#_Toc137711015)

[2.1.3Kiến trúc của Flutter 6](#_Toc137711016)

[2.1.4Quản lý trạng thái của Widget 8](#_Toc137711017)

[2.1.5Tìm hiểu thư viện Provider 8](#_Toc137711018)

[2.2Tìm hiểu Firebase 9](#_Toc137711019)

[2.2.1Giới thiệu 9](#_Toc137711020)

[2.2.2Ưu điểm 10](#_Toc137711021)

[2.2.3Nhược điểm 11](#_Toc137711022)

[2.3Tìm hiểu Vercel 12](#_Toc137711023)

[2.4Kiến trúc tổng quan 14](#_Toc137711024)

[2.4.1Giới thiệu mô hình MVVM 14](#_Toc137711025)

[2.4.2Ưu điểm của MVVM 15](#_Toc137711026)

[2.4.3Nhược điểmcủa MVVM 15](#_Toc137711027)

**[Chương 3](#_Toc137711028)****PHÂN TÍCH THIẾT KẾ DỮ LIỆU 16**

[3.1Phân tích yêu cầu hệ thống 16](#_Toc137711029)

[3.1.1Các yêu cầu chức năng 16](#_Toc137711030)

[3.1.2Các yêu cầu phi chức năng 16](#_Toc137711031)

[3.2Biểu đồ lớp 17](#_Toc137711032)

[3.3Biểu đồ tuần tự 18](#_Toc137711033)

[3.4Mô hình 19](#_Toc137711034)

[3.4.1Hướng tiếp cận 19](#_Toc137711035)

[3.4.2Tìm hiểu Content-Based Filtering 21](#_Toc137711036)

**[Chương 4](#_Toc137711037)****XỬ LÝ DỮ LIỆU VÀ THUẬT TOÁN 23**

[4.1Phân tích dữ liệu khám phá 23](#_Toc137711038)

[4.2Kế hoạch xây dựng dữ liệu 25](#_Toc137711039)

[4.2.1Thư viện faker 26](#_Toc137711040)

[4.2.2Thư viện requests 26](#_Toc137711041)

[4.2.3Thư viện random và datetime 27](#_Toc137711042)

[4.2.4Thư viện json 27](#_Toc137711043)

[4.3Tiền xử lý dữ liệu 28](#_Toc137711044)

[4.3.1Xây dựng dữ liệu cho bảng Flight 28](#_Toc137711045)

[4.3.2Làm sạch dữ liệu 31](#_Toc137711046)

[4.4Triển khai và sử dụng cosine similarity 32](#_Toc137711047)

[4.5Xây dựng thử nghiệm ứng dụng 36](#_Toc137711048)

[4.5.1Chức năng Đăng nhập 36](#_Toc137711049)

[4.5.2Chức năng Đăng ký 37](#_Toc137711050)

[4.5.3Màn hình chính 38](#_Toc137711051)

[4.5.4Màn hình Tìm kiếm và đặt vé 39](#_Toc137711052)

[4.5.5Màn hình Lịch sử đặt vé 47](#_Toc137711053)

[4.5.6Màn hình Cài đặt 48](#_Toc137711054)

**KẾT**  **LUẬN VÀ HƯỚNG PHÁT TRIỂN………………………………………….25**

1. KẾT QUẢ ĐẠT ĐƯỢC………………………………………………25
2. HẠN CHẾ…………………………………………………………….26
3. HƯỚNG PHÁT TRIỂN………………………………………………26

**DANH**  **MỤC TÀI LIỆU THAM KHẢO……………………………………………27**

**DANH**  **MỤC CÁC BẢNG**

[Bảng 4.1 - Dữ liệu mẫu cho một chuyến bay 23](#_Toc134303610)

**DANH**  **MỤC CÁC HÌNH**

[Hình 1.1 - Mẫu ứng dụng đặt vé máy bay hiện nay 1](#_Toc137711055)

[Hình 2.1 - Logo ngôn ngữ Dart 4](#_Toc137711056)

[Hình 2.2 - Logo framework Flutter 5](#_Toc137711057)

[Hình 2.3 - Các tính năng của Flutter 6](#_Toc137711058)

[Hình 2.4 - Kiến trúc Flutter 7](#_Toc137711059)

[Hình 2.5 - Logo Firebase 12](#_Toc137711060)

[Hình 2.6 - Logo Vercel 13](#_Toc137711061)

[Hình 2.7 - Các tầng mô hình MVVM 15](#_Toc137711062)

[Hình 3.1 - Biểu đồ lớp 17](#_Toc137711063)

[Hình 3.2 - Biểu đồ tuần tự 18](#_Toc137711064)

[Hình 3.3 - Hệ thống Recommender System chia thành 4 loại chính 20](#_Toc137711065)

[Hình 4.1 - Tạo dữ liệu cho bảng 'Flight' 29](#_Toc137711066)

[Hình 4.2 - Làm sạch dữ liệu Flight 31](#_Toc137711067)

[Hình 4.3 - Làm sạch dữ liệu Bank Account 31](#_Toc137711068)

[Hình 4.4 - Làm sạch dữ liệu Booking 31](#_Toc137711069)

[Hình 4.5 - Làm sạch dữ liệu Location 32](#_Toc137711070)

[Hình 4.6 - Làm sạch dữ liệu Passenger 32](#_Toc137711071)

[Hình 4.7 - Làm sạch dữ liệu Seat 32](#_Toc137711072)

[Hình 4.8 - Làm sạch dữ liệu Payment 32](#_Toc137711073)

[Hình 4.9 - Hàm tính toán get\_similar\_flights 33](#_Toc137711074)

[Hình 4.10 - Hàm trả về kết quả recommend\_flights 35](#_Toc137711075)

[Hình 4.11 - Thử nghiệm ứng dụng của Màn hình Đăng nhập 36](#_Toc137711076)

[Hình 4.12 - Thử nghiệm ứng dụng của Màn hình Đăng ký 37](#_Toc137711077)

[Hình 4.13 - Thử nghiệm ứng dụng của Màn hình chính 38](#_Toc137711078)

[Hình 4.14 - Thử nghiệm ứng dụng của Màn hình bước 1 39](#_Toc137711079)

[Hình 4.15 - Thử nghiệm ứng dụng của Màn hình chọn ngày bước 1 40](#_Toc137711080)

[Hình 4.16 - Thử nghiệm ứng dụng của Màn hình bước 2 41](#_Toc137711081)

[Hình 4.17 - Thử nghiệm ứng dụng của Màn hình chọn bước 2 42](#_Toc137711082)

[Hình 4.18 - Thử nghiệm ứng dụng của Màn hình bước 3 43](#_Toc137711083)

[Hình 4.19 - Thử nghiệm ứng dụng của Màn hình bước 4 44](#_Toc137711084)

[Hình 4.20 - Thử nghiệm ứng dụng của Màn hình bước 5 45](#_Toc137711085)

[Hình 4.21 - Thử nghiệm ứng dụng của Màn hình hoàn tất các bước 46](#_Toc137711086)

[Hình 4.22 - Thử nghiệm ứng dụng của Màn hình Lịch sử đặt vé 47](#_Toc137711087)

[Hình 4.23 - Thử nghiệm ứng dụng của Màn hình Cài đặt 48](#_Toc137711088)

**DANH MỤC CỤM TỪ VIẾT TẮT**

| **VIẾT TẮT** | **NỘI DUNG** |
| --- | --- |
| CNTT | Công nghệ thông tin |
| Obj-C | Objective-C |
| dev | developer |
| MVVM | Model - View - ViewModel |
| API | Application Programming Interface |
| BLoC | Business Logic Component |
| AOT | Just In Time |
| JIT | Just In Time |

# Chương 1 TỔNG QUAN

## 1.1Giới thiệu

Một hãng hàng không cần xây dựng một ứng dụng phần mềm nhằm quản lý hoạt động của công ty. Hệ thống cho phép đặt chỗ trước bằng cách gọi điện thoại hoặc trực tiếp. Khi khách hàng có nhu cầu đăng ký vé máy bay thì khách hàng liên hệ với hãng để tiến hành làm thủ tục đăng ký. Khi khách hàng làm thủ tục đăng ký phải cung cấp thông tin về mình: Họ tên, giới tính, số chứng minh nhân dân – hộ chiếu, địa chỉ, điện thoại – fax (nếu có), Email (nếu có). Trong khoảng thời gian 24h từ lúc đặt vé, anh ta có thể hủy hoặc đổi chuyến bay.

![](RackMultipart20230703-1-jgvit3_html_d15fd341f3a263b7.jpg)

**Hình 1.1 - Mẫu ứng dụng đặt vé máy bay hiện nay**

## 1.2Lý do chọn đề tài

Người dùng thường cố gắng tìm các ứng dụng miễn phí có chức năng tương tự để hỗ trợ trong việc kinh doanh. Với sự phát triển của công nghệ thông tin đối với ngành Hàng không thì một ứng dụng đặt vé máy bay ngoài những chức năng cơ bản cần có thêm các tính năng thông minh trên ứng dụng như: Đề xuất chuyến bay, đề xuất chỗ ngồi, đề xuất địa điểm. Ngoài ra, nhà phát triển ứng dụng cần phải tối ưu chạy trên các nền tảng khác nhau như: Web, Android, iOS, macOS, iPadOS.

## 1.3Giải pháp

Đối với ngành hàng không nói riêng, việc xây dựng một hệ thống giúp hỗ trợ cho các hoạt động kinh doanh, quản lý là không thể thiếu. Hoạtđộng của một đại lý bán vé máy bay sẽ càng được tăng cường và mở rộngnếu xây dựng được một hệ thống tốt. Nhận thấy nhu cầu đi lại của hànhkhách bằng phương tiện máy bay ngày 1 tăng, mà nếu mua theo cáchthông thường thì sẽ rất tốn thời gian, công sức. Bắt nguồn từ ý tưởng này tôi đã thực hiện đề tài "Hệ thống ứng dụng đặt vé máy bay thông minh"

## 1.4Mục tiêu

- Hỗ trợ khách hàng sử dụng ứng dụng mọi nền tảng khác nhau.
- Chức năng thể bao gồm: quản lý dữ liệu chuyến bay (trong nước và ngoài nước), đăng ký, đăng nhập, đặt vé tự động, kết hợp nhiều dữ liệu hàng không cùng lúc, … một cách tối ưu, thuận tiện và nhanh chóng hơn.
- Giúp người dùng có thể an tâm đặt vé máy bay, lựa chọn các chuyến bay phù hợp với nhu cầu của mình trong khung giờ chuyến bay muốn lựa chọn tại bất cứ nơi nào.
- Tự động hoá việc đặt vé.

## 1.5Phạm vi

Do thời gian thực hiện đồ án có hạn, việc thực hiện đề tài "Hệ thống ứng dụng đặt vé máy bay thông minh" sẽ tập trung vào các chức năng cơ bản và phân tích ứng dụng thuật toán Recommendation system để phù hợp với đề tài.

## 1.6Cấu trúc đồ án

Dưới đây báo cáo được trình bày trong 4 chương, cụ thể như sau:

Chương 1: Tổng quan. Trong chương này, báo cáo trình bày các mục tiêu, lý do chọn đề tài, mục đích nghiên cứu, ý nghĩa khoa học

Chương 2: Cơ sở lý thuyết. Trong chương này, báo cáo trình bày các khái niệm, phương pháp kết quả

Chương 3: Phân tích và xây dựng hệ thống. Bao gồm các tài liệu liên quan đến quá trình phân tích hệ thống như: phân tích các yêu cầu chức năng và phi chức năng

Chương 4: Triển khai thực hiện. Kiểm thử ứng dụng trên thực tế

Chương 5: Kết luận và hướng phát triển. Đưa ra kết luận và đề xuất các hướng mở rộng, phát triển trong tương lai

Cuối cùng là Danh mục tài liệu tham khảo liên quan đến đề tài.

# Chương 2 CƠ SỞ LÝ THUYẾT

## 2.1Ngôn ngữ Dart và Framework Flutter

### 2.1.1Giới thiệu ngôn ngữ Dart

- Dart là một ngôn ngữ lập trình hướng đối tượng mã nguồn mở, có mục đích chung với cú pháp kiểu C do Google phát triển vào năm 2011. Mục đích của lập trình Dart là tạo giao diện người dùng frontend cho web và ứng dụng dành cho thiết bị di động. Nó đang được phát triển tích cực, được biên dịch sang mã máy gốc để xây dựng ứng dụng di động, lấy cảm hứng từ các ngôn ngữ lập trình khác như Java, JavaScript, C # và Typed mạnh. Vì Dart là một ngôn ngữ biên dịch nên bạn không thể thực thi code của mình trực tiếp; thay vào đó, trình biên dịch phân tích cú pháp nó và chuyển nó thành code máy.
- Nó hỗ trợ hầu hết các khái niệm chung của ngôn ngữ lập trình như lớp, giao diện, hàm, không giống như các ngôn ngữ lập trình khác. Ngôn ngữ Dart không hỗ trợ mảng trực tiếp. Nó hỗ trợ tập hợp, được sử dụng để sao chép cấu trúc dữ liệu như mảng, generic và kiểu tùy chọn.

![](RackMultipart20230703-1-jgvit3_html_c368c57c09fade60.png)

**Hình 2.1 - Logo ngôn ngữ Dart**

### 2.1.2Tìm hiểu về Flutter

- Với sự gia tăng đáng kinh ngạc của sự phát triển ứng dụng di động trong thập kỷ qua, iOS và Android đã trở thành những hệ điều hành hàng đầu. Điều này dẫn đến sự trỗi dậy của toàn bộ ngành công nghiệp với một số framework cho phép các nhà phát triển xây ứng dụng di động. Hầu hết các framework phát triển di động này được xây dựng để hỗ trợ phát triển ứng dụng kết hợp tương thích với cả iOS và Android. Google đã đưa ra một bộ công cụ phát triển phần mềm giao diện người dùng mã nguồn mở Flutter, được công bố lần đầu tiên vào năm 2015 và chính thức ra mắt vào năm 2017.
- Để tạo ra một ứng dụng di động là một công việc rất phức tạp và đầy thử thách. Có rất nhiều framework có sẵn, cung cấp các tính năng tuyệt vời để phát triển các ứng dụng di động. Để phát triển các ứng dụng dành cho thiết bị di động, Android cung cấp một framework gốc dựa trên ngôn ngữ Java và Kotlin, trong khi iOS cung cấp một framework dựa trên ngôn ngữ Objective-C / Swift. Vì vậy, chúng ta cần hai ngôn ngữ và framework khác nhau để phát triển ứng dụng cho cả hai hệ điều hành. Ngày nay, để khắc phục sự phức tạp này, có một số framework đã được giới thiệu hỗ trợ cả hệ điều hành cùng với các ứng dụng dành cho máy tính để bàn. Những loại framework này được gọi là công cụ phát triển đa nền tảng.
- Flutter đã thu hút được sự chú ý của cộng đồng các nhà phát triển bằng cách giới thiệu các style cho phép việc xây dựng UI đẹp hơn và biểu cảm hơn vì thế mà việc code cũng trở nên thú vị hơn nhiều. Nó kết hợp một số khái niệm quen thuộc với những kinh nghiệm phát triển hiện đại như lập trình reactive và widget composition trong khi sử dụng nền tảng Dart làm cơ sở chính cho các hoạt động đó.

![](RackMultipart20230703-1-jgvit3_html_9aca07a681cea564.png)

**Hình 2.2 - Logo framework Flutter**

- Flutter cung cấp các phương pháp dễ dàng và đơn giản để bắt đầu xây dựng các ứng dụng dành cho thiết bị di động và máy tính để bàn đẹp mắt với một bộ thiết kế material design và widget phong phú. Dưới đây là các tính năng chính của nó để phát triển framework di động:

- Code nguồn mở (Open-Source): Flutter là một framework code nguồn mở và miễn phí để phát triển các ứng dụng di động.
- Đa nền tảng (Cross-platform): Tính năng này cho phép Flutter viết code một lần, duy trì và có thể chạy trên các nền tảng khác nhau. Nó tiết kiệm thời gian, công sức và tiền bạc của các nhà phát triển.
- Tải lại nóng (Hot Reload): Bất cứ khi nào nhà phát triển thực hiện thay đổi trong code, thì những thay đổi này có thể được nhìn thấy ngay lập tức với Tải lại nóng. Nó có nghĩa là những thay đổi hiển thị ngay lập tức trong chính ứng dụng. Đây là một tính năng rất tiện dụng, cho phép nhà phát triển sửa các lỗi ngay lập tức.
- Các tính năng và SDK gốc có thể truy cập (Accessible Native Features and SDKs): Tính năng này cho phép quá trình phát triển ứng dụng dễ dàng và thú vị thông qua code gốc của Flutter, tích hợp bên thứ ba và các API nền tảng. Do đó, chúng tôi có thể dễ dàng truy cập SDK trên cả hai nền tảng.
- Code tối thiểu (Minimal code): Ứng dụng Flutter được phát triển bởi ngôn ngữ lập trình Dart, sử dụng biên dịch JIT và AOT để cải thiện thời gian khởi động tổng thể, hoạt động và tăng tốc hiệu suất. JIT nâng cao hệ thống phát triển và làm mới giao diện người dùng mà không cần nỗ lực thêm vào việc xây dựng hệ thống mới.
- Widget: framework công tác Flutter cung cấp các widget có khả năng phát triển các thiết kế cụ thể có thể tùy chỉnh. Quan trọng nhất, Flutter có hai bộ widget: Material Design và các widget Cupertino giúp mang lại trải nghiệm không có trục trặc trên tất cả các nền tảng.

![](RackMultipart20230703-1-jgvit3_html_f11dd9aa8efd90cf.png)

**Hình 2.3 - Các tính năng của Flutter**

### 2.1.3Kiến trúc của Flutter

Trong phần này, chúng ta sẽ thảo luận về kiến trúc của Flutter framework. Kiến trúc Flutter chủ yếu bao gồm bốn thành phần:

- Động cơ Flutter (Flutter Engine): Nó là một cổng để giúp chạy các ứng dụng di động chất lượng cao và cơ bản dựa trên ngôn ngữ C ++. Nó triển khai các thư viện lõi Flutter bao gồm animation và đồ họa, tệp và mạng I / O, kiến trúc plugin, hỗ trợ trợ năng và thời gian chạy dart để phát triển, biên dịch và chạy các ứng dụng Flutter. Phải sử dụng thư viện đồ họa mã nguồn mở của Google, Skia, để hiển thị đồ họa cấp thấp.
- Thư viện nền tảng (Foundation Library): Nó chứa tất cả các gói cần thiết cho các khối build cơ bản để viết một ứng dụng Flutter. Các thư viện này được viết bằng ngôn ngữ Dart.
- Vật dụng (Widgets): Trong Flutter, mọi thứ đều là một widget, đó là khái niệm cốt lõi của framework. Widget trong Flutter về cơ bản là một thành phần giao diện người dùng ảnh hưởng và kiểm soát chế độ xem và giao diện của ứng dụng. Nó đại diện cho một mô tả bất biến về một phần của giao diện người dùng và bao gồm đồ họa, văn bản, hình dạng và animation được tạo bằng các widget. Các widget tương tự như các thành phần React. Trong Flutter, ứng dụng tự nó là một widget chứa nhiều widget con. Điều đó có nghĩa rằng ứng dụng là tiện ích con cấp cao nhất và giao diện người dùng của nó được xây dựng bằng cách sử dụng một hoặc nhiều tiện ích con, bao gồm các tiện ích con phụ. Tính năng này giúp bạn tạo một giao diện người dùng phức tạp rất dễ dàng. Ví dụ dưới đây có thể thấy rằng tất cả các thành phần đều là các widget có chứa các widget con

![](RackMultipart20230703-1-jgvit3_html_2fb5ead6c11f5085.png)

**Hình 2.4 - Kiến trúc Flutter**

- Thiết kế các widget cụ thể (Design Specific Widgets): Framework Flutter có hai bộ widget phù hợp với các ngôn ngữ thiết kế cụ thể. Đây là Material Design cho ứng dụng Android và Cupertino Style cho ứng dụng IOS.

### 2.1.4Quản lý trạng thái của Widget

- Flutter là một framework phát triển ứng dụng di động được phát triển bởi Google. Quản lý trạng thái (state management) là một phần quan trọng trong quá trình phát triển ứng dụng Flutter. Nó cho phép lưu trữ và cập nhật dữ liệu của ứng dụng và đồng bộ hóa chúng giữa các thành phần khác nhau trong ứng dụng.
- Flutter cung cấp một số cách để quản lý trạng thái, bao gồm:

- SetState: Đây là cách đơn giản nhất để quản lý trạng thái trong Flutter. SetState được sử dụng để cập nhật trạng thái của widget khi widget có thay đổi. Tuy nhiên, nếu ứng dụng của bạn phức tạp hơn, sử dụng SetState có thể dẫn đến việc quản lý trạng thái khó khăn.
- Provider: Đây là một thư viện được cung cấp bởi Flutter, giúp quản lý trạng thái dễ dàng hơn. Provider sử dụng mô hình MVVM (Model-View-ViewModel) để quản lý trạng thái và cung cấp dữ liệu cho widget. Nó cho phép các widget con truy cập vào trạng thái của cha của chúng.
- BLoC (Business Logic Component): Đây là một thư viện nâng cao để quản lý trạng thái trong Flutter. Bloc sử dụng mô hình BLoC để quản lý trạng thái và xử lý logic của ứng dụng. Nó cho phép phân tách hoàn toàn trạng thái và giao diện, giúp cho mã ứng dụng dễ bảo trì và mở rộng.
- Redux: Đây là một thư viện được phát triển bởi cộng đồng Flutter. Redux sử dụng mô hình Flux để quản lý trạng thái và dữ liệu của ứng dụng. Nó cho phép các thành phần khác nhau của ứng dụng truy cập vào trạng thái và dữ liệu cùng một cách.

### 2.1.5Tìm hiểu thư viện Provider

- Trong Flutter, "Provider" là một gói thư viện quan trọng để quản lý trạng thái và chia sẻ dữ liệu trong ứng dụng. Provider giúp bạn xây dựng kiến trúc ứng dụng theo mô hình quản lý trạng thái và hỗ trợ việc truyền dữ liệu giữa các widget trong cây widget một cách hiệu quả.
- Provider có các thành phần chính sau:

- **ChangeNotifier** : Là một class trừu tượng trong Flutter, được sử dụng để định nghĩa một đối tượng có khả năng thông báo về sự thay đổi trong dữ liệu của nó. Khi dữ liệu trong ChangeNotifier thay đổi, nó thông báo cho các người tiêu dùng (listeners) để cập nhật giao diện người dùng.
- **Provider** : Là một widget trong Flutter, được sử dụng để cung cấp dữ liệu từ một ChangeNotifier đến các widget con của nó. Provider đảm bảo rằng các widget con có thể truy cập và theo dõi các thay đổi trong dữ liệu được cung cấp một cách tự động.
- **Consumer** : Là một widget trong Flutter, được sử dụng để tiêu thụ dữ liệu từ một Provider và cập nhật giao diện người dùng khi dữ liệu thay đổi. Consumer sẽ tự động xây dựng lại các widget con bên trong nó khi có sự thay đổi trong dữ liệu.
- **MultiProvider** : Là một widget trong Flutter, cho phép bạn cung cấp nhiều Provider cùng một lúc. Điều này giúp bạn tổ chức và quản lý dữ liệu trạng thái của ứng dụng một cách dễ dàng.

- Với Provider, bạn có thể tạo và quản lý trạng thái của ứng dụng từ một nơi tập trung (centralized state management), giúp giảm thiểu sự phức tạp và tăng khả năng tái sử dụng của mã. Bằng cách sử dụng Provider, bạn có thể truyền dữ liệu giữa các widget một cách linh hoạt và hiệu quả, mà không cần phải truyền dữ liệu qua các tham số của widget.
- Provider là một công cụ rất phổ biến trong cộng đồng Flutter và được sử dụng rộng rãi trong việc quản lý trạng thái ứng dụng.Những phương pháp này có ưu điểm và hạn chế riêng. Lựa chọn cách quản lý trạng thái phù hợp sẽ giúp cho quá trình phát triển ứng dụng Flutter dễ dàng và hiệu quả hơn. Đối với đề tài này tôi sử dụng thư viện Provider để quản lý trạng thái ứng dụng.

## 2.2Tìm hiểu Firebase

### 2.2.1Giới thiệu

- Firebase là một nền tảng ứng dụng di động và web với các công cụ và hạ tầng được thiết kế để giúp các lập trình viên xây dựng các ứng dụng chất lượng cao. Nói ngắn gọn, thay vì trực tiếp cung cấp các ứng dụng, họ cung cấp các dịch vụ nền tảng cho các lập trình viên, chính là các bạn, sử dụng để xây dựng ứng dụng cũng như hỗ trợ các bạn tối ưu hóa, tối đa hóa ứng dụng của mình. Với nhiều dịch vụ chất lượng cao đi kèm mức giá phải chăng, Firebase đã và đang, không chỉ là sự lựa chọn hàng đầu cho các lập trình viên đơn thân (single dev) hay các công ty khởi nghiệp (start ups), mà các công ty, tổ chức lớn có tên tuổi cũng sử dụng "Ngọn lửa" để xây dựng các tính năng, các chương trình mới, cũng như chuyển đổi các dịch vụ trước đây sang hệ thống của Firebase. Chẳng hạn như Shazam, Fabulous và cả chính Google nữa, khi nền tảng nhắn tin Allo được xây dựng trên nền tảng Firebase Realtime Database.
- Về mặt lịch sử, Firebase (tiền thân là Evolve) trước đây là một start up được thành lập vào năm 2011 bởi Andrew Lee và James Tamplin. Ban đầu, Evolve chỉ cung cấp cơ sở dữ liệu để các lập trình viên thiết kế các ứng dụng chat (và hiện tại thì để làm quen với realtime db thì bạn cũng làm ứng dụng chat đó thôi). Tuy nhiên, họ nhanh chóng nhận ra tiềm năng sản phẩm của mình khi nhận thấy các khách hàng không sử dụng CSDL để làm ứng dụng chat, mà thay vào đó, để lưu các thông tin như game progress. Bộ đôi Lee và Tamplin quyết định tách mảng realtime ra để thành lập một công ty độc lập – chính là Firebase – vào tháng 4 năm 2012. Sau nhiều lần huy động vốn và gặt hái được những thành công nổi bật, Firebase đã được Google để ý. Vào tháng 10 năm 2014, Firebase gia nhập gia đình Google.
- Cả Google và Firebase đều như hổ mọc thêm cánh. Firebase có điều kiện để phát triển thần tốc, mở rộng số lượng các dịch vụ con, còn Google có được một đội ngũ nhân lực chất lượng cao, năng động, cũng như cơ sở hạ tầng và sự hiệu quả mà các dịch vụ của Firebase mang lại, mà không phải xây dựng lại từ đầu. Hiện tại, Google đã chuyển các dịch vụ nền tảng hỗ trợ các lập trình viên bên ngoài về cho Firebase quản lí, chẳng hạn như Cloud Messaging, AdMob và Analytics.
- Firebase, theo hướng đi của Google, chính thức hỗ trợ Android, iOS và Web. Thực tế, macOS cũng được hỗ trợ vì macOS chia sẻ nhiều dòng code với iOS, song vì Google và Firebase muốn sử dụng web cho ứng dụng desktop thay vì native, nên có khá ít tài liệu chính thức nói về Firebase cho macOS, cũng như các thư viện cho macOS có thể kém chức năng và không ổn định lắm. Còn về Windows, hiện tại tôi chưa thấy họ lên tiếng nào về việc sẽ chính thức phát hành thư viện cho đứa con của Microsoft, nên nếu các bạn muốn làm ứng dụng cho Windows (UWP) thì chỉ nên (và cũng chỉ có mỗi con đường) làm web-based native apps mà thôi.

### 2.2.2Ưu điểm

- Sử dụng dễ dàng: Những người dùng có thể đăng ký một tài khoản Firebase thông qua tài khoản Google. Đồng thời, người cùng cũng có thể sử dụng nền tảng này trong quá trình phát triển ứng dụng một cách đơn giản nhất.
- Tốc độ phát triển nhanh: Ưu điểm tiếp theo chính là Firebase hỗ trợ cho việc phát triển ứng dụng rất nhanh chóng. Điều này sẽ giúp lập trình viên giảm bớt được thời gian để phát triển cũng như tiếp thị ứng dụng.
- Cung cấp nhiều dịch vụ: Firebase còn cung cấp đa dịch vụ cho mục đích phát triển trang web. Người dùng có thể lựa chọn database Firestore hoặc Realtime theo đúng ý muốn của mình.
- Nền tảng cho Google phát triển: google firebase là gì? Firebase được Google mua lại và trở thành một phần của Google. Ứng dụng này sẽ khai thác được triệt để sức mạnh cũng như các dịch vụ hiện đang sẵn có của Google.
- Giao diện người dùng được chú trọng: Firebase sẽ cho phép các lập trình viên tập trung hơn vào việc phát triển giao diện của người dùng thông qua kho Backend mẫu vô cùng đa dạng.
- Firebase app không có máy chủ: Chính điều này sẽ giúp cho Firebase có được khả năng tối ưu hóa nhất về hiệu suất làm việc nhờ vào việc mở rộng cụm database.
- Học máy: Ứng dụng Firebase sẽ cung cấp học máy cho các lập trình viên để hỗ trợ tốt nhất cho việc phát triển ứng dụng.
- Tạo lưu lượng truy cập: Firebase App sẽ hỗ trợ việc tạo lập các chỉ mục. Đồng thời, Firebase cũng sẽ giúp nâng cao thứ hạng của ứng dụng ở trên bảng xếp hạng của Google. Nhờ vậy mà lượt traffic sẽ tăng lên.
- Theo dõi lỗi: Đây là một công cụ để phát triển cũng như khắc phục lỗi vô cùng tuyệt vời. Nhờ vậy khi sử dụng, bạn không cần lo lắng mình sẽ để sót lỗi.
- Chức năng sao lưu: cách sử dụng firebase sao lưu một cách thường xuyên và đảm bảo tính sẵn có. Đồng thời, chức năng này cũng giúp cho thông tin và dữ liệu được bảo mật một cách an toàn nhất.

### 2.2.3Nhược điểm

- Firebase không là mã nguồn mở: Điều này sẽ giúp cho ứng dụng trở thành một lựa chọn không quá tối ưu đối với nhiều nhà phát triển. Người dùng không thể sửa đổi được mã nguồn Firebase.
- Người dùng không truy cập được mã nguồn: Đối với những ứng dụng lớn thì việc chuyển đổi sang các nhà cung cấp khác thực sự không dễ dàng. Để làm được điều này thì toàn bộ Backend cần phải được xây dựng lại từ đầu.
- Nền tảng không hoạt động nhiều quốc gia: Firebase chính là một Subdomain của Google.Trang web chính thức của Firebase hiện tại đang bị chặn ở nhiều quốc gia trên thế giới, trong đó có cả Trung Quốc.
- Firebase chỉ hoạt động với CSDL NoSQL: Người dùng sẽ không thể xử lý được dữ liệu một cách nhanh chóng. Firebase chỉ sử dụng JSON và hầu như không có SQL. Chính vì vậy, để di chuyển từ cơ sở dữ liệu sẽ không hề dễ dàng.
- Firebase chỉ chạy trên Google Cloud: Firebase trở thành một phần của Google và tất cả cơ sở hạ tầng của ứng dụng đều hoạt động trên Google Cloud. Người dùng không thể chạy ứng dụng trên những đơn vị cung cấp đám mây khác.
- Truy vấn khám chậm: Không phải các cơ sở dữ liệu đều phù hợp cho mọi trường hợp và tất nhiên Cloud Firestore cũng không là ngoại lệ. Điều này khiến bạn rất mất thời gian khi sử dụng ứng dụng.
- Các dịch vụ cung cấp không phải đều miễn phí: Không phải tất cả các dịch vụ được cung cấp đều miễn phí. Các chức năng trên đám mây sẽ chỉ có thể khả dụng trên gói Blaze và dĩ nhiên người dùng cũng không thể sử dụng được các dịch vụ ở trong gói Spark.
- Giá sử dụng dịch vụ Firebase khá cao: Firebase sẽ cung cấp cho người dùng rất nhiều tính năng hữu ích nhưng giá thành của chúng cũng cao hơn so với nhà cung cấp IaaS thuần túy.
- Thiếu hợp đồng doanh nghiệp: Firebase không có những tùy chọn Dedicated Servers hoặc các hợp đồng doanh nghiệp. Để có thể sử dụng được Firebase chính là sử dụng cấu trúc Serverless ít linh hoạt hơn.
- Không cung cấp API GraphQL: Ứng dụng không cung cấp API GraphQL tương tự như một phần của quá trình thiết lập tiêu chuẩn. Mặc dù còn có những giải pháp thay thế khác thế nhưng REST vẫn là một tùy chọn mặc định của nền tảng này.

![](RackMultipart20230703-1-jgvit3_html_9ceafe443daccfd2.jpg)

**Hình 2.5 - Logo Firebase**

## 2.3Tìm hiểu Vercel

- Vercel là một nền tảng đám mây cho phép bạn triển khai trang web một cách nhanh chóng và dễ dàng.Vercel cung cấp rất nhiều tính năng hữu ích như hệ thống CI/CD, serverless function, môi trường phát triển,… Bạn có thể sử dụng các tính năng này để triển khai trang web của mình một cách chuyên nghiệp hơn.

![](RackMultipart20230703-1-jgvit3_html_6e43e5843c6c3d3e.jpg)

**Hình 2.6 - Logo Vercel**

- Vercel là một nền tảng đám mây được sử dụng cho phát triển các trang web tĩnh và serverless. Một số tính năng chính của Vercel bao gồm:

- Deploy nhanh: Vercel cung cấp thời gian phản hồi ngắn và đến 20 lần tốc độ nhanh hơn so với các nền tảng khác.
- Hỗ trợ đa ngôn ngữ: Vercel hỗ trợ nhiều ngôn ngữ lập trình phổ biến như JavaScript, Python, Go, Ruby, PHP và nhiều hơn nữa.
- Tích hợp dịch vụ: Vercel tích hợp được với các dịch vụ phổ biến như GitHub, GitLab và Bitbucket để giúp dễ dàng quản lý mã nguồn và triển khai.
- Tự động mở rộng: Vercel sử dụng công nghệ điều khiển tải tự động để đảm bảo ứng dụng của bạn luôn hoạt động tốt và không bị quá tải.
- Tích hợp Slack: Vercel cung cấp tích hợp Slack để giúp bạn theo dõi các sự kiện quan trọng trong quá trình triển khai.

- Vercel là một platform phát triển web và mobile được thiết kế để giúp giảm thiểu thời gian và tăng tốc độ phát triển ứng dụng của bạn. Như vậy, nó cũng là một công cụ tốt cho việc phát triển ứng dụng di động. Dưới đây là một số lý do tại sao Vercel app có thể là lựa chọn tốt cho việc phát triển ứng dụng di động của bạn:

- Hỗ trợ cross-platform: Vercel cho phép bạn phát triển ứng dụng cross-platform, tức là các ứng dụng có thể chạy trên nhiều nền tảng khác nhau một cách dễ dàng.
- Tốc độ và hiệu suất: Vercel có thể giúp tăng tốc độ và hiệu suất phát triển của ứng dụng của bạn bằng cách sử dụng các công nghệ như Next.js và serverless functions.
- Quản lý đa tầng và dịch vụ: Vercel cung cấp cho người dùng các tính năng quản lý đa tầng và dịch vụ để giúp tăng cường hiệu suất và tin cậy của ứng dụng của bạn.
- Các tính năng tích hợp: Vercel cung cấp nhiều tính năng tích hợp để giúp bạn quản lý ứng dụng của mình một cách dễ dàng, bao gồm tích hợp các công cụ DevOps và quản lý code.

- Với những tính năng này, Vercel là một lựa chọn tuyệt vời cho việc triển khai các trang web tĩnh nhanh chóng và dễ dàng.

## 2.4Kiến trúc tổng quan

### 2.4.1Giới thiệu mô hình MVVM

- MVVM là viết tắt của Model - View - ViewModel, đây là mô hình hỗ trợ two-way data binding giữa View và View Model. Cụ thể mô hình MVVM được trình bày như sau:

- View: Tương tự như trong mô hình MVC, View là phần giao diện của ứng dụng để hiển thị dữ liệu và nhận tương tác của người dùng. Một điểm khác biệt so với các ứng dụng truyền thống là View trong mô hình này tích cực hơn. Nó có khả năng thực hiện các hành vi và phản hồi lại người dùng thông qua tính năng binding, command.
- Model: Cũng tương tự như trong mô hình MVC. Model là các đối tượng giúp truy xuất và thao tác trên dữ liệu thực sự.
- ViewModel: Lớp trung gian giữa View và Model. ViewModel có thể được xem là thành phần thay thế cho Controller trong mô hình MVC. Nó chứa các mã lệnh cần thiết để thực hiện data binding, command.

- Trong các mô hình truyền thống, chúng ta thường xử lý sự kiện Click và viết mã thực thi trực tiếp ở trên một Button nhưng với mô hình MVVM không cho phép làm điều này.
- Trong mô hình MVVM, các điều khiển (control) như Button, ListView, SearchBar, ... không thể kết buộc trực tiếp đến dữ liệu mà phải thông qua thuộc tính Command – là một thuộc tính kiểu ICommand.
- Một điểm cần lưu ý là trong mô hình MVVM, các tầng bên dưới sẽ không biết được các thông tin gì về tầng bên trên nó. Như hình minh họa dưới đây:

![](RackMultipart20230703-1-jgvit3_html_fcd3dab7b8b4121a.png)

**Hình 2.7 - Các tầng mô hình MVVM**

### 2.4.2Ưu điểm của MVVM

- Thực hiện Unit testing bây giờ sẽ rất dễ dàng, vì bạn thực sự không phụ thuộc vào view.
- MVVM sẽ tạo sự tương tác hiệu quả giữa designer và developer.
- Tăng khả năng sử dụng lại các thành phần hay việc thay đổi giao diện chương trình mà không cần phải viết lại code quá nhiều.
- Phát triển ứng dụng nhanh, đơn giản, dễ nâng cấp, bảo trì…

### 2.4.3Nhược điểmcủa MVVM

- Khả năng duy trì khi view có thể gán cả biến và biểu thức, các logic không liên quan sẽ tăng dần theo thời gian, ảnh hưởng đến việc thêm code vào XML.
- Đối với dự án nhỏ việc áp dụng mô hình MVVM gây cồng kềnh, tốn thời gian trong quá trình phát triển. Tốn thời gian trung chuyển dữ liệu của các thành phần.
- Đối với dự án lớn hơn, nó gây khó khăn và mất thời gian để thiết kế các ViewModel.
- Việc liên kết dữ liệu cho tất cả các thành phần gây khó khăn trong việc debug khi cơ sở dữ liệu phức tạp.

# Chương 3 PHÂN TÍCH THIẾT KẾ DỮ LIỆU

## 3.1Phân tích yêu cầu hệ thống

### 3.1.1Các yêu cầu chức năng

Để phát triển dự án đặt vé máy bay, bạn cần có các model dữ liệu sau:

- Chuyến bay (Flight): Lưu trữ thông tin về một chuyến bay, bao gồm mã chuyến bay, ngày bay, thời gian khởi hành, thời gian đến, sân bay đi, sân bay đến, số ghế trống, giá vé và các thông tin khác.
- Hành khách (Passenger): Lưu trữ thông tin về hành khách, bao gồm tên, địa chỉ, số điện thoại, email và các thông tin khác.
- Đơn đặt vé (Booking): Lưu trữ thông tin về đơn đặt vé, bao gồm mã đơn hàng, thông tin hành khách, thông tin chuyến bay, tổng giá tiền và các thông tin khác.
- Phương thức thanh toán (Payment Method): Lưu trữ thông tin về phương thức thanh toán, bao gồm tên phương thức, thông tin tài khoản và các thông tin khác.
- Địa điểm (Location): Lưu trữ thông tin về địa điểm, bao gồm tên địa điểm, mã địa điểm và các thông tin khác.
- Tài khoản ngân hàng (Bank Account): Lưu trữ thông tin về tài khoản ngân hàng, bao gồm tên ngân hàng, số tài khoản, tên chủ tài khoản và các thông tin khác.
- Chuyến bay quốc tế (International Flight): Tương tự như model Chuyến bay (Flight), nhưng bổ sung các thông tin về hộ chiếu, visa và các thông tin khác liên quan đến quá trình xuất nhập cảnh.
- Đơn đặt vé quốc tế (International Booking): Tương tự như model Đơn đặt vé (Booking), nhưng bổ sung các thông tin về hộ chiếu, visa và các thông tin khác liên quan đến quá trình xuất nhập cảnh.
- Chỗ ngồi (Seat): Lưu trữ thông tin về ghế ngồi, bao gồm số thứ tự ghế, hạng ghế, loại ghế, trạng thái ghế, giá ghế, thông tin chuyến bay.

### 3.1.2Các yêu cầu phi chức năng

- Nhằm lợi ích của các đối tượng người dùng:

- Tính tiện dụng: Giao diện thân thiện, dễ sử dụng đối với những người dùng Web và Mobile.
- Tính hiệu quả: Đảm bảo việc truy xuất nhanh đến các trang và khả năng kiểm soát lỗi tốt.
- Tính tương thích: Hỗ trợ trên các nền tảng khác nhau như: Web, Android, iOS, macOS, iPadOS.
- Hiệu suất: Hệ thống phải hỗ trợ hàng chục người cùng truy cập đến cơ sở dữ liệu trung tâm đồng thời bất kỳ lúc nào.

- Nhằm lợi ích của việc phát triển đồ án:

- Thiết kế theo mô hình MVVM.
- Tính module hóa.
- Các tham số của hệ thống được thiết kế động, dễ điều chỉnh.
- Tính dùng lại của code.

## 3.2Biểu đồ lớp

![](RackMultipart20230703-1-jgvit3_html_2866b905ef7ab7c6.png)

**Hình 3.1 - Biểu đồ lớp**

## 3.3Biểu đồ tuần tự

![](RackMultipart20230703-1-jgvit3_html_b5d8f14dbf655332.png)

**Hình 3.2 - Biểu đồ tuần tự**

Giải thích:

1. Người dùng (User)): Người sử dụng tương tác với hệ thống đặt vé máy bay.
2. Hệ thống đặt vé máy bay (FBS): Chính là hệ thống đặt vé máy bay.
3. Chuyến bay (Flight): Đại diện cho thông tin về các chuyến bay có sẵn.
4. Hành khách (Passenger): Đại diện cho thông tin của hành khách, bao gồm tên, địa chỉ, số điện thoại, email và số hộ chiếu.
5. Đặt chỗ (Booking): Đại diện cho quá trình tạo đơn đặt chỗ, bao gồm mã đặt chỗ, mã chuyến bay, ID hành khách, tổng số tiền, phương thức thanh toán và thông tin về ghế.
6. Phương thức thanh toán (Payment Method): Đại diện cho các phương thức thanh toán có sẵn, bao gồm tài khoản ngân hàng, số thẻ và chủ thẻ.
7. Tài khoản ngân hàng (Bank Account): Đại diện cho thông tin tài khoản ngân hàng, bao gồm tên ngân hàng, số tài khoản và chủ tài khoản.

Trình tự hoạt động của hệ thống như sau:

1. Người dùng chọn các chi tiết về chuyến bay mà họ muốn đặt.
2. Hệ thống đặt vé máy bay tìm kiếm các chuyến bay phù hợp dựa trên yêu cầu của người dùng.
3. Hệ thống trả về các lựa chọn chuyến bay cho người dùng.
4. Người dùng chọn một chuyến bay cụ thể.
5. Người dùng cung cấp thông tin hành khách của mình.
6. Hệ thống đặt vé máy bay thu thập thông tin về hành khách.
7. Người dùng thực hiện đặt vé.
8. Hệ thống tạo ra một đơn đặt chỗ mới.
9. Hệ thống yêu cầu thông tin về phương thức thanh toán từ người dùng.
10. Phương thức thanh toán xác minh thông tin thanh toán với tài khoản ngân hàng.
11. Phương thức thanh toán thông báo cho hệ thống rằng thanh toán đã được xác nhận.
12. Hệ thống liên kết thanh toán với đơn đặt chỗ và gán ghế cho đơn đặt chỗ.
13. Hệ thống hiển thị thông báo xác nhận đặt vé cho người dùng.

## 3.4Mô hình

Để thực hiện chức năng đề xuất chuyến bay tôi lựa chọn phương pháp Recommendation System. Trong phương pháp này có rất nhiều sự lựa chọn khác nhau, dưới đây tôi giới thiệu và phân tích chi tiết các phương pháp phù hợp với đề tài.

### 3.4.1Hướng tiếp cận

- Recommender System là một trong những ứng dụng phổ biến nhất của khoa học dữ liệu ngày nay. Chúng được sử dụng để dự đoán "rating" hoặc "preference" mà người dùng sẽ dành cho một mặt hàng. Hầu hết mọi công ty công nghệ lớn đều đã áp dụng chúng dưới một số hình thức.

- Amazon sử dụng nó để đề xuất sản phẩm cho khách hàng
- Netflix sử dụng gợi ý phim cho người dùng
- YouTube sử dụng nó để đề xuất các video và quyết định video sẽ phát tiếp theo trên chế độ tự động phát
- Facebook sử dụng nó để gợi ý kết bạn, đề xuất các trang để thích và mọi người theo dõi.

- Theo sự nghiên cứu tìm hiểu tài liệu của tôi một hệ thống gợi ý Recommender System thường được chia thành 3 quá trình chính:

- Bước 1: Tìm các đặc trưng (features) có ảnh hưởng đến việc đánh giá của người dùng, thông qua việc phân tích và thăm dò dữ liệu
- Bước 2: Phân tích và áp dụng giải thuật filtering phù hợp
- Bước 3: Tiến hành training mô hình

![](RackMultipart20230703-1-jgvit3_html_dbb5549c699a8cad.png)

**Hình 3.3 - Hệ thống Recommender System chia thành 4 loại chính**

- Nhìn chung, hệ thống Recommender System có thể được chia thành 4 loại chính và nội dung tiếp theo tôi sẽ phân tích, giải thích đối với từng hướng tiếp cận:

- Simple Recommenders: Đưa ra các đề xuất tổng quát cho mọi người dùng, dựa trên mức độ phổ biến và/hoặc thể loại chuyến bay.
- Collaborative Filtering dựa trên sự tương đồng của hành vi người dùng và phụ thuộc vào lịch sử mua hoặc đánh giá sản phẩm. Trong trường hợp chuyến bay, không phải tất cả người dùng đều sẽ đặt cùng một chuyến bay và cũng không phải tất cả đều đánh giá về chuyến bay. Do đó, Collaborative Filtering không phù hợp cho hệ thống đặt chuyến bay.
- Content-Based Filtering: Phương pháp Content-Based Filtering sử dụng thông tin về thuộc tính và nội dung của chuyến bay (ví dụ: địa điểm khởi hành và đến, ngày giờ, hãng hàng không, loại máy bay, giá vé, v.v.) để tạo ra đề xuất cho người dùng. Nó dựa trên việc so sánh sự tương đồng của các chuyến bay dựa trên các thuộc tính này. Content-Based Filtering thích hợp khi người dùng có yêu cầu cụ thể về chuyến bay và muốn nhận được đề xuất dựa trên các tiêu chí cụ thể.
- Hybrid Filtering: Phương pháp Hybrid Filtering kết hợp sử dụng cả Content-Based Filtering và Collaborative Filtering để cung cấp đề xuất. Nó kết hợp thông tin cá nhân của người dùng (lịch sử đặt vé, đánh giá, sở thích, v.v.) và thông tin về chuyến bay để tạo ra đề xuất cá nhân hóa. Hybrid Filtering thích hợp khi cần cân nhắc cả thông tin về người dùng và thông tin về chuyến bay để tạo ra đề xuất chính xác và đáng tin cậy.

- Thông tin phân tích trên có thể thấy cả 2 phương pháp Hybrid Filtering và Content-Based Filtering đều phù hợp cho hệ thống đặt chuyến bay.

### 3.4.2Tìm hiểu Content-Based Filtering

- Dựa trên thiết kế dữ liệu, tôi lựa chọn phương pháp Recommendation System là Content-Based Filtering. Phương pháp này đề xuất chuyến bay rất phù hợp để áp dụng vào đề tài này.
- Để xác định và lựa chọn các thuộc tính quan trọng của sản phẩm, cần phải xem xét các yếu tố liên quan đến chuyến bay như thuộc tính, đặc điểm, mục đích sử dụng, loại, và nhiều yếu tố khác. Đối với mỗi loại sản phẩm, có thể có các thuộc tính quan trọng khác nhau.
- Trong trường hợp của API "[https://cavijs-nguyendevelop.vercel.app](https://cavijs-nguyendevelop.vercel.app/)", ta có thể xem các sản phẩm trên trang web để xác định các thuộc tính quan trọng.
- Sau khi xác định các thuộc tính quan trọng, tôi cần phải đánh giá độ tương đồng giữa các sản phẩm để áp dụng thuật toán Content-Based Filtering. Để đánh giá độ tương đồng giữa các sản phẩm, ta có thể sử dụng một số phương pháp tính toán độ tương đồng, bao gồm:

- Jaccard Similarity: Phương pháp này dựa trên việc tính toán tỷ lệ giữa số lượng phần tử giống nhau giữa hai tập hợp và số lượng phần tử không giống nhau trong hai tập hợp. Tính toán Jaccard similarity của hai sản phẩm có thể cho biết độ tương đồng giữa chúng.
- Euclidean Distance: Đây là một phương pháp đánh giá độ tương đồng dựa trên khoảng cách giữa hai vector trong không gian nhiều chiều. Tính toán Euclidean distance của hai sản phẩm có thể cho biết độ khác biệt giữa chúng.
- Pearson Correlation: Phương pháp này dựa trên việc tính toán hệ số tương quan giữa hai vector. Tính toán Pearson correlation của hai sản phẩm có thể cho biết độ tương đồng giữa chúng.
- Cosine Similarity: Đây là một phương pháp đánh giá độ tương đồng dựa trên góc giữa hai vector trong không gian nhiều chiều. Tính toán cosine similarity của hai sản phẩm có thể cho biết độ tương đồng giữa chúng.

- Việc lựa chọn phương pháp phụ thuộc vào loại dữ liệu được sử dụng và các yêu cầu cụ thể của hệ thống đề xuất chuyến bay. Cosine Similarity thường được coi là thước đo tốt nhất cho các hệ thống đề xuất dựa trên nội dung vì nó rất phù hợp với dữ liệu và phổ biến trong các hệ thống khuyến nghị. Tuy nhiên, biện pháp tốt nhất có thể khác nhau tùy thuộc vào dữ liệu, yêu cầu của hệ thống và mục tiêu của khuyến nghị. Và đối với đề tài này tôi sẽ sử dụng phương pháp Cosine Similarity cho chức năng đề xuất chuyến bay của đề tài tôi.

#


# Chương 4 XỬ LÝ DỮ LIỆU VÀ THUẬT TOÁN

## 4.1Phân tích dữ liệu khám phá

- Dưới đây là ví dụ về dữ liệu cho một chuyến bay của Vietnam Airlines và được chỉnh sửa thêm để phù hợp với đề tài dưới dạng JSON, bao gồm thông tin từ 9 bảng dữ liệu đã phân tích:

**Bảng 4.1 - Dữ liệu mẫu cho một chuyến bay**

| **Tên bảng** | **Thuộc tính mẫu** |
| --- | --- |
| Flight | "flightCode": "KR710","departureDate": "2023-06-20","departureTime": "16:08","arrivalDate": "2023-06-21","arrivalTime": "12:17","departureAirport": "WJR","arrivalAirport": "TQD","availableSeats": 153,"ticketPrice": 355,"airlineCode": "Zagros Airlines","airlineName": "5505","aircraftType": "consectetur" |
| Passenger | "passengerId": "516220751","name": "Elizabeth","address": "3108 Michael Valleys Suite 542\nDennisburgh, PR 53539","phoneNumber": "001-188-580-2652x23168","email": "christopher03@example.net","passportNumber": 59507559 |
| Booking | "bookingCode": "OSF3HR","flightCode": "NP681","passengerId": "950456468","totalAmount": 1984,"paymentMethod": "PayPal","seatNumber": "QV1","seatClass": "Economy","seatType": "Aisle","seatStatus": "Booked","seatPrice": 430,"passportNumber": 86547442,"visaNumber": 615072607 |
| Location | "locationId": 3,"locationName": "Melissachester","locationCode": "MNK" |
| Bank Account | "bankAccountId": 1,"bankName": "Vietinbank","accountNumber": "2568402048","accountHolder": "ZRBTUTIML" |
| International Flight | "flightCode": "JP162","departureDate": "2023-10-23","departureTime": "2023-09-03","arrivalDate": "2024-04-03","arrivalTime": "11:10","departureAirport": "YGR","arrivalAirport": "ATW","availableSeats": 285,"ticketPrice": 382,"airlineCode": "Dornier","airlineName": "2860","aircraftType": "labore","passportNumber": 83879954,"visaNumber": 835478956 |
| International Booking | "bookingCode": "5ASA5J","flightCode": "JP230","passengerId": "292053846","totalAmount": 656,"paymentMethod": "Debit Card","seatNumber": "6U3","passportNumber": 96745614,"visaNumber": 400844224 |
| Seat | "seatNumber": "A2U","seatClass": "Economy","seatType": "Middle","seatStatus": "Checked-in","seatPrice": 940,"flightCode": "VN581" |

- Đây là một cách tiếp cận được sử dụng để phân tích các tập dữ liệu và cũng để tóm tắt các đặc điểm chính, thường sử dụng các biểu đồ thống kê khác nhau và các kỹ thuật trực quan hóa dữ liệu khác. Nó sẽ giúp tôi hiểu những cách chúng tôi có thể sử dụng các nguồn dữ liệu của mình để nhận đề xuất chuyến bay mà tôi xây dựng chức năng sau này, các mẫu hoặc để xác minh bất kỳ giả định nào hoặc kiểm tra bất kỳ giả định nào.
- Trong đồ án này tôi được tìm hiểu, tiếp cận nhiều API miễn phí khác nhau về ngành Hàng không và để thực hiện tôi sử dụng 2 bộ dữ liệu sau:

[https://raw.githubusercontent.com/jpatokal/openflights/master/data/airports.dat](https://raw.githubusercontent.com/jpatokal/openflights/master/data/airports.dat)

https://raw.githubusercontent.com/jpatokal/openflights/master/data/airlines.dat

## 4.2Kế hoạch xây dựng dữ liệu

Từ bảng dữ liệu mẫu cho một chuyến bay chúng ta có thể sử dụng ngôn ngữ Python và các thư viện sau để thực hiện xây dựng dữ liệu:

### 4.2.1Thư viện faker

- Faker là một thư viện rất nổi tiếng để tạo dữ liệu giả, với rất nhiều kiểu dữ liệu cho các vấn đề khác nhau như người dùng, công việc, thẻ ngân hàng, ..v..v.. Khi sử dụng faker bạn không cần phải đắn đo suy nghĩ nên viết script tạo dữ liệu giả như thế nào vì phần lớn đều đã có sẵn trong thư viện.
- Cài đặt: Để sử dụng faker đầu tiến chúng ta phải cài đặt thư viện này trước. Nếu trên máy các bạn đã có python chỉ cần chạy. Tham khảo thêm về faker trên pypi tại đây: https://pypi.org/project/Faker/

$ pip install Faker

- Sử dụng thư viện:

\>\>\> from faker import Faker

\>\>\> fake = Faker()

- Tuỳ chỉnh thêm các dữ liệu có các ngôn ngữ của các nước châu Á:

\>\>\> languages = ['vi\_VN', 'zh\_CN', 'ja\_JP', 'ko\_KR', 'th\_TH', 'ne\_NP', 'bn\_BD', 'hi\_IN']

\>\>\> fake = Faker(language)

### 4.2.2Thư viện requests

- Thư viện Requests trong Python giúp lập trình viên có thể thực hiện các tác vụ như gửi request tới server cũng như xử lý response một cách đơn giản. Nhằm mục đích để dữ liệu được giống với thực tế tôi sử dụng thư viện này để xử lý và lấy thông tin từ dữ liệu mẫu về sân bay.
- Cài đặt:

$ pip install requests

- Trước tiên chúng ta cần import thư viện Requests vào sử dụng trong chương trình:

\>\>\> import requests

- Để gửi một HTTP GET request tới 2 địa chỉ URL dữ liệu 'airports.dat' và 'airlines.dat':

[https://raw.githubusercontent.com/jpatokal/openflights/master/data/airports.dat](https://raw.githubusercontent.com/jpatokal/openflights/master/data/airports.dat)

https://raw.githubusercontent.com/jpatokal/openflights/master/data/airlines.dat

\>\>\> response = requests.get('https://raw.githubusercontent.com/jpatokal/open flights/master/data/airports.dat')

- Với mục tiêu ban đầu là tính dùng lại code vì vậy chúng ta cần kiểm tra xem yêu cầu có thành công không, tránh việc thông tin lỗi hoặc không tồn tại:

\>\>\> if response.status\_code == 200:

\>\>\> airports = []

\>\>\> data = response.content.decode('utf-8').splitlines()

\>\>\> # Parse the data to get IATA codes of airports

\>\>\> for line in data:

\>\>\> parts = line.split(',')

\>\>\> if len(parts) \> 4 and parts[4]:

\>\>\> airports.append(parts[4].replace('"', ''))

\>\>\> else:

\>\>\> print("Error getting airport data.")

- Thực hiện tương tự để gửi một HTTP GET request và kiểm tra bộ dữ liệu 'airlines.dat'.

### 4.2.3Thư viện random và datetime

- Mô-đun random Python là một mô-đun dựng sẵn của Python được sử dụng để tạo các số random. Đây là những con số giả random có nghĩa là chúng không thực sự random. Mô-đun này có thể được sử dụng để thực hiện các hành động random như tạo số random, in giá trị random cho list hoặc chuỗi,…
- Mô-đun datetime Python là một mô-đun để làm việc với thời gian ngày và giờ.
- Sử dụng đồng thời 2 thư viện random và datetime để tạo dữ liệu ngẫu nhiên số và ngày và giờ.

$ import random

$ import datetime

- Trước khi bắt đầu hãy import thư viện vào dự án như trên và sau đó sẽ được thực hiện sử dụng thư viện này ở phần sau.

### 4.2.4Thư viện json

- Sau khi viết hàm để tạo ngẫu nhiên dữ liệu tôi dùng json Python để lưu dữ liệu như sau:

\>\>\> flights = []

\>\>\> with open('flights.json', 'w') as f:

\>\>\> json.dump(flights, f, indent=4)

- Code trên tạo một file "flights.json" và lưu dữ liệu vào đó. Dữ liệu được lưu dưới định dạng JSON, được định dạng và hiển thị đẹp hơn bằng cách sử dụng tham số **indent=4**.
- Câu lệnh **with open('flights.json', 'w') as f:** mở file "flights.json" trong chế độ ghi và ánh xạ tệp tin vào biến f. Khi khối lệnh được thực thi xong hoặc gặp lỗi, Python sẽ tự động đóng tệp tin để giải phóng bộ nhớ.
- Câu lệnh **json.dump(flights, f, indent=4)** chuyển đổi dữ liệu từ kiểu dữ liệu Python sang định dạng JSON và lưu nó vào tệp tin đã mở. Biến **flights** lưu trữ dữ liệu về các chuyến bay, và tham số **indent=4** được sử dụng để thêm khoảng trắng vào các đối tượng JSON, làm cho dữ liệu trong file được định dạng và dễ đọc hơn. Tương tự cho các bộ dữ liệu còn lại.

## 4.3Tiền xử lý dữ liệu

### 4.3.1Xây dựng dữ liệu cho bảng Flight

- Để xây dựng dữ liệu đầu tiên tôi import các thư viện cần thiết. Tiếp theo, khai báo dữ liệu ảo với thư viện 'faker'. Để gửi một HTTP GET request và kiểm tra chúng ta dùng thư viện 'request'. Tất cả hướng dẫn được trình bày ở trên phần giới thiệu các thư viện.
- Dựa theo bảng dữ liệu mẫu cho chuyến bay chúng ta thực hiện như sau:

![Picture 23](RackMultipart20230703-1-jgvit3_html_c485388b5f61808.gif)

**Hình 4.1 - Tạo dữ liệu cho bảng 'Flight'**

- Mã trên tạo ra thông tin về một chuyến bay ngẫu nhiên, được lưu trữ trong các biến sau:

- 'flight\_code': mã chuyến bay được tạo ngẫu nhiên bằng cách sử dụng thư viện faker, bao gồm 3 ký tự đầu tiên của các mã quốc gia được chọn ngẫu nhiên và 3 số cuối được chọn ngẫu nhiên trong khoảng từ 875 đến 975.
- 'departure\_airport': sân bay xuất phát được chọn ngẫu nhiên từ danh sách sân bay được lấy từ tệp 'airports.dat'.
- 'arrival\_airport': sân bay đến được chọn ngẫu nhiên từ danh sách sân bay, không được trùng với sân bay xuất phát.
- 'departure\_datetime': thời gian khởi hành được chọn ngẫu nhiên từ khoảng thời gian từ ngày 1 tháng 6 đến ngày 30 tháng 6 năm 2023.
- 'arrival\_datetime': thời gian đến dự kiến của chuyến bay, được tính dựa trên thời gian khởi hành và thời gian bay ước tính trong khoảng từ 30 đến 72 giờ.
- 'airline\_code': mã hãng hàng không được chọn ngẫu nhiên từ danh sách mã hãng hàng không, được lấy từ tệp 'airlines.dat'.
- 'airline\_name': tên hãng hàng không tương ứng với mã hãng hàng không được chọn ở trên.
- 'aircraft\_type': loại máy bay được chọn ngẫu nhiên.
- 'available\_seats': số ghế trống trong chuyến bay, được chọn ngẫu nhiên trong khoảng từ 100 đến 300, trừ khi sân bay xuất phát là HAN (Hà Nội), trong trường hợp này số ghế trống được giới hạn trong khoảng từ 10 đến 20.
- 'ticket\_price': giá vé được chọn ngẫu nhiên trong khoảng từ 100 đến 500 đơn vị tiền tệ.
- 'departure\_date', 'departure\_time', 'arrival\_date', 'arrival\_time': các thông tin về thời gian xuất phát và đến được chuyển đổi sang định dạng chuỗi để lưu trữ vào tệp JSON.

- Nếu bất kỳ giá trị nào trong các giá trị trên bị thiếu, hệ thống sẽ tiếp tục chạy vòng lặp để tạo chuyến bay ngẫu nhiên khác.

### 4.3.2Làm sạch dữ liệu

![](RackMultipart20230703-1-jgvit3_html_f8aaa356defce107.png)

**Hình 4.2 - Làm sạch dữ liệu Flight**

![](RackMultipart20230703-1-jgvit3_html_4632608758cfa1c7.png)

**Hình 4.3 - Làm sạch dữ liệu Bank Account**

![](RackMultipart20230703-1-jgvit3_html_2735fafed56248e1.png)

**Hình 4.4 - Làm sạch dữ liệu Booking**

![](RackMultipart20230703-1-jgvit3_html_961d989e49707de.png)

**Hình 4.5 - Làm sạch dữ liệu Location**

![](RackMultipart20230703-1-jgvit3_html_2d0c253897d109d3.png)

**Hình 4.6 - Làm sạch dữ liệu Passenger**

![](RackMultipart20230703-1-jgvit3_html_7a049671acfa271.png)

**Hình 4.7 - Làm sạch dữ liệu Seat**

![](RackMultipart20230703-1-jgvit3_html_2dcb2ac9968ee5b4.png)

**Hình 4.8 - Làm sạch dữ liệu Payment**

## 4.4Triển khai và sử dụng cosine similarity

- Trong giai đoạn này, tôi sẽ sử dụng cosine similarity để tính toán và đưa kết quả đề xuất chuyến bay phù hợp nhất. Đầu tiên toi sử dụng Flask Python là một framework ứng dụng cho website được tạo ra từ ngôn ngữ lập trình web Python và import các thư viện sau:

\>\>\>from flask import Flask, request, jsonify

\>\>\>import numpy as np

\>\>\>from sklearn.metrics.pairwise import cosine\_similarity

\>\>\>import requests

- Tiếp theo lấy dữ liệu từ API và bắt đầu tính toán để đưa ra các khuyến nghị về các chuyến bay tương tự dựa trên sân bay khởi hành được yêu cầu.

![Shape1](RackMultipart20230703-1-jgvit3_html_9c7c4434fc181f4e.gif)

**Hình 4.9 - Hàm tính toán get\_similar\_flights**

- Hàm **get\_similar\_flights(departure\_airport)** được định nghĩa để lấy các chuyến bay tương tự dựa trên sân bay khởi hành. Đầu vào của hàm là **departure\_airport** , đại diện cho sân bay khởi hành được yêu cầu. Hàm này thực hiện các bước sau:

- Khởi tạo một danh sách rỗng **vectors** để chứa các vector tương ứng với mỗi chuyến bay.
- Với mỗi chuyến bay trong danh sách **flights** , hàm tạo một vector dựa trên thông tin của chuyến bay đó.

- Vector này có các thành phần như sau:

- 1 nếu **flight['departureAirport']** (sân bay khởi hành của chuyến bay) bằng **departure\_airport** , ngược lại là 0.
- Ngày khởi hành được chuyển thành thành phần số thực trong vector.
- 1 nếu **flight['arrivalAirport']** (sân bay đích của chuyến bay) bằng **departure\_airport** , ngược lại là 0.
- Số ghế trống trong chuyến bay.
- Giá vé của chuyến bay.
- Mã hãng hàng không dưới dạng số thực.
- 1 nếu **flight['airlineName']** (tên hãng hàng không) bằng **departure\_airport** , ngược lại là 0.
- 1 nếu **flight['aircraftType']** (loại máy bay) bằng **departure\_airport** , ngược lại là 0.
- Vector được tạo sẽ được thêm vào danh sách **vectors**.
- Vector này cũng được in ra màn hình để kiểm tra.
- Khởi tạo một vector truy vấn **query\_vector** với tất cả các thành phần ban đầu đều là 0.
- Sử dụng hàm **cosine\_similarity** từ thư viện numpy để tính độ tương tự giữa **query\_vector** và tất cả các vector trong danh sách **vectors**. Kết quả được lưu trong danh sách **similarities**.
- Kết quả tương tự được in ra màn hình.
- Sắp xếp các độ tương tự theo thứ tự giảm dần và lấy chỉ số tương ứng. Chúng được lưu trong danh sách **indices**.
- Sử dụng danh sách **indices** để lấy các chuyến bay tương ứng từ danh sách **flights** và lưu trong danh sách **similar\_flights**.
- Trả về danh sách **similar\_flights** gồm tối đa 10 chuyến bay tương tự.

![Picture 3](RackMultipart20230703-1-jgvit3_html_b6fc361ebb64d2dc.gif)

**Hình 4.10 - Hàm trả về kết quả recommend\_flights**

- Tiếp theo, có hai đoạn mã liên quan đến API endpoint. Đầu tiên, có một đoạn mã để khai báo endpoint **/recommend** với phương thức POST. Điều này có nghĩa là API sẽ chỉ đáp ứng yêu cầu POST tới endpoint này. Sau đó, trong hàm **recommend\_flights()**, dữ liệu được trích xuất từ yêu cầu JSON và sân bay khởi hành được lấy ra từ khóa **departureAirport**. Hàm **get\_similar\_flights**** (departure\_airport) **được gọi để lấy danh sách các chuyến bay tương tự và sau đó được trả về dưới dạng JSON thông qua hàm** jsonify()**.

## 4.5Xây dựng thử nghiệm ứng dụng

### 4.5.1Chức năng Đăng nhập

![](RackMultipart20230703-1-jgvit3_html_c39f95e6232d0d8.png)

**Hình 4.11 - Thử nghiệm ứng dụng của Màn hình Đăng nhập**

### 4.5.2Chức năng Đăng ký

![](RackMultipart20230703-1-jgvit3_html_4456399c44ca689a.png)

**Hình 4.12 - Thử nghiệm ứng dụng của Màn hình Đăng ký**

### 4.5.3Màn hình chính

![](RackMultipart20230703-1-jgvit3_html_82a507fee00aac76.png)

**Hình 4.13 - Thử nghiệm ứng dụng của Màn hình chính**

### 4.5.4Màn hình Tìm kiếm và đặt vé

![](RackMultipart20230703-1-jgvit3_html_3c2385cdf53d9c69.png)

**Hình 4.14 - Thử nghiệm ứng dụng của Màn hình bước 1**

![](RackMultipart20230703-1-jgvit3_html_37fd09d01fada635.png)

**Hình 4.15 - Thử nghiệm ứng dụng của Màn hình chọn ngày bước 1**

![](RackMultipart20230703-1-jgvit3_html_8b143e29e9a7440.png)

**Hình 4.16 - Thử nghiệm ứng dụng của Màn hình bước 2**

![](RackMultipart20230703-1-jgvit3_html_31e218183405466.png)

**Hình 4.17 - Thử nghiệm ứng dụng của Màn hình chọn bước 2**

![](RackMultipart20230703-1-jgvit3_html_4f8acac08d4a0258.png)

**Hình 4.18 - Thử nghiệm ứng dụng của Màn hình bước 3**

![](RackMultipart20230703-1-jgvit3_html_eb2e15f08ce195fe.png)

**Hình 4.19 - Thử nghiệm ứng dụng của Màn hình bước 4**

![](RackMultipart20230703-1-jgvit3_html_6664807a479481e.png)

**Hình 4.20 - Thử nghiệm ứng dụng của Màn hình bước 5**

![](RackMultipart20230703-1-jgvit3_html_6a44183fd78db329.png)

**Hình 4.21 - Thử nghiệm ứng dụng của Màn hình hoàn tất các bước**

### 4.5.5Màn hình Lịch sử đặt vé

![](RackMultipart20230703-1-jgvit3_html_28e5881fe2f7fded.png)

**Hình 4.22 - Thử nghiệm ứng dụng của Màn hình Lịch sử đặt vé**

### 4.5.6Màn hình Cài đặt

![](RackMultipart20230703-1-jgvit3_html_8de2ca66feda5882.png)

**Hình 4.23 - Thử nghiệm ứng dụng của Màn hình Cài đặt**

**KẾT LUẬN VÀ HƯỚNG PHÁT TRIỂN**

1. **Kết quả đạt được**

- Trong thời gian làm đồ án, bằng kiến thức đã được học trong trường cùng sự giúp đỡ hướng dẫn tận tình của bạn bè, cô ThS. Trịnh Thị Ngọc Linh và tư vấn giải pháp hệ thống khuyến nghị bởi cô TS. Lê Thị Thu Nga đã đồng hành giúp tôi vận dụng, hoàn thành tốt môn "Đồ án Chuyên ngành 2" trong thời gian quy định. Qua quá trình hoàn thiện đồ án tôi đã học hỏi được rất nhiều kiến thức để có thể tìm hiểu được các kiến thức về kiến trúc, các tính năng, tổng quan của Flutter. Ngoài ra, em đã biên dịch được ứng dụng chạy được trên cả hai nền tảng là Android và iOS.
- Trong phạm vi của đồ án này, tôi đã giải đáp được những nét khái quát nhất về Flutter, một lượng kiến thức quy trình cơ bản để thực hiện đề tài "Hệ thống ứng dụng đặt vé máy bay thông minh". Do kiến thức còn hạn hẹp, nên không thể tránh khỏi những thiếu sót, tôi mong sẽ nhận được những lời đóng góp của các thầy cô trong Khoa để đồ án của tôi trở lên hoàn thiện hơn.

1. **Hạn chế**

Hạn chế của Hệ thống khuyến nghị dựa trên nội dung:Các hệ thống đề xuất dựa trên nội dung có một số hạn chế khiến chúng kém hiệu quả hơn đối với một số trường hợp sử dụng. Dưới đây là một số hạn chế chính:

- Cá nhân hóa hạn chế: Hệ thống đề xuất dựa trên nội dung chỉ dựa vào các đặc điểm của các mục được đề xuất. Do đó, họ không tính đến sở thích, mối quan tâm và hành vi của người dùng. Điều này có thể dẫn đến việc thiếu cá nhân hóa và trải nghiệm người dùng kém.
- Độ thưa thớt của dữ liệu: Các hệ thống đề xuất dựa trên nội dung yêu cầu rất nhiều dữ liệu để có hiệu quả. Đây có thể là một vấn đề khi có thông tin hạn chế về các mặt hàng được đề xuất hoặc người dùng được nhắm mục tiêu.
- Tiêu điểm hẹp: Các hệ thống đề xuất dựa trên nội dung tập trung vào một tập hợp hẹp các tính năng hoặc đặc điểm để đưa ra đề xuất. Điều này có thể dẫn đến các đề xuất không đa dạng và bỏ lỡ các cơ hội quan trọng để bán kèm hoặc bán thêm.
- Độ phức tạp tính toán cao: Các hệ thống đề xuất dựa trên nội dung có thể đòi hỏi nhiều sức mạnh xử lý. Đây có thể là một vấn đề đối với các hệ thống đề xuất quy mô lớn hoặc đối với các hệ thống cần đưa ra các đề xuất theo thời gian thực.
- Xu hướng trong dữ liệu: Các hệ thống đề xuất dựa trên nội dung có thể dễ bị ảnh hưởng bởi sự sai lệch trong dữ liệu được sử dụng để huấn luyện hệ thống. Ví dụ: nếu dữ liệu nghiêng về các mục hoặc thể loại nhất định, các đề xuất do hệ thống tạo ra sẽ thiên về các mục hoặc thể loại này.

1. **Hướng phát triển**

Ứng dụng vẫn còn thiếu sót khá nhiều về mặt chức năng cũng như khả năng tương tác với người dùng, do đó trong thời gian tới sẽ tiến hành cập nhập bổ sung các tính năng sau:

- Tiến hành nâng cấp giao diện của ứng dụng.
- Áp dụng thư viện BLoC để quản lý trạng thái
- Áp dụng phương pháp Hybrid Filtering để cung cấp đề xuất chuyến bay tốt nhất cho người dùng
- Tách xử lý trạng thái lấy dữ liệu chuyến bay riêng để tăng trải nghiệm người dùng

**DANH MỤC TÀI LIỆU THAM KHẢO**

[1]

[https://medium.com/@prateekgaurav/step-by-step-content-based-recommendation-system-823bbfd0541c](https://medium.com/@prateekgaurav/step-by-step-content-based-recommendation-system-823bbfd0541c)

[2]

[https://a-elkhattam.medium.com/imdb-movie-recommendation-chatbot-942f84dfa0d](https://a-elkhattam.medium.com/imdb-movie-recommendation-chatbot-942f84dfa0d)