import Foundation

public extension ApplicationClient {
    class FileStorage {
        var config: ApplicationConfig
        var relativeUrls = [String: String]()

        init(config: ApplicationConfig) {
            self.config = config
            var ulrs = [String: String]()

            ulrs["startUpload"] = config.domain.appendAsPath("/service/application/assets/v1.0/namespaces/{namespace}/upload/start/")

            ulrs["completeUpload"] = config.domain.appendAsPath("/service/application/assets/v1.0/namespaces/{namespace}/upload/complete/")

            ulrs["signUrls"] = config.domain.appendAsPath("/service/application/assets/v1.0/sign-urls/")

            self.relativeUrls = ulrs
        }

        public func update(updatedUrl: [String: String]) {
            for (key, value) in updatedUrl {
                self.relativeUrls[key] = value
            }
        }

        /**
                 *
                 * Summary: Initiates an upload and returns a storage link that is valid for 30 minutes. You can use the storage link to make subsequent upload request with file buffer or blob.
                 * Description: Use this API to perform the first step of uploading (i.e. **Start**) an arbitrarily sized buffer or blob.

         The three major steps are:
         * Start
         * Upload
         * Complete

         ### Start
         Initiates the assets upload using `startUpload`.
         It returns a storage link in response.

         ### Upload
         Use the storage link to upload a file (Buffer or Blob) to the File Storage.
         Make a `PUT` request on storage link received from `startUpload` API with the file (Buffer or Blob) in the request body.

         ### Complete
         After successfully upload, call the `completeUpload` API to finish the upload process.
         This operation will return the URL of the uploaded file.

                 **/
        public func startUpload(
            namespace: String,
            body: StartRequest,
            onResponse: @escaping (_ response: StartResponse?, _ error: FDKError?) -> Void
        ) {
            var fullUrl = relativeUrls["startUpload"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "namespace" + "}", with: "\(namespace)")

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
                        let response = Utility.decode(StartResponse.self, from: data)

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
                 * Summary: Completes the upload process. After successfully uploading a file, call this API to finish the upload process.
                 * Description: Use this API to perform the third step of uploading (i.e. **Complete**) an arbitrarily sized buffer or blob.

         The three major steps are:
         * Start
         * Upload
         * Complete

         ### Start
         Initiates the assets upload using `startUpload`.
         It returns a storage link in response.

         ### Upload
         Use the storage link to upload a file (Buffer or Blob) to the File Storage.
         Make a `PUT` request on storage link received from `startUpload` API with the file (Buffer or Blob) in the request body.

         ### Complete
         After successfully upload, call the `completeUpload` API to finish the upload process.
         This operation will return the URL of the uploaded file.

                 **/
        public func completeUpload(
            namespace: String,
            body: StartResponse,
            onResponse: @escaping (_ response: CompleteResponse?, _ error: FDKError?) -> Void
        ) {
            var fullUrl = relativeUrls["completeUpload"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "namespace" + "}", with: "\(namespace)")

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
                        let response = Utility.decode(CompleteResponse.self, from: data)

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
         * Summary: Explain here
         * Description: Describe here
         **/
        public func signUrls(
            body: SignUrlRequest,
            onResponse: @escaping (_ response: SignUrlResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["signUrls"] ?? ""

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
                        let response = Utility.decode(SignUrlResponse.self, from: data)

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
