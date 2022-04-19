import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GTIN
         Used By: Catalog
     */

    class GTIN: Codable {
        public var gtinValue: String

        public var gtinType: String

        public var primary: Bool?

        public enum CodingKeys: String, CodingKey {
            case gtinValue = "gtin_value"

            case gtinType = "gtin_type"

            case primary
        }

        public init(gtinType: String, gtinValue: String, primary: Bool?) {
            self.gtinValue = gtinValue

            self.gtinType = gtinType

            self.primary = primary
        }

        public func duplicate() -> GTIN {
            let dict = self.dictionary!
            let copy = GTIN(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gtinValue = try container.decode(String.self, forKey: .gtinValue)

            gtinType = try container.decode(String.self, forKey: .gtinType)

            do {
                primary = try container.decode(Bool.self, forKey: .primary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gtinValue, forKey: .gtinValue)

            try? container.encodeIfPresent(gtinType, forKey: .gtinType)

            try? container.encodeIfPresent(primary, forKey: .primary)
        }
    }
}
