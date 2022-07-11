

import Foundation
public extension PlatformClient {
    /*
         Model: GTIN
         Used By: Catalog
     */

    class GTIN: Codable {
        public var primary: Bool?

        public var gtinValue: String

        public var gtinType: String

        public enum CodingKeys: String, CodingKey {
            case primary

            case gtinValue = "gtin_value"

            case gtinType = "gtin_type"
        }

        public init(gtinType: String, gtinValue: String, primary: Bool? = nil) {
            self.primary = primary

            self.gtinValue = gtinValue

            self.gtinType = gtinType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                primary = try container.decode(Bool.self, forKey: .primary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gtinValue = try container.decode(String.self, forKey: .gtinValue)

            gtinType = try container.decode(String.self, forKey: .gtinType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(primary, forKey: .primary)

            try? container.encodeIfPresent(gtinValue, forKey: .gtinValue)

            try? container.encodeIfPresent(gtinType, forKey: .gtinType)
        }
    }
}
