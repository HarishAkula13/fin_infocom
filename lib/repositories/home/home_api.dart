import '../../../helper/logger/logger.dart';
import '../../../model/base_response/request_response.dart';
import '../../model/login/employee_information.dart';
import '../base/base_api_service.dart';
import '../endpoint/endpoint.dart';
class HomeService extends BaseAPIService{
  HomeService();
  Future<RequestResponse<DogImages>> getUserLevelList() {
    return make(RequestType.GET, EndPoints.dogImages)
        .then((result) {
      if (result.data != null) {
        printLog("response", result.data);
        var data=DogImages.fromJson(result.data);
        return RequestResponse(data: data);
      } else {
        printLog("response error", result.error!.error);
        return RequestResponse(error: result.error);
      }
    });
  }

  Future<RequestResponse<ProfileDetails>> getProfileDetails() {
    return make(RequestType.GET, EndPoints.profile_details )
        .then((result) {
      if (result.data != null) {
        printLog("response", result.data);
        var data=ProfileDetails.fromJson(result.data);
        return RequestResponse(data: data);
      } else {
        printLog("response error", result.error!.error);
        return RequestResponse(error: result.error);
      }
    });
  }


}