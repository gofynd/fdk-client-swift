

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateShipmentStatusResponse1
         Used By: Order
     */

    class UpdateShipmentStatusResponse1: Codable {
        public var status: Bool

        public var errorEntities: [EntityTransitionError]?

        public enum CodingKeys: String, CodingKey {
            case status

            case errorEntities = "error_entities"
        }

        public init(errorEntities: [EntityTransitionError]? = nil, status: Bool) {
            self.status = status

            self.errorEntities = errorEntities
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Bool.self, forKey: .status)

            do {
                errorEntities = try container.decode([EntityTransitionError].self, forKey: .errorEntities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(errorEntities, forKey: .errorEntities)
        }
    }
}
