

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FiltersInfo
         Used By: Order
     */

    class FiltersInfo: Codable {
        public var text: String

        public var placeholderText: String?

        public var type: String

        public var value: String

        public var options: [FilterInfoOption]?

        public var required: Bool?

        public enum CodingKeys: String, CodingKey {
            case text

            case placeholderText = "placeholder_text"

            case type

            case value

            case options

            case required
        }

        public init(options: [FilterInfoOption]? = nil, placeholderText: String? = nil, required: Bool? = nil, text: String, type: String, value: String) {
            self.text = text

            self.placeholderText = placeholderText

            self.type = type

            self.value = value

            self.options = options

            self.required = required
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            text = try container.decode(String.self, forKey: .text)

            do {
                placeholderText = try container.decode(String.self, forKey: .placeholderText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            value = try container.decode(String.self, forKey: .value)

            do {
                options = try container.decode([FilterInfoOption].self, forKey: .options)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(placeholderText, forKey: .placeholderText)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encode(options, forKey: .options)

            try? container.encodeIfPresent(required, forKey: .required)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FiltersInfo
         Used By: Order
     */

    class FiltersInfo: Codable {
        public var text: String

        public var placeholderText: String?

        public var type: String

        public var value: String

        public var options: [FilterInfoOption]?

        public var required: Bool?

        public enum CodingKeys: String, CodingKey {
            case text

            case placeholderText = "placeholder_text"

            case type

            case value

            case options

            case required
        }

        public init(options: [FilterInfoOption]? = nil, placeholderText: String? = nil, required: Bool? = nil, text: String, type: String, value: String) {
            self.text = text

            self.placeholderText = placeholderText

            self.type = type

            self.value = value

            self.options = options

            self.required = required
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            text = try container.decode(String.self, forKey: .text)

            do {
                placeholderText = try container.decode(String.self, forKey: .placeholderText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            value = try container.decode(String.self, forKey: .value)

            do {
                options = try container.decode([FilterInfoOption].self, forKey: .options)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(placeholderText, forKey: .placeholderText)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encode(options, forKey: .options)

            try? container.encodeIfPresent(required, forKey: .required)
        }
    }
}
