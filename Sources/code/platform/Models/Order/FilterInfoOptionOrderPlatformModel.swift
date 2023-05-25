

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FilterInfoOption
         Used By: Order
     */

    class FilterInfoOption: Codable {
        public var value: String?

        public var text: String

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case text

            case name
        }

        public init(name: String? = nil, text: String, value: String? = nil) {
            self.value = value

            self.text = text

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            text = try container.decode(String.self, forKey: .text)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FilterInfoOption
         Used By: Order
     */

    class FilterInfoOption: Codable {
        public var value: String?

        public var text: String

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case text

            case name
        }

        public init(name: String? = nil, text: String, value: String? = nil) {
            self.value = value

            self.text = text

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            text = try container.decode(String.self, forKey: .text)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
