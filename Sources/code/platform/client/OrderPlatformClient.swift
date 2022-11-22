import Foundation

public extension PlatformClient {
    class Order {
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
        public func getShipmentList(
            lane: String?,
            searchType: String?,
            searchId: String?,
            fromDate: String?,
            toDate: String?,
            dpIds: String?,
            orderingCompanyId: String?,
            stores: String?,
            salesChannel: String?,
            requestByExt: String?,
            pageNo: Int?,
            pageSize: Int?,
            customerId: String?,
            isPrioritySort: Bool?,
            excludeLockedShipments: Bool?,

            onResponse: @escaping (_ response: ShipmentInternalPlatformViewResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = lane {
                xQuery["lane"] = value
            }

            if let value = searchType {
                xQuery["search_type"] = value
            }

            if let value = searchId {
                xQuery["search_id"] = value
            }

            if let value = fromDate {
                xQuery["from_date"] = value
            }

            if let value = toDate {
                xQuery["to_date"] = value
            }

            if let value = dpIds {
                xQuery["dp_ids"] = value
            }

            if let value = orderingCompanyId {
                xQuery["ordering_company_id"] = value
            }

            if let value = stores {
                xQuery["stores"] = value
            }

            if let value = salesChannel {
                xQuery["sales_channel"] = value
            }

            if let value = requestByExt {
                xQuery["request_by_ext"] = value
            }

            if let value = pageNo {
                xQuery["page_no"] = value
            }

            if let value = pageSize {
                xQuery["page_size"] = value
            }

            if let value = customerId {
                xQuery["customer_id"] = value
            }

            if let value = isPrioritySort {
                xQuery["is_priority_sort"] = value
            }

            if let value = excludeLockedShipments {
                xQuery["exclude_locked_shipments"] = value
            }

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v1.0/company/\(companyId)/shipments-listing",
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
                        let response = Utility.decode(ShipmentInternalPlatformViewResponse.self, from: data)

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
            shipmentId: String,
            orderingCompanyId: String?,
            requestByExt: String?,

            onResponse: @escaping (_ response: ShipmentInfoResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = orderingCompanyId {
                xQuery["ordering_company_id"] = value
            }

            if let value = requestByExt {
                xQuery["request_by_ext"] = value
            }

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v1.0/company/\(companyId)/shipmentDetails/\(shipmentId)",
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
                        let response = Utility.decode(ShipmentInfoResponse.self, from: data)

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
        public func getOrderShipmentDetails(
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
        public func getLaneConfig(
            superLane: String?,
            groupEntity: String?,
            fromDate: String?,
            toDate: String?,
            dpIds: String?,
            stores: String?,
            salesChannel: String?,
            paymentMode: String?,
            bagStatus: String?,

            onResponse: @escaping (_ response: LaneConfigResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = superLane {
                xQuery["super_lane"] = value
            }

            if let value = groupEntity {
                xQuery["group_entity"] = value
            }

            if let value = fromDate {
                xQuery["from_date"] = value
            }

            if let value = toDate {
                xQuery["to_date"] = value
            }

            if let value = dpIds {
                xQuery["dp_ids"] = value
            }

            if let value = stores {
                xQuery["stores"] = value
            }

            if let value = salesChannel {
                xQuery["sales_channel"] = value
            }

            if let value = paymentMode {
                xQuery["payment_mode"] = value
            }

            if let value = bagStatus {
                xQuery["bag_status"] = value
            }

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v1.0/company/\(companyId)/lane-config/",
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
                        let response = Utility.decode(LaneConfigResponse.self, from: data)

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
        public func getMetricCount(
            fromDate: String?,
            toDate: String?,

            onResponse: @escaping (_ response: MetricCountResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = fromDate {
                xQuery["from_date"] = value
            }

            if let value = toDate {
                xQuery["to_date"] = value
            }

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v1.0/company/\(companyId)/shipment/metrics-count/",
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
                        let response = Utility.decode(MetricCountResponse.self, from: data)

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
        public func getfilters(
            view: String,
            groupEntity: String?,

            onResponse: @escaping (_ response: FiltersResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            xQuery["view"] = view

            if let value = groupEntity {
                xQuery["group_entity"] = value
            }

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v1.0/company/\(companyId)/filter-listing",
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
                        let response = Utility.decode(FiltersResponse.self, from: data)

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
        public func createShipmentReport(
            fromDate: String?,
            toDate: String?,

            onResponse: @escaping (_ response: Success?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = fromDate {
                xQuery["from_date"] = value
            }

            if let value = toDate {
                xQuery["to_date"] = value
            }

            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/orders/v1.0/company/\(companyId)/reports/shipment",
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
                        let response = Utility.decode(Success.self, from: data)

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
        public func getReportsShipmentListing(
            pageNo: Int?,
            pageSize: Int?,

            onResponse: @escaping (_ response: OmsReports?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = pageNo {
                xQuery["page_no"] = value
            }

            if let value = pageSize {
                xQuery["page_size"] = value
            }

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v1.0/company/\(companyId)/reports/shipment-listing",
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
                        let response = Utility.decode(OmsReports.self, from: data)

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
        public func upsertJioCode(
            body: JioCodeUpsertPayload,
            onResponse: @escaping (_ response: JioCodeUpsertResponse?, _ error: FDKError?) -> Void
        ) {
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/orders/v1.0/company/\(companyId)/upsert/jiocode/article",
                query: nil,
                body: body.dictionary,
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
                        let response = Utility.decode(JioCodeUpsertResponse.self, from: data)

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
         * Summary: emits uuid to kafka topic.
         * Description: Use this API to start processing Xlsx file.
         **/
        public func bulkActionProcessXlsxFile(
            url: String,

            onResponse: @escaping (_ response: BulkActionResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            xQuery["url"] = url

            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/orders/v2.0/company/\(companyId)/bulk-action/",
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
                        let response = Utility.decode(BulkActionResponse.self, from: data)

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
         * Summary: Returns failed, processing and successfully processed shipments.
         * Description: Returns failed, processing and successfully processed shipments along with their counts and failed reasons.
         **/
        public func bulkActionDetails(
            batchId: String,

            onResponse: @escaping (_ response: BulkActionDetailsResponse?, _ error: FDKError?) -> Void
        ) {
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v2.0/company/\(companyId)/bulkAction/\(batchId)",
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
                        let response = Utility.decode(BulkActionDetailsResponse.self, from: data)

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
