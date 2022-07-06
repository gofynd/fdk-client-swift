

import Foundation
public extension ApplicationClient {
    /*
         Model: HomePageFeature
         Used By: Configuration
     */
    class HomePageFeature: Codable {
        public var orderProcessing: Bool?

        public enum CodingKeys: String, CodingKey {
            case orderProcessing = "order_processing"
        }

        public init(orderProcessing: Bool? = nil) {
            self.orderProcessing = orderProcessing
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderProcessing = try container.decode(Bool.self, forKey: .orderProcessing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderProcessing, forKey: .orderProcessing)
        }
    }
}
