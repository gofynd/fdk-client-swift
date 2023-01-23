

import Foundation
public extension ApplicationClient {
    /*
         Model: GtmCredentials
         Used By: Configuration
     */
    class GtmCredentials: Codable {
        public var apiKey: String?

        public enum CodingKeys: String, CodingKey {
            case apiKey = "api_key"
        }

        public init(apiKey: String? = nil) {
            self.apiKey = apiKey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            try? container.encodeIfPresent(apiKey?.asBase64, forKey: .apiKey)
        }
    }
}
