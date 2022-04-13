import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: BagArticleReturnConfig
         Used By: Order
     */

    class BagArticleReturnConfig: Codable {
        public var time: Int?

        public var unit: String?

        public var returnable: Bool?

        public enum CodingKeys: String, CodingKey {
            case time

            case unit

            case returnable
        }

        public init(returnable: Bool?, time: Int?, unit: String?) {
            self.time = time

            self.unit = unit

            self.returnable = returnable
        }

        public func duplicate() -> BagArticleReturnConfig {
            let dict = self.dictionary!
            let copy = BagArticleReturnConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                time = try container.decode(Int.self, forKey: .time)

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

            do {
                returnable = try container.decode(Bool.self, forKey: .returnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(time, forKey: .time)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(returnable, forKey: .returnable)
        }
    }
}
