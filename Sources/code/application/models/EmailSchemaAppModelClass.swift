

import Foundation
public extension ApplicationClient {
    /*
         Model: EmailSchema
         Used By: Content
     */
    class EmailSchema: Codable {
        public var active: Bool?

        public var email: [EmailProperties]?

        public enum CodingKeys: String, CodingKey {
            case active

            case email
        }

        public init(active: Bool? = nil, email: [EmailProperties]? = nil) {
            self.active = active

            self.email = email
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
                email = try container.decode([EmailProperties].self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
