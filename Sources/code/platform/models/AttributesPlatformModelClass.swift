

import Foundation
public extension PlatformClient {
    /*
         Model: Attributes
         Used By: Order
     */

    class Attributes: Codable {
        public var marketerName: String?

        public var gender: [String]?

        public var primaryColor: String?

        public var brandName: String?

        public var primaryMaterial: String?

        public var name: String?

        public var marketerAddress: String?

        public var primaryColorHex: String?

        public var essential: String?

        public enum CodingKeys: String, CodingKey {
            case marketerName = "marketer_name"

            case gender

            case primaryColor = "primary_color"

            case brandName = "brand_name"

            case primaryMaterial = "primary_material"

            case name

            case marketerAddress = "marketer_address"

            case primaryColorHex = "primary_color_hex"

            case essential
        }

        public init(brandName: String? = nil, essential: String? = nil, gender: [String]? = nil, marketerAddress: String? = nil, marketerName: String? = nil, name: String? = nil, primaryColor: String? = nil, primaryColorHex: String? = nil, primaryMaterial: String? = nil) {
            self.marketerName = marketerName

            self.gender = gender

            self.primaryColor = primaryColor

            self.brandName = brandName

            self.primaryMaterial = primaryMaterial

            self.name = name

            self.marketerAddress = marketerAddress

            self.primaryColorHex = primaryColorHex

            self.essential = essential
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                marketerName = try container.decode(String.self, forKey: .marketerName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gender = try container.decode([String].self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                primaryColor = try container.decode(String.self, forKey: .primaryColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandName = try container.decode(String.self, forKey: .brandName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                primaryMaterial = try container.decode(String.self, forKey: .primaryMaterial)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketerAddress = try container.decode(String.self, forKey: .marketerAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                primaryColorHex = try container.decode(String.self, forKey: .primaryColorHex)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                essential = try container.decode(String.self, forKey: .essential)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(marketerName, forKey: .marketerName)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(primaryColor, forKey: .primaryColor)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(primaryMaterial, forKey: .primaryMaterial)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(marketerAddress, forKey: .marketerAddress)

            try? container.encodeIfPresent(primaryColorHex, forKey: .primaryColorHex)

            try? container.encodeIfPresent(essential, forKey: .essential)
        }
    }
}
