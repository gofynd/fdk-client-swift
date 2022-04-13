import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: State
         Used By: Cart
     */

    class State: Codable {
        public var isDisplay: Bool?

        public var isArchived: Bool?

        public var isPublic: Bool?

        public enum CodingKeys: String, CodingKey {
            case isDisplay = "is_display"

            case isArchived = "is_archived"

            case isPublic = "is_public"
        }

        public init(isArchived: Bool?, isDisplay: Bool?, isPublic: Bool?) {
            self.isDisplay = isDisplay

            self.isArchived = isArchived

            self.isPublic = isPublic
        }

        public func duplicate() -> State {
            let dict = self.dictionary!
            let copy = State(dictionary: dict)!
            return copy
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDisplay, forKey: .isDisplay)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(isPublic, forKey: .isPublic)
        }
    }
}
