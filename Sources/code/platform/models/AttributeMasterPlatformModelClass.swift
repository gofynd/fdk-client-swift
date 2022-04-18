import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: AttributeMaster
         Used By: Catalog
     */

    class AttributeMaster: Codable {
        public var range: AttributeSchemaRange?

        public var multi: Bool?

        public var format: String?

        public var type: String

        public var mandatory: Bool?

        public var allowedValues: [String]?

        public enum CodingKeys: String, CodingKey {
            case range

            case multi

            case format

            case type

            case mandatory

            case allowedValues = "allowed_values"
        }

        public init(allowedValues: [String]?, format: String?, mandatory: Bool?, multi: Bool?, range: AttributeSchemaRange?, type: String) {
            self.range = range

            self.multi = multi

            self.format = format

            self.type = type

            self.mandatory = mandatory

            self.allowedValues = allowedValues
        }

        public func duplicate() -> AttributeMaster {
            let dict = self.dictionary!
            let copy = AttributeMaster(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                range = try container.decode(AttributeSchemaRange.self, forKey: .range)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                multi = try container.decode(Bool.self, forKey: .multi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                format = try container.decode(String.self, forKey: .format)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            do {
                mandatory = try container.decode(Bool.self, forKey: .mandatory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowedValues = try container.decode([String].self, forKey: .allowedValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(range, forKey: .range)

            try? container.encodeIfPresent(multi, forKey: .multi)

            try? container.encodeIfPresent(format, forKey: .format)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(mandatory, forKey: .mandatory)

            try? container.encodeIfPresent(allowedValues, forKey: .allowedValues)
        }
    }
}
