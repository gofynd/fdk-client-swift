import Foundation

extension ApplicationClient {

    public class Logistic {
        
        var config: ApplicationConfig
        var relativeUrls = [String: String]()

        init(config: ApplicationConfig) {
            self.config = config;
            var ulrs = [String: String]()
            
            ulrs["getAllCountries"] = config.domain.appendAsPath("/service/application/logistics/v1.0/country-list") 
            
            ulrs["getPincodeZones"] = config.domain.appendAsPath("/service/application/logistics/v1.0/pincode/zones") 
            
            ulrs["getZones"] = config.domain.appendAsPath("/service/application/logistics/v2.0/company/{company_id}/application/{application_id}/zones") 
            
            ulrs["getGeoAreas"] = config.domain.appendAsPath("/service/application/logistics/v1.0/company/{company_id}/application/{application_id}/geoareas") 
            
            ulrs["getOptimalLocations"] = config.domain.appendAsPath("/service/application/logistics/v1.0/reassign_stores") 
            
            ulrs["getLocations"] = config.domain.appendAsPath("/service/application/logistics/v1.0/locations") 
            
            ulrs["getCountries"] = config.domain.appendAsPath("/service/application/logistics/v1.0/countries") 
            
            ulrs["getCountry"] = config.domain.appendAsPath("/service/application/logistics/v1.0/countries/{country_iso_code}") 
            
            ulrs["getLocalities"] = config.domain.appendAsPath("/service/application/logistics/v1.0/localities/{locality_type}") 
            
            ulrs["getLocality"] = config.domain.appendAsPath("/service/application/logistics/v1.0/localities/{locality_type}/{locality_value}") 
            
            ulrs["validateAddress"] = config.domain.appendAsPath("/service/application/logistics/v1.0/country/{country_iso_code}/address/templates/{template_name}/validate") 
            
            self.relativeUrls = ulrs
        }
        public func update(updatedUrl : [String: String]){
            for (key, value) in updatedUrl{
            self.relativeUrls[key] = value
            }
        }
        
        
        
