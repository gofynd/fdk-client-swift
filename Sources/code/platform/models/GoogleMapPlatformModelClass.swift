

import Foundation
public extension PlatformClient {
    /*
         Model: GoogleMap
         Used By: Configuration
     */

    class GoogleMap: Codable {
        public var credentials: GoogleMapCredentials?

        public enum CodingKeys: String, CodingKey {
            case credentials
        }

        public init(credentials: GoogleMapCredentials? = nil) {
            self.credentials = credentials
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                credentials = try container.decode(GoogleMapCredentials.self, forKey: .credentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(credentials, forKey: .credentials)
        }
    }
}
