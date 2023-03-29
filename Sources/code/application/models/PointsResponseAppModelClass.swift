

import Foundation
public extension ApplicationClient {
    /*
         Model: PointsResponse
         Used By: Rewards
     */
    class PointsResponse: Codable {
        public var points: Double?

        public enum CodingKeys: String, CodingKey {
            case points
        }

        public init(points: Double? = nil) {
            self.points = points
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                points = try container.decode(Double.self, forKey: .points)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(points, forKey: .points)
        }
    }
}