        /**
        *
        * Summary: Lists all countries.
        * Description: Retrieve a list of all countries supported by the system.
        **/
        public func getAllCountries(
            
            onResponse: @escaping (_ response: CountryListResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            let fullUrl = relativeUrls["getAllCountries"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
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
                        
                        let response = Utility.decode(CountryListResponse.self, from: data)
                        
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
        * Summary: Fetches zones by pincode.
        * Description: Retreive the logistical zones corresponding to a given pincode.
        **/
        public func getPincodeZones(
            body: GetZoneFromPincodeViewRequest,
            onResponse: @escaping (_ response: GetZoneFromPincodeViewResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            let fullUrl = relativeUrls["getPincodeZones"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetZoneFromPincodeViewResponse.self, from: data)
                        
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
        * Summary: Shows zones defined at the application level
        * Description: Displays the list of zones defined at the application level.
        **/
        public func getZones(
            companyId: Int,
            applicationId: String,
            stage: String?,
            pageSize: Int?,
            zoneIds: String?,
            isActive: Bool?,
            q: String?,
            country: String?,
            countryIsoCode: String?,
            pincode: String?,
            state: String?,
            city: String?,
            sector: String?,
            
            onResponse: @escaping (_ response: ListViewResponseV2?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = stage {
    
    xQuery["stage"] = value
    
}


if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


if let value = zoneIds {
    
    xQuery["zone_ids"] = value
    
}


if let value = isActive {
    
    xQuery["is_active"] = value
    
}


if let value = q {
    
    xQuery["q"] = value
    
}


if let value = country {
    
    xQuery["country"] = value
    
}


if let value = countryIsoCode {
    
    xQuery["country_iso_code"] = value
    
}


if let value = pincode {
    
    xQuery["pincode"] = value
    
}


if let value = state {
    
    xQuery["state"] = value
    
}


if let value = city {
    
    xQuery["city"] = value
    
}


if let value = sector {
    
    xQuery["sector"] = value
    
}


 


            
            var fullUrl = relativeUrls["getZones"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "company_id" + "}", with: "\(companyId)")
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "application_id" + "}", with: "\(applicationId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
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
                        
                        let response = Utility.decode(ListViewResponseV2.self, from: data)
                        
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
        * Summary: Get all geoareas in the current application.
        * Description: Retrieves a listing view of created GeoAreas.
        **/
        public func getGeoAreas(
            applicationId: String,
            companyId: Int,
            pageSize: Int?,
            isActive: Bool?,
            q: String?,
            countryIsoCode: String?,
            state: String?,
            city: String?,
            pincode: String?,
            sector: String?,
            
            onResponse: @escaping (_ response: GeoAreaGetResponseBody?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


if let value = isActive {
    
    xQuery["is_active"] = value
    
}


if let value = q {
    
    xQuery["q"] = value
    
}


if let value = countryIsoCode {
    
    xQuery["country_iso_code"] = value
    
}


if let value = state {
    
    xQuery["state"] = value
    
}


if let value = city {
    
    xQuery["city"] = value
    
}


if let value = pincode {
    
    xQuery["pincode"] = value
    
}


if let value = sector {
    
    xQuery["sector"] = value
    
}


 


            
            var fullUrl = relativeUrls["getGeoAreas"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "application_id" + "}", with: "\(applicationId)")
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "company_id" + "}", with: "\(companyId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
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
                        
                        let response = Utility.decode(GeoAreaGetResponseBody.self, from: data)
                        
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
        * Summary: Finds optimal locations.
        * Description: Retrieve the most efficient locations for logistics purposes.
        **/
        public func getOptimalLocations(
            body: ReAssignStoreRequest,
            onResponse: @escaping (_ response: ReAssignStoreResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            let fullUrl = relativeUrls["getOptimalLocations"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ReAssignStoreResponse.self, from: data)
                        
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
        * Summary: Fetches available locations.
        * Description: Retrieves a list of all locations of countries, states, cities. 
        **/
        public func getLocations(
            xApplicationId: String,
            xApplicationData: String,
            country: String?,
            state: String?,
            city: String?,
            pincode: Int?,
            sector: String?,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: GetStoreResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 


    xQuery["x-application-id"] = xApplicationId




    xQuery["x-application-data"] = xApplicationData



if let value = country {
    
    xQuery["country"] = value
    
}


if let value = state {
    
    xQuery["state"] = value
    
}


if let value = city {
    
    xQuery["city"] = value
    
}


if let value = pincode {
    
    xQuery["pincode"] = value
    
}


if let value = sector {
    
    xQuery["sector"] = value
    
}


if let value = pageNo {
    
    xQuery["page_no"] = value
    
}


if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


 


            
            let fullUrl = relativeUrls["getLocations"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
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
                        
                        let response = Utility.decode(GetStoreResponse.self, from: data)
                        
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
        * Summary: Get all countries and associated data.
        * Description: Retrieve of all countries.
        **/
        public func getCountries(
            onboarding: Bool?,
            pageNo: Int?,
            pageSize: Int?,
            q: String?,
            hierarchy: String?,
            
            onResponse: @escaping (_ response: GetCountries?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = onboarding {
    
    xQuery["onboarding"] = value
    
}


if let value = pageNo {
    
    xQuery["page_no"] = value
    
}


if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


if let value = q {
    
    xQuery["q"] = value
    
}


if let value = hierarchy {
    
    xQuery["hierarchy"] = value
    
}


 


            
            let fullUrl = relativeUrls["getCountries"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
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
                        
                        let response = Utility.decode(GetCountries.self, from: data)
                        
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
        * Summary: get paginator for getCountries
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getCountriesPaginator(
            onboarding: Bool?,
            pageSize: Int?,
            q: String?,
            hierarchy: String?
            
            ) -> Paginator<GetCountries> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<GetCountries>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getCountries(
                        
                        onboarding: onboarding,
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        ,
                        q: q,
                        hierarchy: hierarchy
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageNo = (paginator.pageNo ?? 0) + 1
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Get single country and associated data.
        * Description: Retrieve data for a single country and address format.
        **/
        public func getCountry(
            countryIsoCode: String,
            
            onResponse: @escaping (_ response: GetCountry?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            var fullUrl = relativeUrls["getCountry"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "country_iso_code" + "}", with: "\(countryIsoCode)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
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
                        
                        let response = Utility.decode(GetCountry.self, from: data)
                        
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
        * Summary: Get Localities.
        * Description: Get Localities data.
        **/
        public func getLocalities(
            localityType: String,
            country: String?,
            state: String?,
            city: String?,
            pageNo: Int?,
            pageSize: Int?,
            q: String?,
            name: String?,
            namesList: String?,
            
            onResponse: @escaping (_ response: GetLocalities?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = country {
    
    xQuery["country"] = value
    
}


if let value = state {
    
    xQuery["state"] = value
    
}


if let value = city {
    
    xQuery["city"] = value
    
}


if let value = pageNo {
    
    xQuery["page_no"] = value
    
}


if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


if let value = q {
    
    xQuery["q"] = value
    
}


if let value = name {
    
    xQuery["name"] = value
    
}


if let value = namesList {
    
    xQuery["names_list"] = value
    
}


 


            
            var fullUrl = relativeUrls["getLocalities"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "locality_type" + "}", with: "\(localityType)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
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
                        
                        let response = Utility.decode(GetLocalities.self, from: data)
                        
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
        * Summary: get paginator for getLocalities
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getLocalitiesPaginator(
            localityType: String,
            country: String?,
            state: String?,
            city: String?,
            pageSize: Int?,
            q: String?,
            name: String?,
            namesList: String?
            
            ) -> Paginator<GetLocalities> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<GetLocalities>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getLocalities(
                        
                        localityType: localityType,
                        country: country,
                        state: state,
                        city: city,
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        ,
                        q: q,
                        name: name,
                        namesList: namesList
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageNo = (paginator.pageNo ?? 0) + 1
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Get Locality API
        * Description: Get Locality data
        **/
        public func getLocality(
            localityType: String,
            localityValue: String,
            country: String?,
            state: String?,
            city: String?,
            
            onResponse: @escaping (_ response: GetLocality?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = country {
    
    xQuery["country"] = value
    
}


if let value = state {
    
    xQuery["state"] = value
    
}


if let value = city {
    
    xQuery["city"] = value
    
}


 


            
            var fullUrl = relativeUrls["getLocality"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "locality_type" + "}", with: "\(localityType)")
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "locality_value" + "}", with: "\(localityValue)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
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
                        
                        let response = Utility.decode(GetLocality.self, from: data)
                        
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
        * Summary: Validate given address wrt template
        * Description: Validate given address wrt template
        **/
        public func validateAddress(
            countryIsoCode: String,
            templateName: String,
            body: ValidateAddressRequest,
            onResponse: @escaping (_ response: ValidateAddressRequest?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            var fullUrl = relativeUrls["validateAddress"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "country_iso_code" + "}", with: "\(countryIsoCode)")
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "template_name" + "}", with: "\(templateName)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ValidateAddressRequest.self, from: data)
                        
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