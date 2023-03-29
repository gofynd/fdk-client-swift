import Foundation

public extension PublicClient {
    class Webhook {
        var config: PublicConfig

        init(config: PublicConfig) {
            self.config = config
        }

        /**
         *
         * Summary: Get All Webhook Events
         * Description: Get All Webhook Events
         **/
        public func fetchAllWebhookEvents(
            onResponse: @escaping (_ response: EventConfigResponse?, _ error: FDKError?) -> Void
        ) {
            PublicAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/common/webhook/v1.0/events",
                query: nil,
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
                        let response = Utility.decode(EventConfigResponse.self, from: data)

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
         * Summary: Send webhook event name, type, version, category in request body to get complete details of event from server
         * Description: Get Webhook Event Details for provided events
         **/
        public func queryWebhookEventDetails(
            body: [EventConfigBase],
            onResponse: @escaping (_ response: EventConfigResponse?, _ error: FDKError?) -> Void
        ) {
            PublicAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/common/webhook/v1.0/events/query-event-details",
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(EventConfigResponse.self, from: data)

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
