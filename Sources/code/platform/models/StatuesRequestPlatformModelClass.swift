

import Foundation
public extension PlatformClient {
    /*
         Model: StatuesRequest
         Used By: OrderManage
     */

    class StatuesRequest: Codable {
        public var status: String?

        public var shipments: ShipmentsRequest?

        public var excludeBagsNextState: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case shipments

            case excludeBagsNextState = "exclude_bags_next_state"
        }

        public init(excludeBagsNextState: String? = nil, shipments: ShipmentsRequest? = nil, status: String? = nil) {
            self.status = status

            self.shipments = shipments

            self.excludeBagsNextState = excludeBagsNextState
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode(ShipmentsRequest.self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                excludeBagsNextState = try container.decode(String.self, forKey: .excludeBagsNextState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(excludeBagsNextState, forKey: .excludeBagsNextState)
        }
    }
}
