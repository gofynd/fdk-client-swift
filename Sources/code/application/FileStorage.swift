import Alamofire
import Foundation

public extension ApplicationClient.FileStorage {
    func upload(
    data: Data, 
    withFileName fileName: String, 
    as contentType: String, 
    toNameSpace namespace: String,
    withEncKey encKey: String?,
    onResponse: @escaping (_ response: ApplicationClient.FileStorage.FileUploadComplete?, _ error: FDKError?) -> Void
    ) {
        let requestBody = ApplicationClient.FileStorage.FileUploadStart(
            contentType: contentType,
            encKey: encKey,
            fileName: fileName,
            params: nil,
            size: data.count,
            tags: nil
            
            
        )

        startUpload(namespace: namespace, body: requestBody) { (startResponse, error) in
            guard let startResponse = startResponse else {
                return onResponse(nil, error)
            }
            AF.upload(data, to: startResponse.upload.url, method: .put, headers: ["Content-Type": contentType])
                .validate(statusCode: [200])
                .response { response in
                    switch response.result {
                    case .success(_):
                        self.completeUpload(namespace: namespace, body: startResponse) { (completeResponse, error) in
                            onResponse(completeResponse, error)
                        }
                    case .failure(let error):
                        onResponse(nil, FDKError(
                            message: "Upload Failed [\(error.errorDescription ?? "Something went wrong")]", 
                            status: error.responseCode, 
                            code: nil, 
                            exception: nil, 
                            info: nil, 
                            requestID: nil, 
                            stackTrace: nil, 
                            meta: nil
                        ))
                    }
                }
        }
    }
}
