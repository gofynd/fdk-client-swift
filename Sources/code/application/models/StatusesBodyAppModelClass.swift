

import Foundation
public extension ApplicationClient {
    /*
         Model: StatusesBody
         Used By: Order
     */
    class StatusesBody: Codable {
        public var status: String?

        public var excludeBagsNextState: String?

        public var shipments: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case status

            case excludeBagsNextState = "exclude_bags_next_state"

            case shipments
        }

        public init(excludeBagsNextState: String? = nil, shipments: [String: Any]? = nil, status: String? = nil) {
            self.status = status

            self.excludeBagsNextState = excludeBagsNextState

            self.shipments = shipments
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
                excludeBagsNextState = try container.decode(String.self, forKey: .excludeBagsNextState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode([String: Any].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(excludeBagsNextState, forKey: .excludeBagsNextState)

            try? container.encodeIfPresent(shipments, forKey: .shipments)
        }
    }
}
