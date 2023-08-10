

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ValidateIdentifier
         Used By: Catalog
     */

    class ValidateIdentifier: Codable {
        public var primary: Bool?

        public var gtinType: String

        public var gtinValue: String

        public enum CodingKeys: String, CodingKey {
            case primary

            case gtinType = "gtin_type"

            case gtinValue = "gtin_value"
        }

        public init(gtinType: String, gtinValue: String, primary: Bool? = nil) {
            self.primary = primary

            self.gtinType = gtinType

            self.gtinValue = gtinValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                primary = try container.decode(Bool.self, forKey: .primary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gtinType = try container.decode(String.self, forKey: .gtinType)

            gtinValue = try container.decode(String.self, forKey: .gtinValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(primary, forKey: .primary)

            try? container.encodeIfPresent(gtinType, forKey: .gtinType)

            try? container.encodeIfPresent(gtinValue, forKey: .gtinValue)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ValidateIdentifier
         Used By: Catalog
     */

    class ValidateIdentifier: Codable {
        public var primary: Bool?

        public var gtinType: String

        public var gtinValue: String

        public enum CodingKeys: String, CodingKey {
            case primary

            case gtinType = "gtin_type"

            case gtinValue = "gtin_value"
        }

        public init(gtinType: String, gtinValue: String, primary: Bool? = nil) {
            self.primary = primary

            self.gtinType = gtinType

            self.gtinValue = gtinValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                primary = try container.decode(Bool.self, forKey: .primary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gtinType = try container.decode(String.self, forKey: .gtinType)

            gtinValue = try container.decode(String.self, forKey: .gtinValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(primary, forKey: .primary)

            try? container.encodeIfPresent(gtinType, forKey: .gtinType)

            try? container.encodeIfPresent(gtinValue, forKey: .gtinValue)
        }
    }
}
