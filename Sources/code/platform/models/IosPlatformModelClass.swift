

import Foundation
public extension PlatformClient {
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

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                apiKey = try container.decode(String.self, forKey: .apiKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(apiKey, forKey: .apiKey)
        }
    }
}
