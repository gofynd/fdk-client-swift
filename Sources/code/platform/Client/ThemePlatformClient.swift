import Foundation

extension PlatformClient {

    public class Theme {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: List company themes
        * Description: Retrieve themes added to a company.
        **/
        public func getCompanyLevelThemes(
            searchText: String?,
            
            onResponse: @escaping (_ response: [CompanyThemeSchema]?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = searchText {
    
    xQuery["search_text"] = value
    
}


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/theme/v2.0/company/\(companyId)/themes",
                query: xQuery,
                body: nil,
                headers: [],
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode([CompanyThemeSchema].self, from: data)
                        
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
        * Summary: List private company themes
        * Description: Retrieve a list of private themes added to a company.
        **/
        public func getCompanyLevelPrivateThemes(
            searchText: String?,
            
            onResponse: @escaping (_ response: [CompanyPrivateTheme]?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = searchText {
    
    xQuery["search_text"] = value
    
}


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/theme/v2.0/company/\(companyId)/private_themes",
                query: xQuery,
                body: nil,
                headers: [],
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode([CompanyPrivateTheme].self, from: data)
                        
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
        * Summary: Create a company theme
        * Description: Incorporate a marketplace theme into a company's profile.
        **/
        public func addMarketplaceThemeToCompany(
            body: ThemeReq,
            onResponse: @escaping (_ response: CompanyThemeSchema?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/theme/v2.0/company/\(companyId)",
                query: nil,
                body: body.dictionary,
                headers: [],
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CompanyThemeSchema.self, from: data)
                        
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
        * Summary: Delete a company theme
        * Description: Remove a theme associated with a company.
        **/
        public func deleteCompanyTheme(
            themeId: String,
            
            onResponse: @escaping (_ response: CompanyThemeSchema?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "DELETE",
                url: "/service/platform/theme/v2.0/company/\(companyId)/\(themeId)",
                query: nil,
                body: nil,
                headers: [],
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CompanyThemeSchema.self, from: data)
                        
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