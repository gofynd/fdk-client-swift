

import Foundation
public extension PlatformClient {
    /*
         Model: SubLane
         Used By: Orders
     */

    class SubLane: Codable {
        public var totalShipments: Int

        public var text: String

        public var currentState: [String]?

        public var value: String

        public var nextState: [String]?

        public var index: Int

        public enum CodingKeys: String, CodingKey {
            case totalShipments = "total_shipments"

            case text

            case currentState = "current_state"

            case value

            case nextState = "next_state"

            case index
        }

        public init(currentState: [String]? = nil, index: Int, nextState: [String]? = nil, text: String, totalShipments: Int, value: String) {
            self.totalShipments = totalShipments

            self.text = text

            self.currentState = currentState

            self.value = value

            self.nextState = nextState

            self.index = index
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalShipments = try container.decode(Int.self, forKey: .totalShipments)

            text = try container.decode(String.self, forKey: .text)

            do {
                currentState = try container.decode([String].self, forKey: .currentState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(String.self, forKey: .value)

            do {
                nextState = try container.decode([String].self, forKey: .nextState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            index = try container.decode(Int.self, forKey: .index)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalShipments, forKey: .totalShipments)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(currentState, forKey: .currentState)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(nextState, forKey: .nextState)

            try? container.encodeIfPresent(index, forKey: .index)
        }
    }
}
