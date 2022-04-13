import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: FilerList
         Used By: Catalog
     */

    class FilerList: Codable {
        public var display: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case display

            case value
        }

        public init(display: String?, value: String?) {
            self.display = display

            self.value = value
        }

        public func duplicate() -> FilerList {
            let dict = self.dictionary!
            let copy = FilerList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

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

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
