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
            searchValue: String?,
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

            if let value = searchValue {
                xQuery["search_value"] = value
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
        public func getOrders(
            lane: String?,
            searchType: String?,
            searchValue: String?,
            fromDate: String?,
            toDate: String?,
            dpIds: String?,
            stores: String?,
            salesChannel: String?,
            pageNo: Int?,
            pageSize: Int?,
            isPrioritySort: Bool?,

            onResponse: @escaping (_ response: OrderListingResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = lane {
                xQuery["lane"] = value
            }

            if let value = searchType {
                xQuery["search_type"] = value
            }

            if let value = searchValue {
                xQuery["search_value"] = value
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

            if let value = pageNo {
                xQuery["page_no"] = value
            }

            if let value = pageSize {
                xQuery["page_size"] = value
            }

            if let value = isPrioritySort {
                xQuery["is_priority_sort"] = value
            }

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v1.0/company/\(companyId)/orders-listing",
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
                        let response = Utility.decode(OrderListingResponse.self, from: data)

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
         * Summary:
         * Description:
         **/
        public func getBulkInvoice(
            batchId: String,
            docType: String,

            onResponse: @escaping (_ response: BulkInvoicingResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            xQuery["batch_id"] = batchId

            xQuery["doc_type"] = docType

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v1.0/company/\(companyId)/bulk-action/invoice",
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
                        let response = Utility.decode(BulkInvoicingResponse.self, from: data)

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
        public func getBulkInvoiceLabel(
            batchId: String,

            onResponse: @escaping (_ response: BulkInvoiceLabelResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            xQuery["batch_id"] = batchId

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v1.0/company/\(companyId)/invoice-label-external",
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
                        let response = Utility.decode(BulkInvoiceLabelResponse.self, from: data)

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
        public func getBulkShipmentExcelFile(
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

            onResponse: @escaping (_ response: FileResponse?, _ error: FDKError?) -> Void
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

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v1.0/company/\(companyId)/generate/file",
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
                        let response = Utility.decode(FileResponse.self, from: data)

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
        public func getBulkList(
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

            onResponse: @escaping (_ response: BulkListingResponse?, _ error: FDKError?) -> Void
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

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v1.0/company/\(companyId)/bulk-action/listing",
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
                        let response = Utility.decode(BulkListingResponse.self, from: data)

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
        public func getManifestList(
            status: String?,
            storeId: Int?,
            pageNo: Int?,
            pageSize: Int?,
            searchValue: String?,
            fromDate: String?,
            toDate: String?,

            onResponse: @escaping (_ response: GeneratedManifestResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = status {
                xQuery["status"] = value
            }

            if let value = storeId {
                xQuery["store_id"] = value
            }

            if let value = pageNo {
                xQuery["page_no"] = value
            }

            if let value = pageSize {
                xQuery["page_size"] = value
            }

            if let value = searchValue {
                xQuery["search_value"] = value
            }

            if let value = fromDate {
                xQuery["from_date"] = value
            }

            if let value = toDate {
                xQuery["to_date"] = value
            }

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v1.0/company/\(companyId)/generated-manifests",
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
                        let response = Utility.decode(GeneratedManifestResponse.self, from: data)

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
        public func getManifestDetailsWithShipments(
            manifestId: String,
            fromDate: String?,
            toDate: String?,
            storeId: Int,
            page: Int?,
            pageSize: Int?,
            lane: String?,
            dpIds: Int?,
            searchType: String?,
            searchValue: String?,

            onResponse: @escaping (_ response: ManifestDetailResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            xQuery["manifest_id"] = manifestId

            if let value = fromDate {
                xQuery["from_date"] = value
            }

            if let value = toDate {
                xQuery["to_date"] = value
            }

            xQuery["store_id"] = storeId

            if let value = page {
                xQuery["page"] = value
            }

            if let value = pageSize {
                xQuery["page_size"] = value
            }

            if let value = lane {
                xQuery["lane"] = value
            }

            if let value = dpIds {
                xQuery["dp_ids"] = value
            }

            if let value = searchType {
                xQuery["search_type"] = value
            }

            if let value = searchValue {
                xQuery["search_value"] = value
            }

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v1.0/company/\(companyId)/manifest-details",
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
                        let response = Utility.decode(ManifestDetailResponse.self, from: data)

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
        public func getBulkActionFailedReport(
            batchId: String,
            reportType: String?,

            onResponse: @escaping (_ response: FileResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            xQuery["batch_id"] = batchId

            if let value = reportType {
                xQuery["report_type"] = value
            }

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v1.0/company/\(companyId)/bulk-action-failed-report/",
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
                        let response = Utility.decode(FileResponse.self, from: data)

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
        public func getPlatformShipmentReasons(
            shipmentId: String,
            bagId: String,
            state: String,

            onResponse: @escaping (_ response: PlatformShipmentReasonsResponse?, _ error: FDKError?) -> Void
        ) {
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/orders/v1.0/company/\(companyId)/shipments/\(shipmentId)/bags/\(bagId)/state/\(state)/reasons",
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
                        let response = Utility.decode(PlatformShipmentReasonsResponse.self, from: data)

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
            body: BulkActionPayload,
            onResponse: @escaping (_ response: BulkActionResponse?, _ error: FDKError?) -> Void
        ) {
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/orders/v2.0/company/\(companyId)/bulk-action/",
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

        /**
         *
         * Summary:
         * Description: Invalidate shipment Cache
         **/
        public func invalidateShipmentCache(
            body: InvalidateShipmentCachePayload,
            onResponse: @escaping (_ response: InvalidateShipmentCacheResponse?, _ error: FDKError?) -> Void
        ) {
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/update-cache",
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
                        let response = Utility.decode(InvalidateShipmentCacheResponse.self, from: data)

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
         * Description: Reassign Location
         **/
        public func reassignLocation(
            body: StoreReassign,
            onResponse: @escaping (_ response: StoreReassignResponse?, _ error: FDKError?) -> Void
        ) {
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/store/reassign-internal",
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
                        let response = Utility.decode(StoreReassignResponse.self, from: data)

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
         * Description: update shipment lock
         **/
        public func updateShipmentLock(
            body: UpdateShipmentLockPayload,
            onResponse: @escaping (_ response: UpdateShipmentLockResponse?, _ error: FDKError?) -> Void
        ) {
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/entity/lock-manager",
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
                        let response = Utility.decode(UpdateShipmentLockResponse.self, from: data)

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
        public func getAnnouncements(
            date: String?,

            onResponse: @escaping (_ response: AnnouncementsResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = date {
                xQuery["date"] = value
            }

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/announcements",
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
                        let response = Utility.decode(AnnouncementsResponse.self, from: data)

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
        public func updateAddress(
            shipmentId: String,
            name: String?,
            address: String?,
            addressType: String?,
            pincode: String?,
            phone: String?,
            email: String?,
            landmark: String?,
            addressCategory: String,
            city: String?,
            state: String?,
            country: String?,

            onResponse: @escaping (_ response: BaseResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            xQuery["shipment_id"] = shipmentId

            if let value = name {
                xQuery["name"] = value
            }

            if let value = address {
                xQuery["address"] = value
            }

            if let value = addressType {
                xQuery["address_type"] = value
            }

            if let value = pincode {
                xQuery["pincode"] = value
            }

            if let value = phone {
                xQuery["phone"] = value
            }

            if let value = email {
                xQuery["email"] = value
            }

            if let value = landmark {
                xQuery["landmark"] = value
            }

            xQuery["address_category"] = addressCategory

            if let value = city {
                xQuery["city"] = value
            }

            if let value = state {
                xQuery["state"] = value
            }

            if let value = country {
                xQuery["country"] = value
            }

            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/delight/update-address",
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
                        let response = Utility.decode(BaseResponse.self, from: data)

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
        public func click2Call(
            caller: String,
            receiver: String,
            bagId: String,
            callingTo: String?,
            callerId: String?,

            onResponse: @escaping (_ response: Click2CallResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            xQuery["caller"] = caller

            xQuery["receiver"] = receiver

            xQuery["bag_id"] = bagId

            if let value = callingTo {
                xQuery["calling_to"] = value
            }

            if let value = callerId {
                xQuery["caller_id"] = value
            }

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/ninja/click2call",
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
                        let response = Utility.decode(Click2CallResponse.self, from: data)

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
         * Description: Reassign Location
         **/
        public func statusUpdateInternalV4(
            body: StatusUpdateInternalRequest,
            onResponse: @escaping (_ response: StatusUpdateInternalResponse?, _ error: FDKError?) -> Void
        ) {
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/shipment/status-internal",
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
                        let response = Utility.decode(StatusUpdateInternalResponse.self, from: data)

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
        public func processManifest(
            body: CreateOrderPayload,
            onResponse: @escaping (_ response: CreateOrderResponse?, _ error: FDKError?) -> Void
        ) {
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/process-manifest",
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
                        let response = Utility.decode(CreateOrderResponse.self, from: data)

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
        public func getRoleBasedActions(
            onResponse: @escaping (_ response: GetActionsResponse?, _ error: FDKError?) -> Void
        ) {
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/roles",
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
                        let response = Utility.decode(GetActionsResponse.self, from: data)

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
        public func getShipmentHistory(
            shipmentId: Int?,
            bagId: Int?,

            onResponse: @escaping (_ response: ShipmentHistoryResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = shipmentId {
                xQuery["shipment_id"] = value
            }

            if let value = bagId {
                xQuery["bag_id"] = value
            }

            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/shipment/history",
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
                        let response = Utility.decode(ShipmentHistoryResponse.self, from: data)

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
        public func sendSmsNinja(
            body: SendSmsPayload,
            onResponse: @escaping (_ response: OrderStatusResult?, _ error: FDKError?) -> Void
        ) {
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/ninja/send-sms",
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
                        let response = Utility.decode(OrderStatusResult.self, from: data)

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
        public func platformManualAssignDPToShipment(
            body: ManualAssignDPToShipment,
            onResponse: @escaping (_ response: ManualAssignDPToShipmentResponse?, _ error: FDKError?) -> Void
        ) {
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/oms/manual-place-shipment",
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
                        let response = Utility.decode(ManualAssignDPToShipmentResponse.self, from: data)

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
        public func updatePackagingDimensions(
            body: CreateOrderPayload,
            onResponse: @escaping (_ response: CreateOrderResponse?, _ error: FDKError?) -> Void
        ) {
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/update-packaging-dimension",
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
                        let response = Utility.decode(CreateOrderResponse.self, from: data)

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
        public func createOrder(
            body: CreateOrderAPI,
            onResponse: @escaping (_ response: CreateOrderResponse?, _ error: FDKError?) -> Void
        ) {
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/create-order",
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
                        let response = Utility.decode(CreateOrderResponse.self, from: data)

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
        public func checkOrderStatus(
            body: OrderStatus,
            onResponse: @escaping (_ response: OrderStatusResult?, _ error: FDKError?) -> Void
        ) {
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/debug/order_status",
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
                        let response = Utility.decode(OrderStatusResult.self, from: data)

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
