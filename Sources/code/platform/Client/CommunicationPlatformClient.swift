import Foundation

public extension PlatformClient {
    class Communication {
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }

        /**
         *
         * Summary: Get system notifications
         * Description: Get system notifications
         **/
        public func getSystemNotifications(
            pageNo: Int?,
            pageSize: Int?,

            onResponse: @escaping (_ response: SystemNotifications?, _ error: FDKError?) -> Void
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
                url: "/service/platform/communication/v1.0/company/\(companyId)/notification/system-notifications/",
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
                        let response = Utility.decode(SystemNotifications.self, from: data)

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
         * Summary: get paginator for getSystemNotifications
         * Description: fetch the next page by calling .next(...) function
         **/
        public func getSystemNotificationsPaginator(
            pageSize: Int?

        ) -> Paginator<SystemNotifications> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<SystemNotifications>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getSystemNotifications(
                    pageNo: paginator.pageNo,

                    pageSize: paginator.pageSize

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
    }
}
