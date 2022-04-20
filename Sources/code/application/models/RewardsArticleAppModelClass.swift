

import Foundation
public extension ApplicationClient {
    /*
         Model: RewardsArticle
         Used By: Rewards
     */
    class RewardsArticle: Codable {
        public var id: String?

        public var points: Double?

        public var price: Double?

        public enum CodingKeys: String, CodingKey {
            case id

            case points

            case price
        }

        public init(id: String? = nil, points: Double? = nil, price: Double? = nil) {
            self.id = id

            self.points = points

            self.price = price
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                points = try container.decode(Double.self, forKey: .points)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(Double.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(points, forKey: .points)

            try? container.encodeIfPresent(price, forKey: .price)
        }
    }
}
