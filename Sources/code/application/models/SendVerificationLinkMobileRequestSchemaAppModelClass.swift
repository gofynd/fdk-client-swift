

import Foundation
public extension ApplicationClient {
    /*
         Model: SendVerificationLinkMobileRequestSchema
         Used By: User
     */
    class SendVerificationLinkMobileRequestSchema: Codable {
        public var verified: Bool?

        public var active: Bool?

        public var countryCode: String?

        public var phone: String?

        public var primary: Bool?

        public enum CodingKeys: String, CodingKey {
            case verified

            case active

            case countryCode = "country_code"

            case phone

            case primary
        }

        public init(active: Bool? = nil, countryCode: String? = nil, phone: String? = nil, primary: Bool? = nil, verified: Bool? = nil) {
            self.verified = verified

            self.active = active

            self.countryCode = countryCode

            self.phone = phone

            self.primary = primary
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(String.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                primary = try container.decode(Bool.self, forKey: .primary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(primary, forKey: .primary)
        }
    }
}
