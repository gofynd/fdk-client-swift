

import Foundation
public extension PlatformClient {
    /*
         Model: State
         Used By: Cart
     */

    class State: Codable {
        public var isDisplay: Bool?

        public var isPublic: Bool?

        public var isArchived: Bool?

        public enum CodingKeys: String, CodingKey {
            case isDisplay = "is_display"

            case isPublic = "is_public"

            case isArchived = "is_archived"
        }

        public init(isArchived: Bool? = nil, isDisplay: Bool? = nil, isPublic: Bool? = nil) {
            self.isDisplay = isDisplay

            self.isPublic = isPublic

            self.isArchived = isArchived
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isDisplay = try container.decode(Bool.self, forKey: .isDisplay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPublic = try container.decode(Bool.self, forKey: .isPublic)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDisplay, forKey: .isDisplay)

            try? container.encodeIfPresent(isPublic, forKey: .isPublic)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
        }
    }
}
