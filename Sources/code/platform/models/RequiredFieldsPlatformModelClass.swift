import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: RequiredFields
         Used By: User
     */

    class RequiredFields: Codable {
        public var email: PlatformEmail?

        public var mobile: PlatformMobile?

        public enum CodingKeys: String, CodingKey {
            case email

            case mobile
        }

        public init(email: PlatformEmail?, mobile: PlatformMobile?) {
            self.email = email

            self.mobile = mobile
        }

        public func duplicate() -> RequiredFields {
            let dict = self.dictionary!
            let copy = RequiredFields(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(PlatformEmail.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(PlatformMobile.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
