

import Foundation
public extension PlatformClient {
    /*
         Model: Filters
         Used By: Order
     */

    class Filters: Codable {
        public var stage: Stage?

        public var stages: Stages?

        public enum CodingKeys: String, CodingKey {
            case stage

            case stages
        }

        public init(stage: Stage? = nil, stages: Stages? = nil) {
            self.stage = stage

            self.stages = stages
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stage = try container.decode(Stage.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stages = try container.decode(Stages.self, forKey: .stages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(stages, forKey: .stages)
        }
    }
}
