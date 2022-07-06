

import Foundation
public extension PlatformClient {
    /*
         Model: OrderLanesCount
         Used By: Order
     */

    class OrderLanesCount: Codable {
        public var stages: [StageItem]

        public enum CodingKeys: String, CodingKey {
            case stages
        }

        public init(stages: [StageItem]) {
            self.stages = stages
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            stages = try container.decode([StageItem].self, forKey: .stages)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stages, forKey: .stages)
        }
    }
}
