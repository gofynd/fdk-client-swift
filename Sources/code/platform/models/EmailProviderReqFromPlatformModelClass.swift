

import Foundation
public extension PlatformClient {
    /*
         Model: EmailProviderReqFrom
         Used By: Communication
     */

    class EmailProviderReqFrom: Codable {
        public var name: String?

        public var email: String?

        public var isDefault: Bool?

        public enum CodingKeys: String, CodingKey {
            case name

            case email

            case isDefault = "is_default"
        }

        public init(email: String? = nil, isDefault: Bool? = nil, name: String? = nil) {
            self.name = name

            self.email = email

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}
