

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FiltersInfo
         Used By: Order
     */

    class FiltersInfo: Codable {
        public var placeholderText: String?

        public var options: [FilterInfoOption]?

        public var type: String

        public var text: String

        public var value: String

        public var required: Bool?

        public enum CodingKeys: String, CodingKey {
            case placeholderText = "placeholder_text"

            case options

            case type

            case text

            case value

            case required
        }

        public init(options: [FilterInfoOption]? = nil, placeholderText: String? = nil, required: Bool? = nil, text: String, type: String, value: String) {
            self.placeholderText = placeholderText

            self.options = options

            self.type = type

            self.text = text

            self.value = value

            self.required = required
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
                options = try container.decode([FilterInfoOption].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            text = try container.decode(String.self, forKey: .text)

            value = try container.decode(String.self, forKey: .value)

            do {
                required = try container.decode(Bool.self, forKey: .required)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(placeholderText, forKey: .placeholderText)

            try? container.encode(options, forKey: .options)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(value, forKey: .value)

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
        public var placeholderText: String?

        public var options: [FilterInfoOption]?

        public var type: String

        public var text: String

        public var value: String

        public var required: Bool?

        public enum CodingKeys: String, CodingKey {
            case placeholderText = "placeholder_text"

            case options

            case type

            case text

            case value

            case required
        }

        public init(options: [FilterInfoOption]? = nil, placeholderText: String? = nil, required: Bool? = nil, text: String, type: String, value: String) {
            self.placeholderText = placeholderText

            self.options = options

            self.type = type

            self.text = text

            self.value = value

            self.required = required
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
                options = try container.decode([FilterInfoOption].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            text = try container.decode(String.self, forKey: .text)

            value = try container.decode(String.self, forKey: .value)

            do {
                required = try container.decode(Bool.self, forKey: .required)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(placeholderText, forKey: .placeholderText)

            try? container.encode(options, forKey: .options)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(required, forKey: .required)
        }
    }
}
