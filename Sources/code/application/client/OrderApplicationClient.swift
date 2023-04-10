import Foundation

public extension ApplicationClient {
    class Order {
        var config: ApplicationConfig
        var relativeUrls = [String: String]()

        init(config: ApplicationConfig) {
            self.config = config
            var ulrs = [String: String]()

            ulrs["getOrders"] = config.domain.appendAsPath("/service/application/orders/v1.0/orders")

            ulrs["getOrderById"] = config.domain.appendAsPath("/service/application/orders/v1.0/orders/{order_id}")

            ulrs["getPosOrderById"] = config.domain.appendAsPath("/service/application/orders/v1.0/orders/pos-order/{order_id}")

            ulrs["getShipmentById"] = config.domain.appendAsPath("/service/application/orders/v1.0/orders/shipments/{shipment_id}")

            ulrs["getInvoiceByShipmentId"] = config.domain.appendAsPath("/service/application/orders/v1.0/orders/shipments/{shipment_id}/invoice")

            ulrs["trackShipment"] = config.domain.appendAsPath("/service/application/orders/v1.0/orders/shipments/{shipment_id}/track")

            ulrs["getCustomerDetailsByShipmentId"] = config.domain.appendAsPath("/service/application/orders/v1.0/orders/{order_id}/shipments/{shipment_id}/customer-details")

            ulrs["sendOtpToShipmentCustomer"] = config.domain.appendAsPath("/service/application/orders/v1.0/orders/{order_id}/shipments/{shipment_id}/otp/send/")

            ulrs["verifyOtpShipmentCustomer"] = config.domain.appendAsPath("/service/application/orders/v1.0/orders/{order_id}/shipments/{shipment_id}/otp/verify/")

            ulrs["getShipmentBagReasons"] = config.domain.appendAsPath("/service/application/orders/v1.0/orders/shipments/{shipment_id}/bags/{bag_id}/reasons")

            ulrs["getShipmentReasons"] = config.domain.appendAsPath("/service/application/orders/v1.0/orders/shipments/{shipment_id}/reasons")

            ulrs["updateShipmentStatus"] = config.domain.appendAsPath("/service/application/orders/v1.0/orders/shipments/{shipment_id}/status")

            ulrs["updateShipmentStatus1"] = config.domain.appendAsPath("/service/application/order-manage/v1.0/orders/shipments/{shipment_id}/status")

            self.relativeUrls = ulrs
        }

        public func update(updatedUrl: [String: String]) {
            for (key, value) in updatedUrl {
                self.relativeUrls[key] = value
            }
        }

