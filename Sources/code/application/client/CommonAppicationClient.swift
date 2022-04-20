import Foundation

public extension ApplicationClient {
    class Common {
        var config: ApplicationConfig
        var relativeUrls = [String: String]()

        init(config: ApplicationConfig) {
            self.config = config
            var ulrs = [String: String]()

            ulrs["searchApplication"] = config.domain.appendAsPath("/service/common/configuration/v1.0/application/search-application")

            ulrs["getLocations"] = config.domain.appendAsPath("/service/common/configuration/v1.0/location")

            self.relativeUrls = ulrs
        }

        public func update(updatedUrl: [String: String]) {
            for (key, value) in updatedUrl {
                self.relativeUrls[key] = value
            }
        }

        /**
         *
         * Summary: Search Application
         * Description: Provide application name or domain url
         **/
        public func searchApplication(
            authorization: String?,
            query: String?,

            onResponse: @escaping (_ response: ApplicationResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = query {
                xQuery["query"] = value
            }

            var xHeaders: [(key: String, value: String)] = []

            if let value = authorization {
                xHeaders.append((key: "authorization", value: value))
            }

            let fullUrl = relativeUrls["searchApplication"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(ApplicationResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get countries, states, cities
         * Description:
         **/
        public func getLocations(
            locationType: String?,
            id: String?,

            onResponse: @escaping (_ response: Locations?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = locationType {
                xQuery["location_type"] = value
            }

            if let value = id {
                xQuery["id"] = value
            }

            let fullUrl = relativeUrls["getLocations"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
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
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }
    }
}
