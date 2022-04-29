import Foundation

public extension PublicClient {
    class Inventory {
        var config: PublicConfig

        init(config: PublicConfig) {
            self.config = config
        }

        /**
         *
         * Summary: Get Job Config By Code
         * Description: REST Endpoint that returns job config by code
         **/
        public func getJobByCode(
            code: String,

            onResponse: @escaping (_ response: ResponseEnvelopeJobConfigDTO?, _ error: FDKError?) -> Void
        ) {
            PublicAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/common/inventory/v1.0/company/jobs/code/\(code)",
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
                        let response = Utility.decode(ResponseEnvelopeJobConfigDTO.self, from: data)

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
         * Summary: Get Job Configs By Integration Type
         * Description: REST Endpoint that returns all job Configs by Integration Type
         **/
        public func getJobConfigByIntegrationType(
            integrationType: String,
            disable: Bool?,

            onResponse: @escaping (_ response: ResponseEnvelopeListJobConfigDTO?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            xQuery["integration_type"] = integrationType

            if let value = disable {
                xQuery["disable"] = value
            }

            PublicAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/common/inventory/v1.0/company/job/config",
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
                        let response = Utility.decode(ResponseEnvelopeListJobConfigDTO.self, from: data)

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
         * Summary: Find all the JobCodes from Metrics Collection based on the field Values
         * Description: Endpoint to return all JobCodes present in Metrics Collection
         **/
        public func getJobCodesMetrics(
            dailyJob: Bool?,
            jobCode: String?,

            onResponse: @escaping (_ response: ResponseEnvelopeObject?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = dailyJob {
                xQuery["daily_job"] = value
            }

            if let value = jobCode {
                xQuery["job_code"] = value
            }

            PublicAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/common/inventory/v1.0/company/email/jobCode",
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
                        let response = Utility.decode(ResponseEnvelopeObject.self, from: data)

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
         * Summary: Save JobCode Metrics
         * Description: Endpoint to save JobCode Metrics
         **/
        public func saveJobCodesMetrics(
            body: EmailJobMetrics,
            onResponse: @escaping (_ response: ResponseEnvelopeEmailJobMetrics?, _ error: FDKError?) -> Void
        ) {
            PublicAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/common/inventory/v1.0/company/email/jobCode",
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
                        let response = Utility.decode(ResponseEnvelopeEmailJobMetrics.self, from: data)

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
