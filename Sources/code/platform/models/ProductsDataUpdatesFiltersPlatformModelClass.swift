

import Foundation
public extension PlatformClient {
    /*
         Model: ProductsDataUpdatesFilters
         Used By: Order
     */

    class ProductsDataUpdatesFilters: Codable {
        public var identifier: String?

        public var lineNumber: Int?

        public enum CodingKeys: String, CodingKey {
            case identifier

            case lineNumber = "line_number"
        }

        public init(identifier: String? = nil, lineNumber: Int? = nil) {
            self.identifier = identifier

            self.lineNumber = lineNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
        }
    }
}
