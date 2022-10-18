

import Foundation
public extension ApplicationClient {
    /*
         Model: SessionExpiry
         Used By: User
     */
    class SessionExpiry: Codable {
        public var duration: Int?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case duration

            case type
        }

        public init(duration: Int? = nil, type: String? = nil) {
            self.duration = duration

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                duration = try container.decode(Int.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(duration, forKey: .duration)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
