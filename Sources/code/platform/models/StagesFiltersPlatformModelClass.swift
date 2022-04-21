

import Foundation
public extension PlatformClient {
    /*
         Model: StagesFilters
         Used By: Order
     */

    class StagesFilters: Codable {
        public var text: String?

        public var value: String?

        public var type: String?

        public var options: Options?

        public enum CodingKeys: String, CodingKey {
            case text

            case value

            case type

            case options
        }

        public init(options: Options? = nil, text: String? = nil, type: String? = nil, value: String? = nil) {
            self.text = text

            self.value = value

            self.type = type

            self.options = options
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                text = try container.decode(String.self, forKey: .text)

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

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                options = try container.decode(Options.self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(options, forKey: .options)
        }
    }
}
