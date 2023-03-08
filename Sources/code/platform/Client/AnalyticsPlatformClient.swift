import Foundation

public extension PlatformClient {
    class Analytics {
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }

        /**
         *
         * Summary: Create data export job in required format
         * Description: Create data export job in required format
         **/
        public func createExportJob(
            exportType: String,
            body: ExportJobReq,
            onResponse: @escaping (_ response: ExportJobRes?, _ error: FDKError?) -> Void
        ) {
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/analytics/v1.0/company/\(companyId)/export/\(exportType)",
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
                        let response = Utility.decode(ExportJobRes.self, from: data)

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
         * Summary: Get data export job status
         * Description: Get data export job status
         **/
        public func getExportJobStatus(
            exportType: String,
            jobId: String,

            onResponse: @escaping (_ response: ExportJobStatusRes?, _ error: FDKError?) -> Void
        ) {
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/analytics/v1.0/company/\(companyId)/export/\(exportType)/job/\(jobId)",
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
                        let response = Utility.decode(ExportJobStatusRes.self, from: data)

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
         * Summary: Get logs list
         * Description: Get logs list
         **/
        public func getLogsList(
            logType: String,
            pageNo: Int?,
            pageSize: Int?,
            body: GetLogsListReq,
            onResponse: @escaping (_ response: GetLogsListRes?, _ error: FDKError?) -> Void
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
                method: "post",
                url: "/service/platform/analytics/v1.0/company/\(companyId)/logs/\(logType)",
                query: xQuery,
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
                        let response = Utility.decode(GetLogsListRes.self, from: data)

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
         * Summary: get paginator for getLogsList
         * Description: fetch the next page by calling .next(...) function
         **/
        public func getLogsListPaginator(
            logType: String,
            pageSize: Int?,

            body: GetLogsListReq
        ) -> Paginator<GetLogsListRes> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<GetLogsListRes>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getLogsList(
                    logType: logType,
                    pageNo: paginator.pageNo,

                    pageSize: paginator.pageSize,
                    body: body
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
         * Summary: Search logs
         * Description: Search logs
         **/
        public func searchLogs(
            pageNo: Int?,
            pageSize: Int?,
            logType: String,
            body: SearchLogReq,
            onResponse: @escaping (_ response: SearchLogRes?, _ error: FDKError?) -> Void
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
                method: "post",
                url: "/service/platform/analytics/v1.0/company/\(companyId)/logs/\(logType)/search",
                query: xQuery,
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
                        let response = Utility.decode(SearchLogRes.self, from: data)

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
         * Summary: get paginator for searchLogs
         * Description: fetch the next page by calling .next(...) function
         **/
        public func searchLogsPaginator(
            pageSize: Int?,
            logType: String,

            body: SearchLogReq
        ) -> Paginator<SearchLogRes> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<SearchLogRes>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.searchLogs(
                    pageNo: paginator.pageNo,

                    pageSize: paginator.pageSize,

                    logType: logType, body: body
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
