import Foundation

extension PublicClient {

    public class Catalog {
        
        var config: PublicConfig

        init(config: PublicConfig) {
            self.config = config;
        }
        
        
        
        /**
        *
        * Summary: Get Taxonomy Information by Level
        * Description: Get Taxonomy Details for a given level
        **/
        public func getTaxonomyByLevel(
            level: Int,
            l0Slug: String?,
            l1Slug: String?,
            l2Slug: String?,
            l3Slug: String?,
            limit: Double?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: TaxonomyResponseSchema?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = l0Slug {
                xQuery["l0_slug"] = value
            }
            
            if let value = l1Slug {
                xQuery["l1_slug"] = value
            }
            
            if let value = l2Slug {
                xQuery["l2_slug"] = value
            }
            
            if let value = l3Slug {
                xQuery["l3_slug"] = value
            }
            
            if let value = limit {
                xQuery["limit"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PublicAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/public/catalog/v1.0/taxonomy/level/\(level)",
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
                        
                        let response = Utility.decode(TaxonomyResponseSchema.self, from: data)
                        
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