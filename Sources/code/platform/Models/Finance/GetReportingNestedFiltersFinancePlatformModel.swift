

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GetReportingNestedFilters
         Used By: Finance
     */

    class GetReportingNestedFilters: Codable {
        public var placeholderText: String?

        public var required: Bool?

        public var options: [[String: Any]]?

        public var text: String?

        public var type: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case placeholderText = "placeholder_text"

            case required

            case options

            case text

            case type

            case value
        }

        public init(options: [[String: Any]]? = nil, placeholderText: String? = nil, required: Bool? = nil, text: String? = nil, type: String? = nil, value: String? = nil) {
            self.placeholderText = placeholderText

            self.required = required

            self.options = options

            self.text = text

            self.type = type

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                placeholderText = try container.decode(String.self, forKey: .placeholderText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                required = try container.decode(Bool.self, forKey: .required)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                options = try container.decode([[String: Any]].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode(String.self, forKey: .text)

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

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(placeholderText, forKey: .placeholderText)

            try? container.encodeIfPresent(required, forKey: .required)

            try? container.encodeIfPresent(options, forKey: .options)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
