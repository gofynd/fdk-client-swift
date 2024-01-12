import Foundation

extension PublicClient {

    public class Billing {
        
        var config: PublicConfig

        init(config: PublicConfig) {
            self.config = config;
        }
        
        
        
        /**
        *
        * Summary: Get Standard/Public Plans
        * Description: Get Standard/Public Plans.

        **/
        public func getStandardPlans(
            platformType: String,
            
            onResponse: @escaping (_ response: DetailList?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 


    xQuery["platform_type"] = platformType



 


            PublicAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/public/billing/v1.0/plan/detailed-list",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(DetailList.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
    }
}