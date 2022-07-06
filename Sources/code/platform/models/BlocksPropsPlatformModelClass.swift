

import Foundation
public extension PlatformClient {
    /*
         Model: BlocksProps
         Used By: Theme
     */

    class BlocksProps: Codable {
        public var id: String?

        public var label: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case label

            case type
        }

        public init(id: String? = nil, label: String? = nil, type: String? = nil) {
            self.id = id

            self.label = label

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                label = try container.decode(String.self, forKey: .label)

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

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(label, forKey: .label)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
