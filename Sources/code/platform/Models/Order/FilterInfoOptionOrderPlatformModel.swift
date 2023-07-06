

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FilterInfoOption
         Used By: Order
     */

    class FilterInfoOption: Codable {
        public var placeholderText: String?

        public var minSearchSize: Int?

        public var text: String?

        public var name: String?

        public var showUi: Bool?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case placeholderText = "placeholder_text"

            case minSearchSize = "min_search_size"

            case text

            case name

            case showUi = "show_ui"

            case value
        }

        public init(minSearchSize: Int? = nil, name: String? = nil, placeholderText: String? = nil, showUi: Bool? = nil, text: String? = nil, value: String? = nil) {
            self.placeholderText = placeholderText

            self.minSearchSize = minSearchSize

            self.text = text

            self.name = name

            self.showUi = showUi

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
                minSearchSize = try container.decode(Int.self, forKey: .minSearchSize)

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                showUi = try container.decode(Bool.self, forKey: .showUi)

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

            try? container.encodeIfPresent(minSearchSize, forKey: .minSearchSize)

            try? container.encode(text, forKey: .text)

            try? container.encode(name, forKey: .name)

            try? container.encodeIfPresent(showUi, forKey: .showUi)

            try? container.encode(value, forKey: .value)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FilterInfoOption
         Used By: Order
     */

    class FilterInfoOption: Codable {
        public var placeholderText: String?

        public var minSearchSize: Int?

        public var text: String?

        public var name: String?

        public var showUi: Bool?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case placeholderText = "placeholder_text"

            case minSearchSize = "min_search_size"

            case text

            case name

            case showUi = "show_ui"

            case value
        }

        public init(minSearchSize: Int? = nil, name: String? = nil, placeholderText: String? = nil, showUi: Bool? = nil, text: String? = nil, value: String? = nil) {
            self.placeholderText = placeholderText

            self.minSearchSize = minSearchSize

            self.text = text

            self.name = name

            self.showUi = showUi

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
                minSearchSize = try container.decode(Int.self, forKey: .minSearchSize)

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                showUi = try container.decode(Bool.self, forKey: .showUi)

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

            try? container.encodeIfPresent(minSearchSize, forKey: .minSearchSize)

            try? container.encode(text, forKey: .text)

            try? container.encode(name, forKey: .name)

            try? container.encodeIfPresent(showUi, forKey: .showUi)

            try? container.encode(value, forKey: .value)
        }
    }
}
