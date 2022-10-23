part of 'services.dart';

class ArchotechService {
  static Future<http.Response> getMahasiswa() {
    return http.post(Uri.https(Const.baseUrl, 'starter/cost'),
        headers: <String, String>{
          'content-type': 'application/json; charset=utf-8',
        },
        body: jsonEncode(<String, dynamic>{
          "status": true,
          "code": 200,
          "message": "Data Mahasiswa berhasil ditampilkan"
        }));
  }

  static Future<http.Response> postEmail(String email) {
    return http.post(
        Uri.https(Const.baseUrl, 'cirestapi/api/mahasiswa/sendmail'),
        headers: <String, String>{
          'content-type': 'application/json; charset=utf-8',
        },
        body: jsonEncode(<String, dynamic>{"email": email}));
  }
}
