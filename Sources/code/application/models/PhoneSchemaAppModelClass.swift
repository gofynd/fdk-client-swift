

import Foundation
public extension ApplicationClient {
    /*
         Model: PhoneSchema
         Used By: Content
     */
    class PhoneSchema: Codable {
        public var active: Bool?

        public var phone: [PhoneProperties]?

        public enum CodingKeys: String, CodingKey {
            case active

            case phone
        }

        public init(active: Bool? = nil, phone: [PhoneProperties]? = nil) {
            self.active = active

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode([PhoneProperties].self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
