

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FiltersInfo1
         Used By: Order
     */

    class FiltersInfo1: Codable {
        public var text: String

        public var required: Bool?

        public var options: [FilterInfoOption1]?

        public var placeholderText: String?

        public var value: String

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case text

            case required

            case options

            case placeholderText = "placeholder_text"

            case value

            case type
        }

        public init(options: [FilterInfoOption1]? = nil, placeholderText: String? = nil, required: Bool? = nil, text: String, type: String, value: String) {
            self.text = text

            self.required = required

            self.options = options

            self.placeholderText = placeholderText

            self.value = value

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            text = try container.decode(String.self, forKey: .text)

            do {
                required = try container.decode(Bool.self, forKey: .required)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            value = try container.decode(String.self, forKey: .value)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(required, forKey: .required)

            try? container.encode(options, forKey: .options)

            try? container.encodeIfPresent(placeholderText, forKey: .placeholderText)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FiltersInfo1
         Used By: Order
     */

    class FiltersInfo1: Codable {
        public var text: String

        public var required: Bool?

        public var options: [FilterInfoOption1]?

        public var placeholderText: String?

        public var value: String

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case text

            case required

            case options

            case placeholderText = "placeholder_text"

            case value

            case type
        }

        public init(options: [FilterInfoOption1]? = nil, placeholderText: String? = nil, required: Bool? = nil, text: String, type: String, value: String) {
            self.text = text

            self.required = required

            self.options = options

            self.placeholderText = placeholderText

            self.value = value

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            text = try container.decode(String.self, forKey: .text)

            do {
                required = try container.decode(Bool.self, forKey: .required)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            value = try container.decode(String.self, forKey: .value)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(required, forKey: .required)

            try? container.encode(options, forKey: .options)

            try? container.encodeIfPresent(placeholderText, forKey: .placeholderText)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
