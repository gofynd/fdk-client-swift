

import Foundation
public extension PlatformClient {
    /*
         Model: GTIN
         Used By: Catalog
     */

    class GTIN: Codable {
        public var gtinType: String

        public var gtinValue: [String: Any]

        public var primary: Bool?

        public enum CodingKeys: String, CodingKey {
            case gtinType = "gtin_type"

            case gtinValue = "gtin_value"

            case primary
        }

        public init(gtinType: String, gtinValue: [String: Any], primary: Bool? = nil) {
            self.gtinType = gtinType

            self.gtinValue = gtinValue

            self.primary = primary
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gtinType = try container.decode(String.self, forKey: .gtinType)

            gtinValue = try container.decode([String: Any].self, forKey: .gtinValue)

            do {
                primary = try container.decode(Bool.self, forKey: .primary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gtinType, forKey: .gtinType)

            try? container.encodeIfPresent(gtinValue, forKey: .gtinValue)

            try? container.encodeIfPresent(primary, forKey: .primary)
        }
    }
}
