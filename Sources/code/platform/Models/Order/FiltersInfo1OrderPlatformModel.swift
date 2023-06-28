

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FiltersInfo1
         Used By: Order
     */

    class FiltersInfo1: Codable {
        public var value: String

        public var text: String

        public var options: [FilterInfoOption1]?

        public var placeholderText: String?

        public var type: String

        public var required: Bool?

        public enum CodingKeys: String, CodingKey {
            case value

            case text

            case options

            case placeholderText = "placeholder_text"

            case type

            case required
        }

        public init(options: [FilterInfoOption1]? = nil, placeholderText: String? = nil, required: Bool? = nil, text: String, type: String, value: String) {
            self.value = value

            self.text = text

            self.options = options

            self.placeholderText = placeholderText

            self.type = type

            self.required = required
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(String.self, forKey: .value)

            text = try container.decode(String.self, forKey: .text)

            do {
                options = try container.decode([FilterInfoOption1].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                placeholderText = try container.decode(String.self, forKey: .placeholderText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            do {
                required = try container.decode(Bool.self, forKey: .required)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encode(options, forKey: .options)

            try? container.encodeIfPresent(placeholderText, forKey: .placeholderText)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(required, forKey: .required)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FiltersInfo1
         Used By: Order
     */

    class FiltersInfo1: Codable {
        public var value: String

        public var text: String

        public var options: [FilterInfoOption1]?

        public var placeholderText: String?

        public var type: String

        public var required: Bool?

        public enum CodingKeys: String, CodingKey {
            case value

            case text

            case options

            case placeholderText = "placeholder_text"

            case type

            case required
        }

        public init(options: [FilterInfoOption1]? = nil, placeholderText: String? = nil, required: Bool? = nil, text: String, type: String, value: String) {
            self.value = value

            self.text = text

            self.options = options

            self.placeholderText = placeholderText

            self.type = type

            self.required = required
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(String.self, forKey: .value)

            text = try container.decode(String.self, forKey: .text)

            do {
                options = try container.decode([FilterInfoOption1].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                placeholderText = try container.decode(String.self, forKey: .placeholderText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            do {
                required = try container.decode(Bool.self, forKey: .required)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encode(options, forKey: .options)

            try? container.encodeIfPresent(placeholderText, forKey: .placeholderText)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(required, forKey: .required)
        }
    }
}