        /**
         *
         * Summary: Get all orders
         * Description: Use this API to retrieve all the orders.
         **/
        public func getOrders(
            status: Int?,
            pageNo: Int?,
            pageSize: Int?,
            fromDate: String?,
            toDate: String?,
            customMeta: String?,

            onResponse: @escaping (_ response: OrderList?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = status {
                xQuery["status"] = value
            }

            if let value = pageNo {
                xQuery["page_no"] = value
            }

            if let value = pageSize {
                xQuery["page_size"] = value
            }

            if let value = fromDate {
                xQuery["from_date"] = value
            }

            if let value = toDate {
                xQuery["to_date"] = value
            }

            if let value = customMeta {
                xQuery["custom_meta"] = value
            }

            let fullUrl = relativeUrls["getOrders"] ?? ""

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
                        let response = Utility.decode(OrderList.self, from: data)

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
         * Summary: Get details of an order
         * Description: Use this API to retrieve order details such as tracking details, shipment, store information using Fynd Order ID.
         **/
        public func getOrderById(
            orderId: String,

            onResponse: @escaping (_ response: OrderById?, _ error: FDKError?) -> Void
        ) {
            var fullUrl = relativeUrls["getOrderById"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "order_id" + "}", with: "\(orderId)")

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
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
                        let response = Utility.decode(OrderById.self, from: data)

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
         * Summary: Get POS Order
         * Description: Use this API to retrieve a POS order and all its details such as tracking details, shipment, store information using Fynd Order ID.
         **/
        public func getPosOrderById(
            orderId: String,

            onResponse: @escaping (_ response: OrderList?, _ error: FDKError?) -> Void
        ) {
            var fullUrl = relativeUrls["getPosOrderById"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "order_id" + "}", with: "\(orderId)")

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
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
                        let response = Utility.decode(OrderList.self, from: data)

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
         * Summary: Get details of a shipment
         * Description: Use this API to retrieve shipment details such as price breakup, tracking details, store information, etc. using Shipment ID.
         **/
        public func getShipmentById(
            shipmentId: String,

            onResponse: @escaping (_ response: ShipmentById?, _ error: FDKError?) -> Void
        ) {
            var fullUrl = relativeUrls["getShipmentById"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
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
                        let response = Utility.decode(ShipmentById.self, from: data)

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
         * Summary: Get Invoice of a shipment
         * Description: Use this API to retrieve shipment invoice.
         **/
        public func getInvoiceByShipmentId(
            shipmentId: String,
            documentType: String?,

            onResponse: @escaping (_ response: ResponseGetInvoiceShipment?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = documentType {
                xQuery["document_type"] = value
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
                        let response = Utility.decode(ResponseGetInvoiceShipment.self, from: data)

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
         * Summary: Track shipment
         * Description: Track Shipment by shipment id, for application based on application Id
         **/
        public func trackShipment(
            shipmentId: String,

            onResponse: @escaping (_ response: ShipmentTrack?, _ error: FDKError?) -> Void
        ) {
            var fullUrl = relativeUrls["trackShipment"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
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
                        let response = Utility.decode(ShipmentTrack.self, from: data)

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
         * Summary: Get Customer Details by Shipment Id
         * Description: Use this API to retrieve customer details such as mobileno using Shipment ID.
         **/
        public func getCustomerDetailsByShipmentId(
            orderId: String,
            shipmentId: String,

            onResponse: @escaping (_ response: CustomerDetailsResponse?, _ error: FDKError?) -> Void
        ) {
            var fullUrl = relativeUrls["getCustomerDetailsByShipmentId"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "order_id" + "}", with: "\(orderId)")

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
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
                        let response = Utility.decode(CustomerDetailsResponse.self, from: data)

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
         * Summary: Send and Resend Otp code to Order-Shipment customer
         * Description: Use this API to send OTP to the customer of the mapped Shipment.
         **/
        public func sendOtpToShipmentCustomer(
            orderId: String,
            shipmentId: String,

            onResponse: @escaping (_ response: SendOtpToCustomerResponse?, _ error: FDKError?) -> Void
        ) {
            var fullUrl = relativeUrls["sendOtpToShipmentCustomer"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "order_id" + "}", with: "\(orderId)")

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
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
                        let response = Utility.decode(SendOtpToCustomerResponse.self, from: data)

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
         * Summary: Verify Otp code
         * Description: Use this API to verify OTP and create a session token with custom payload.
         **/
        public func verifyOtpShipmentCustomer(
            orderId: String,
            shipmentId: String,
            body: VerifyOtp,
            onResponse: @escaping (_ response: VerifyOtpResponse?, _ error: FDKError?) -> Void
        ) {
            var fullUrl = relativeUrls["verifyOtpShipmentCustomer"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "order_id" + "}", with: "\(orderId)")

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
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
                        let response = Utility.decode(VerifyOtpResponse.self, from: data)

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
         * Summary: Get reasons behind full or partial cancellation of a shipment
         * Description: Use this API to retrieve the issues that led to the cancellation of bags within a shipment.
         **/
        public func getShipmentBagReasons(
            shipmentId: String,
            bagId: String,

            onResponse: @escaping (_ response: ShipmentBagReasons?, _ error: FDKError?) -> Void
        ) {
            var fullUrl = relativeUrls["getShipmentBagReasons"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "bag_id" + "}", with: "\(bagId)")

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
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
                        let response = Utility.decode(ShipmentBagReasons.self, from: data)

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
         * Summary: Get reasons behind full or partial cancellation of a shipment
         * Description: Use this API to retrieve the issues that led to the cancellation of bags within a shipment.
         **/
        public func getShipmentReasons(
            shipmentId: String,

            onResponse: @escaping (_ response: ShipmentReasons?, _ error: FDKError?) -> Void
        ) {
            var fullUrl = relativeUrls["getShipmentReasons"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
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
                        let response = Utility.decode(ShipmentReasons.self, from: data)

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
         * Summary: Update the shipment status
         * Description: Use this API to update the status of a shipment using its shipment ID.
         **/
        public func updateShipmentStatus(
            shipmentId: String,
            body: UpdateShipmentStatusRequest,
            onResponse: @escaping (_ response: ShipmentApplicationStatusResponse?, _ error: FDKError?) -> Void
        ) {
            var fullUrl = relativeUrls["updateShipmentStatus"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")

            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: fullUrl,
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
                        let response = Utility.decode(ShipmentApplicationStatusResponse.self, from: data)

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
         * Description: updateShipmentStatus
         **/
        public func updateShipmentStatus1(
            shipmentId: String,
            body: UpdateShipmentStatusRequest,
            onResponse: @escaping (_ response: ShipmentApplicationStatusResponse?, _ error: FDKError?) -> Void
        ) {
            var fullUrl = relativeUrls["updateShipmentStatus1"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")

            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: fullUrl,
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
                        let response = Utility.decode(ShipmentApplicationStatusResponse.self, from: data)

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
