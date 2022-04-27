

import Foundation
public extension PlatformClient {
    /*
         Model: State
         Used By: Cart
     */

    class State: Codable {
        public var isArchived: Bool?

        public var isPublic: Bool?

        public var isDisplay: Bool?

        public enum CodingKeys: String, CodingKey {
            case isArchived = "is_archived"

            case isPublic = "is_public"

            case isDisplay = "is_display"
        }

        public init(isArchived: Bool? = nil, isDisplay: Bool? = nil, isPublic: Bool? = nil) {
            self.isArchived = isArchived

            self.isPublic = isPublic

            self.isDisplay = isDisplay
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

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
                isDisplay = try container.decode(Bool.self, forKey: .isDisplay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(isPublic, forKey: .isPublic)

            try? container.encodeIfPresent(isDisplay, forKey: .isDisplay)
        }
    }
}
