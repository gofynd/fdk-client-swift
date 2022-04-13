import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: Stage
         Used By: Order
     */

    class Stage: Codable {
        public var text: String?

        public var value: String?

        public var isDefault: Bool?

        public var filters: StagesFilters?

        public enum CodingKeys: String, CodingKey {
            case text

            case value

            case isDefault = "is_default"

            case filters
        }

        public init(filters: StagesFilters?, isDefault: Bool?, text: String?, value: String?) {
            self.text = text

            self.value = value

            self.isDefault = isDefault

            self.filters = filters
        }

        public func duplicate() -> Stage {
            let dict = self.dictionary!
            let copy = Stage(dictionary: dict)!
            return copy
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
                isDefault = try container.decode(Bool.self, forKey: .isDefault)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(StagesFilters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}
