

import Foundation
public extension ApplicationClient {
    /*
         Model: ColumnHeader
         Used By: Catalog
     */
    class ColumnHeader: Codable {
        public var value: String?

        public var convertable: Bool?

        public enum CodingKeys: String, CodingKey {
            case value

            case convertable
        }

        public init(convertable: Bool? = nil, value: String? = nil) {
            self.value = value

            self.convertable = convertable
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                convertable = try container.decode(Bool.self, forKey: .convertable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(convertable, forKey: .convertable)
        }
    }
}
