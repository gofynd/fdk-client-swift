import Alamofire
import Foundation

public extension ApplicationClient.FileStorage {
    func upload(data: Data, withFileName fileName: String, as contentType: String, toNameSpace namespace: String, onResponse: @escaping (_ response: ApplicationClient.FileStorage.CompleteResponse?, _ error: FDKError?) -> Void) {
        startUpload(namespace: namespace, body: ApplicationClient.FileStorage.StartRequest(contentType: contentType, fileName: fileName, params: nil, size: data.count, tags: nil)) { (startResponse, error) in
            guard let startResponse = startResponse else {
                return onResponse(nil, error)
            }
            AF.upload(data, to: startResponse.upload.url, method: .put, headers: ["Content-Type": contentType]).validate(statusCode: [200]).response { (response) in
                switch response.result {
                case .success(_):
                    self.completeUpload(namespace: namespace, body: startResponse) { (completeResponse, error) in
                        onResponse(completeResponse, error)
                    }
                case .failure(let error):
                    onResponse(nil, FDKError(message: "Upload Failed [\(error.errorDescription ?? "Something went wrong")]", status: error.responseCode, code: nil, exception: nil, info: nil, requestID: nil, stackTrace: nil, meta: nil))
                }
            }
        }
    }
}
