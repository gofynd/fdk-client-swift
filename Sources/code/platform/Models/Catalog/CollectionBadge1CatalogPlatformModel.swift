

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CollectionBadge1
         Used By: Catalog
     */

    class CollectionBadge1: Codable {
        public var text: String?

        public var color: String?

        public enum CodingKeys: String, CodingKey {
            case text

            case color
        }

        public init(color: String? = nil, text: String? = nil) {
            self.text = text

            self.color = color
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(color, forKey: .color)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CollectionBadge1
         Used By: Catalog
     */

    class CollectionBadge1: Codable {
        public var text: String?

        public var color: String?

        public enum CodingKeys: String, CodingKey {
            case text

            case color
        }

        public init(color: String? = nil, text: String? = nil) {
            self.text = text

            self.color = color
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(color, forKey: .color)
        }
    }
}
