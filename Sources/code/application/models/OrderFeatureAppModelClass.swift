

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderFeature
         Used By: Configuration
     */
    class OrderFeature: Codable {
        public var buyAgain: Bool?

        public enum CodingKeys: String, CodingKey {
            case buyAgain = "buy_again"
        }

        public init(buyAgain: Bool? = nil) {
            self.buyAgain = buyAgain
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                buyAgain = try container.decode(Bool.self, forKey: .buyAgain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(buyAgain, forKey: .buyAgain)
        }
    }
}
