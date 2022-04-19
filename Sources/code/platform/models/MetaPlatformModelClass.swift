import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: Meta
         Used By: Catalog
     */

    class Meta: Codable {
        public var headers: [String: Any]?

        public var values: [[String: Any]]?

        public var unit: String?

        public enum CodingKeys: String, CodingKey {
            case headers

            case values

            case unit
        }

        public init(headers: [String: Any]?, unit: String?, values: [[String: Any]]?) {
            self.headers = headers

            self.values = values

            self.unit = unit
        }

        public func duplicate() -> Meta {
            let dict = self.dictionary!
            let copy = Meta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                headers = try container.decode([String: Any].self, forKey: .headers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                values = try container.decode([[String: Any]].self, forKey: .values)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(values, forKey: .values)

            try? container.encodeIfPresent(unit, forKey: .unit)
        }
    }
}
