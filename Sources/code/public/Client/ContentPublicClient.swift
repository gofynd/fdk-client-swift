import Foundation

extension PublicClient {

    public class Content {
        
        var config: PublicConfig

        init(config: PublicConfig) {
            self.config = config;
        }
        
        
        
        /**
        *
        * Summary: Get credentials to power chat support systems
        * Description: Get credentials for support system
        **/
        public func getCredentialsByEntity(
            entity: String?,
            
            onResponse: @escaping (_ response: CredentialsSchema?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PublicAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/public/content/credentials/\(entity)",
                query: nil,
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
                        
                        let response = Utility.decode(CredentialsSchema.self, from: data)
                        
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