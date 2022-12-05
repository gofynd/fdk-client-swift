

import Foundation
public extension PlatformClient {
    /*
         Model: SessionExpiry
         Used By: User
     */

    class SessionExpiry: Codable {
        public var duration: Int?

        public var type: String?

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case duration

            case type

            case isActive = "is_active"
        }

        public init(duration: Int? = nil, isActive: Bool? = nil, type: String? = nil) {
            self.duration = duration

            self.type = type

            self.isActive = isActive
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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(duration, forKey: .duration)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
