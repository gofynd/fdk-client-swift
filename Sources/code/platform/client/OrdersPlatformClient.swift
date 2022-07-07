import Foundation

public extension PlatformClient {
    class Orders {
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }

        /**
         *
         * Summary:
         * Description:
         **/
        public func getOrderShipmentDetails(
            shipmentId: String,

            onResponse: @escaping (_ response: ShipmentDetailsResponse?, _ error: FDKError?) -> Void
        ) {
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v1.0/company/\(companyId)/shipmentsDetails/\(shipmentId)",
                query: nil,
                body: nil,
                headers: [],
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(ShipmentDetailsResponse.self, from: data)

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
         * Summary:
         * Description:
         **/
        public func getShipmentDetails(
            orderId: String,

            onResponse: @escaping (_ response: ShipmentDetailsResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            xQuery["order_id"] = orderId

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v1.0/company/\(companyId)/order-details",
                query: xQuery,
                body: nil,
                headers: [],
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(ShipmentDetailsResponse.self, from: data)

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
         * Summary:
         * Description:
         **/
        public func getShipmentToManifest(
            groupEntity: String,
            salesChannel: String?,
            dpIds: String?,

            onResponse: @escaping (_ response: ManifestShipmentResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            xQuery["group_entity"] = groupEntity

            if let value = salesChannel {
                xQuery["sales_channel"] = value
            }

            if let value = dpIds {
                xQuery["dp_ids"] = value
            }

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v1.0/company/\(companyId)/manifest-listing",
                query: xQuery,
                body: nil,
                headers: [],
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(ManifestShipmentResponse.self, from: data)

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
