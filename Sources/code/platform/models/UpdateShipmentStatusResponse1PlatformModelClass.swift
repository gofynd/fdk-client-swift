

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateShipmentStatusResponse1
         Used By: Order
     */

    class UpdateShipmentStatusResponse1: Codable {
        public var errorEntities: [EntityTransitionError]?

        public var status: Bool

        public enum CodingKeys: String, CodingKey {
            case errorEntities = "error_entities"

            case status
        }

        public init(errorEntities: [EntityTransitionError]? = nil, status: Bool) {
            self.errorEntities = errorEntities

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                errorEntities = try container.decode([EntityTransitionError].self, forKey: .errorEntities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(errorEntities, forKey: .errorEntities)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
