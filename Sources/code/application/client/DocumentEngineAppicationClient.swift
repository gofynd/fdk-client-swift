import Foundation

public extension ApplicationClient {
    class DocumentEngine {
        var config: ApplicationConfig
        var relativeUrls = [String: String]()

        init(config: ApplicationConfig) {
            self.config = config
            var ulrs = [String: String]()

            ulrs["getInvoiceByShipmentId"] = config.domain.appendAsPath("/service/application/document/v1.0/orders/shipments/{shipment_id}/invoice")

            ulrs["getCreditNoteByShipmentId"] = config.domain.appendAsPath("/service/application/document/v1.0/orders/shipments/{shipment_id}/credit-note")

            self.relativeUrls = ulrs
        }

        public func update(updatedUrl: [String: String]) {
            for (key, value) in updatedUrl {
                self.relativeUrls[key] = value
            }
        }

        /**
         *
         * Summary: Get Presigned URL to download Invoice
         * Description: Use this API to generate Presigned URLs for downloading Invoice
         **/
        public func getInvoiceByShipmentId(
            shipmentId: String,
            parameters: invoiceParameter?,

            onResponse: @escaping (_ response: getInvoiceByShipmentId200Response?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = parameters {
                xQuery["parameters"] = value
            }

            var fullUrl = relativeUrls["getInvoiceByShipmentId"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")

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
                        let response = Utility.decode(getInvoiceByShipmentId200Response.self, from: data)

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
         * Summary: Get Presigned URL to download Invoice
         * Description: Use this API to generate Presigned URLs for downloading Invoice
         **/
        public func getCreditNoteByShipmentId(
            shipmentId: String,
            parameters: creditNoteParameter?,

            onResponse: @escaping (_ response: getInvoiceByShipmentId200Response?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = parameters {
                xQuery["parameters"] = value
            }

            var fullUrl = relativeUrls["getCreditNoteByShipmentId"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")

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
                        let response = Utility.decode(getInvoiceByShipmentId200Response.self, from: data)

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
