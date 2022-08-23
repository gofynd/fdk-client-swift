

import Foundation
public extension PlatformClient {
    /*
         Model: SubLane
         Used By: Orders
     */

    class SubLane: Codable {
        public var value: String

        public var currentState: [String]?

        public var text: String

        public var nextState: [String]?

        public var index: Int

        public var totalShipments: Int

        public enum CodingKeys: String, CodingKey {
            case value

            case currentState = "current_state"

            case text

            case nextState = "next_state"

            case index

            case totalShipments = "total_shipments"
        }

        public init(currentState: [String]? = nil, index: Int, nextState: [String]? = nil, text: String, totalShipments: Int, value: String) {
            self.value = value

            self.currentState = currentState

            self.text = text

            self.nextState = nextState

            self.index = index

            self.totalShipments = totalShipments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(String.self, forKey: .value)

            do {
                currentState = try container.decode([String].self, forKey: .currentState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            text = try container.decode(String.self, forKey: .text)

            do {
                nextState = try container.decode([String].self, forKey: .nextState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            index = try container.decode(Int.self, forKey: .index)

            totalShipments = try container.decode(Int.self, forKey: .totalShipments)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(currentState, forKey: .currentState)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(nextState, forKey: .nextState)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(totalShipments, forKey: .totalShipments)
        }
    }
}
