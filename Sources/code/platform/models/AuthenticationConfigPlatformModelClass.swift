

import Foundation
public extension PlatformClient {
    /*
         Model: AuthenticationConfig
         Used By: Configuration
     */

    class AuthenticationConfig: Codable {
        public var required: Bool?

        public var provider: String?

        public enum CodingKeys: String, CodingKey {
            case required

            case provider
        }

        public init(provider: String? = nil, required: Bool? = nil) {
            self.required = required

            self.provider = provider
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                required = try container.decode(Bool.self, forKey: .required)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                provider = try container.decode(String.self, forKey: .provider)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(required, forKey: .required)

            try? container.encodeIfPresent(provider, forKey: .provider)
        }
    }
}
