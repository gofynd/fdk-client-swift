import Foundation

extension PublicClient {

    public class Configuration {
        
        var config: PublicConfig

        init(config: PublicConfig) {
            self.config = config;
        }
        
        
        
        /**
        *
        * Summary: Search application
        * Description: Provide application name or domain url.
        **/
        public func searchApplication(
            authorization: String?,
            query: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ApplicationResponseSchema?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = query {
                xQuery["query"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            if let value = authorization {
                xHeaders.append((key: "authorization", value: value))
            }
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PublicAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/common/configuration/v1.0/application/search-application",
                query: xQuery,
                extraHeaders: xHeaders,
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
                        
                        let response = Utility.decode(ApplicationResponseSchema.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get countries, states, cities
        * Description: Get Location configuration
        **/
        public func getLocations(
            locationType: String?,
            id: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: Locations?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = locationType {
                xQuery["location_type"] = value
            }
            
            if let value = id {
                xQuery["id"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PublicAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/common/configuration/v1.0/location",
                query: xQuery,
                extraHeaders: xHeaders,
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
                        
                        let response = Utility.decode(Locations.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }}
}