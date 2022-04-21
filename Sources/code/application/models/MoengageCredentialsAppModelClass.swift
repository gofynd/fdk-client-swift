

import Foundation
public extension ApplicationClient {
    /*
         Model: MoengageCredentials
         Used By: Configuration
     */
    class MoengageCredentials: Codable {
        public var appId: String?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"
        }

        public init(appId: String? = nil) {
            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appId = try container.decode(String.self, forKey: .appId)

                if let strong_appId = appId,
                   let appIdData = Data(base64Encoded: strong_appId)
                {
                    appId = String(data: appIdData, encoding: .utf8) ?? appId
                }

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId?.asBase64, forKey: .appId)
        }
    }
}
