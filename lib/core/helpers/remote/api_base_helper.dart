import 'package:http/http.dart'as http;
import 'package:motaqa_task/core/helpers/remote/end_points.dart';

class ApiBaseHelper{

  static Future get({
    required String url,
    Map<String, String>? headers,
  }) async {
    final response = await http.get(
      Uri.parse(apiBaseHelper + url),
      headers: headers ??
          {
            "Accept": "application/json",
            "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZTZlMzY4YzVhZjc0YzU5YzNiMjcxN2RkMGFiOGNhYTQ1ZTgwMDU1NDE2NDI3NzZjNGQxODU3MWMyOWI5ZDM4YmYwYTdjNDY1ZTA4Y2E5NTIiLCJpYXQiOjE2MzU2MzQ5NjIuNTU3MTA0LCJuYmYiOjE2MzU2MzQ5NjIuNTU3MTA5LCJleHAiOjE2NjcxNzA5NjIuMzkyODk0LCJzdWIiOiIxMiIsInNjb3BlcyI6W119.qCd-f0JT_ku8niD3bUyBuaOIHHHTppFENY_tZhbcfbwF_5nbB34K7iJ5PQEfMDzG7hG-ETI2iiir46JQWEILMDYOpuZsevjBbnclgebD0d1XWollJxSwxFlo92qIJM0yQgEGpBLbCPr5uziqga0GOozyptGcCwGqLh82jFUGnJlw7OjE158Uh-p_hm8_pWo8aQdh5QW5hwrNlYC9A8PSWP2HdOV2Gr-Xoqi0gsW2no0K-tKyiWBgGpscVxWfbC4wossk-n6Or_vkffmTQajTVGBqXUY0TpcJWFsv8dIMGhur8GP0sRMJMj2Ut0Ihv4s5v8GjElRZ5eJxEFeswuKEeq6JDUZ8NvXwXTLUtSBeSZN31XRadFBOeiUwPyoHz9q2sBXoySfVhlNCN-8vpuh69l3t0wQmo-7jdQIPwYc4LLVrva8a1NP2FHvx5ISC6gFtfV7gRITrWjETZGDKvkDyX7eqQg4iX_Oux9SHxyTUGhBvgXsvHKMNLgDA0F9GKKVvsitGbOoKT2r0Ou769rZygQR0nQ_LcxyX7TBuUkwtEfpjDhneNk3N37tWiZ4WrWMuovYjh8MH8eNVlG_mRoM9Jw5DMGWRfbeZ5rvU4uSyhqdHgSUn4UzEeibkTL7ycnqOmdEhniootvvPa9SYVk_J2zUkRvVNisyQYFhopM7_pwI"
          },
    );
    return response;
  }

}