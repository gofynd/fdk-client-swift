import Foundation

extension ApplicationClient {

    public class Logistic {
        
        var config: ApplicationConfig
        var relativeUrls = [String: String]()

        init(config: ApplicationConfig) {
            self.config = config;
            var ulrs = [String: String]()
            
            ulrs["getPincodeCity"] = config.domain.appendAsPath("/service/application/logistics/v1.0/pincode/{pincode}") 
            
            ulrs["getAllCountries"] = config.domain.appendAsPath("/service/application/logistics/v1.0/country-list") 
            
            ulrs["getZones"] = config.domain.appendAsPath("/service/application/logistics/v2.0/company/{company_id}/application/{application_id}/zones") 
            
            ulrs["getGeoAreas"] = config.domain.appendAsPath("/service/application/logistics/v1.0/company/{company_id}/application/{application_id}/geoareas") 
            
            ulrs["getCountries"] = config.domain.appendAsPath("/service/application/logistics/v2.0/countries") 
            
            ulrs["getCountry"] = config.domain.appendAsPath("/service/application/logistics/v1.0/countries/{country_iso_code}") 
            
            ulrs["getLocalitiesByPrefix"] = config.domain.appendAsPath("/service/application/logistics/v1.0/localities") 
            
            ulrs["getLocalities"] = config.domain.appendAsPath("/service/application/logistics/v1.0/localities/{locality_type}") 
            
            ulrs["getLocality"] = config.domain.appendAsPath("/service/application/logistics/v1.0/localities/{locality_type}/{locality_value}") 
            
            ulrs["validateAddress"] = config.domain.appendAsPath("/service/application/logistics/v1.0/country/{country_iso_code}/address/templates/{template_name}/validate") 
            
            ulrs["createShipments"] = config.domain.appendAsPath("/service/application/logistics/v1.0/company/{company_id}/application/{application_id}/shipments") 
            
            ulrs["getDeliveryPromise"] = config.domain.appendAsPath("/service/application/logistics/v1.0/delivery-promise") 
            
            ulrs["getQCPromise"] = config.domain.appendAsPath("/service/application/logistics/v1.0/qc-promise") 
            
            self.relativeUrls = ulrs
        }
        public func update(updatedUrl : [String: String]){
            for (key, value) in updatedUrl{
            self.relativeUrls[key] = value
            }
        }
        
        
        
        /**
        *
        * Summary: Get Pincode API
        * Description: Get details of a specific pincode, such as obtaining its city and state information.
        **/
        public func getPincodeCity(
            pincode: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PincodeApiResponseSchema?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getPincodeCity"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "pincode" + "}", with: "\(pincode)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
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
                        
