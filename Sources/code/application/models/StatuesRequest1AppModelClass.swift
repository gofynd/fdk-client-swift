

import Foundation
public extension ApplicationClient {
    /*
         Model: StatuesRequest1
         Used By: Order
     */
    class StatuesRequest1: Codable {
        public var excludeBagsNextState: String?

        public var shipments: [ShipmentsRequest]?

        public var status: String?

        public enum CodingKeys: String, CodingKey {
            case excludeBagsNextState = "exclude_bags_next_state"

            case shipments

            case status
        }

        public init(excludeBagsNextState: String? = nil, shipments: [ShipmentsRequest]? = nil, status: String? = nil) {
            self.excludeBagsNextState = excludeBagsNextState

            self.shipments = shipments

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                excludeBagsNextState = try container.decode(String.self, forKey: .excludeBagsNextState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode([ShipmentsRequest].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(excludeBagsNextState, forKey: .excludeBagsNextState)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
