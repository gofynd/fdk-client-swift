

import Foundation
public extension ApplicationClient {
    /*
         Model: Ios
         Used By: Configuration
     */
    class Ios: Codable {
        public var applicationId: String?

        public var apiKey: String?

        public enum CodingKeys: String, CodingKey {
            case applicationId = "application_id"

            case apiKey = "api_key"
        }

        public init(apiKey: String? = nil, applicationId: String? = nil) {
            self.applicationId = applicationId

            self.apiKey = apiKey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

                if let strong_applicationId = applicationId,
                   let applicationIdData = Data(base64Encoded: strong_applicationId)
                {
                    applicationId = String(data: applicationIdData, encoding: .utf8) ?? applicationId
                }

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                apiKey = try container.decode(String.self, forKey: .apiKey)

                if let strong_apiKey = apiKey,
                   let apiKeyData = Data(base64Encoded: strong_apiKey)
                {
                    apiKey = String(data: apiKeyData, encoding: .utf8) ?? apiKey
                }

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationId?.asBase64, forKey: .applicationId)

            try? container.encodeIfPresent(apiKey?.asBase64, forKey: .apiKey)
        }
    }
}
