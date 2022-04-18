import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: RewardPointRequest
         Used By: Cart
     */
    class RewardPointRequest: Codable {
        public var points: Bool

        public enum CodingKeys: String, CodingKey {
            case points
        }

        public init(points: Bool) {
            self.points = points
        }

        public func duplicate() -> RewardPointRequest {
            let dict = self.dictionary!
            let copy = RewardPointRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            points = try container.decode(Bool.self, forKey: .points)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(points, forKey: .points)
        }
    }
}