                        let response = Utility.decode(PincodeApiResponseSchema.self, from: data)
                        
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
        * Summary: Get deliverable countries
        * Description: Get a list of countries within the specified delivery zones for that application.
        **/
        public func getAllCountries(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CountryListResponseSchema?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getAllCountries"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
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
                        
                        let response = Utility.decode(CountryListResponseSchema.self, from: data)
                        
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
            type: String?,
            pageSize: Int?,
            pageNo: Int?,
            isActive: Bool?,
            q: String?,
            countryIsoCode: String?,
            pincode: String?,
            state: String?,
            city: String?,
            sector: String?,
            storeUid: Int?,
            regionUid: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ListViewResponseSchemaV2?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = stage {
                xQuery["stage"] = value
            }
            
            if let value = type {
                xQuery["type"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            if let value = pageNo {
                xQuery["page_no"] = value
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
            
            if let value = storeUid {
                xQuery["store_uid"] = value
            }
            
            if let value = regionUid {
                xQuery["region_uid"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getZones"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "company_id" + "}", with: "\(companyId)")
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "application_id" + "}", with: "\(applicationId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
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
                        
                        let response = Utility.decode(ListViewResponseSchemaV2.self, from: data)
                        
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
            pageNo: Int?,
            type: String?,
            isActive: Bool?,
            q: String?,
            countryIsoCode: String?,
            state: String?,
            city: String?,
            pincode: String?,
            sector: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GeoAreaGetResponseBody?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = type {
                xQuery["type"] = value
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
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getGeoAreas"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "application_id" + "}", with: "\(applicationId)")
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "company_id" + "}", with: "\(companyId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
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
        * Summary: Get all countries and associated data.
        * Description: Retrieve a list of countries for logistical purposes.
        **/
        public func getCountries(
            onboard: Bool?,
            pageNo: Int?,
            pageSize: Int?,
            q: String?,
            hierarchy: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GetCountries?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = onboard {
                xQuery["onboard"] = value
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
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getCountries"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
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
            onboard: Bool?,
            pageSize: Int?,
            q: String?,
            hierarchy: String?,
            headers: [(key: String, value: String)]? = nil
            ) -> Paginator<GetCountries> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<GetCountries>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getCountries(
                    onboard: onboard,
                    pageNo: paginator.pageNo,
                    pageSize: paginator.pageSize,
                    q: q,
                    hierarchy: hierarchy,
                    
                    headers: headers
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
        * Summary: Get country details
        * Description: Get details about a particular country and its address format customized for different business scenarios.
        **/
        public func getCountry(
            countryIsoCode: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GetCountry?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getCountry"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "country_iso_code" + "}", with: "\(countryIsoCode)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
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
        * Summary: Get Localities by Name Prefix
        * Description: Get localities that start with a specified prefix.
        **/
        public func getLocalitiesByPrefix(
            pageNo: Int?,
            pageSize: Int?,
            q: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GetLocalities?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            if let value = q {
                xQuery["q"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getLocalitiesByPrefix"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
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
        * Summary: get paginator for getLocalitiesByPrefix
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getLocalitiesByPrefixPaginator(
            pageSize: Int?,
            q: String?,
            headers: [(key: String, value: String)]? = nil
            ) -> Paginator<GetLocalities> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<GetLocalities>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getLocalitiesByPrefix(
                    pageNo: paginator.pageNo,
                    pageSize: paginator.pageSize,
                    q: q,
                    
                    headers: headers
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
        * Summary: Get Localities
        * Description: Get geographical data for a specific type of locality based on the provided filters. For instance, obtain a list of cities for a given country and state.
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
            
            headers: [(key: String, value: String)]? = nil,
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
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getLocalities"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "locality_type" + "}", with: "\(localityType)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
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
            headers: [(key: String, value: String)]? = nil
            ) -> Paginator<GetLocalities> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<GetLocalities>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getLocalities(
                    localityType: localityType,
                    country: country,
                    state: state,
                    city: city,
                    pageNo: paginator.pageNo,
                    pageSize: paginator.pageSize,
                    q: q,
                    name: name,
                    
                    headers: headers
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
        * Summary: Get locality detail
        * Description: Get detailed geographical data for a specific locality, such as a pincode. For example, for a pincode value of 400603, the service returns its parent locations, including city, state, and country details.
        **/
        public func getLocality(
            localityType: String,
            localityValue: String,
            country: String?,
            state: String?,
            city: String?,
            
            headers: [(key: String, value: String)]? = nil,
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
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getLocality"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "locality_type" + "}", with: "\(localityType)")
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "locality_value" + "}", with: "\(localityValue)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
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
        * Summary: Validate address
        * Description: Validate addresses using specific templates customized for each country and tailored to various business scenarios. This validation ensures that the data conforms to the information currently stored in the system.
        **/
        public func validateAddress(
            countryIsoCode: String,
            templateName: String,
            body: ValidateAddressRequestSchema,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ValidateAddressRequestSchema?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["validateAddress"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "country_iso_code" + "}", with: "\(countryIsoCode)")
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "template_name" + "}", with: "\(templateName)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
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
                        
                        let response = Utility.decode(ValidateAddressRequestSchema.self, from: data)
                        
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
        * Summary: Create and return shipments.
        * Description: Create and return shipments.
        **/
        public func createShipments(
            companyId: Int,
            applicationId: String,
            body: GenerateShipmentsRequestSchema,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GenerateShipmentsAndCourierPartnerResponseSchema?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["createShipments"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "company_id" + "}", with: "\(companyId)")
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "application_id" + "}", with: "\(applicationId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
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
                        
                        let response = Utility.decode(GenerateShipmentsAndCourierPartnerResponseSchema.self, from: data)
                        
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
        * Summary: Get delivery promise
        * Description: Get delivery promises for both global and store levels based on a specific locality type.
        **/
        public func getDeliveryPromise(
            pageNo: Int?,
            pageSize: Int?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GetPromiseDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getDeliveryPromise"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
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
                        
                        let response = Utility.decode(GetPromiseDetails.self, from: data)
                        
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
        * Summary: Get QC promise
        * Description: Get QC promises for the pincode.
        **/
        public func getQCPromise(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GetQCPromiseDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getQCPromise"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
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
                        
                        let response = Utility.decode(GetQCPromiseDetails.self, from: data)
                        
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