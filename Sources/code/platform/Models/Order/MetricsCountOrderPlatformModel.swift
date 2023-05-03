

import Foundation

public extension PlatformClient.Order {
    /*
         Model: MetricsCount
         Used By: Order
     */

    class MetricsCount: Codable {
        public var text: String

        public var options: [Options]?

        public var value: Int

        public var key: String

        public enum CodingKeys: String, CodingKey {
            case text

            case options

            case value

            case key
        }

        public init(key: String, options: [Options]? = nil, text: String, value: Int) {
            self.text = text

            self.options = options

            self.value = value

            self.key = key
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            text = try container.decode(String.self, forKey: .text)

            do {
                options = try container.decode([Options].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(Int.self, forKey: .value)

            key = try container.decode(String.self, forKey: .key)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(options, forKey: .options)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: MetricsCount
         Used By: Order
     */

    class MetricsCount: Codable {
        public var text: String

        public var options: [Options]?

        public var value: Int

        public var key: String

        public enum CodingKeys: String, CodingKey {
            case text

            case options

            case value

            case key
        }

        public init(key: String, options: [Options]? = nil, text: String, value: Int) {
            self.text = text

            self.options = options

            self.value = value

            self.key = key
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            text = try container.decode(String.self, forKey: .text)

            do {
                options = try container.decode([Options].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(Int.self, forKey: .value)

            key = try container.decode(String.self, forKey: .key)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(options, forKey: .options)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }
}
