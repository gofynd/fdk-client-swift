

import Foundation
public extension PlatformClient {
    /*
         Model: SubLane
         Used By: Order
     */

    class SubLane: Codable {
        public var index: Int

        public var text: String

        public var currentState: [String]?

        public var totalShipments: Int

        public var nextState: [String]?

        public var value: String

        public enum CodingKeys: String, CodingKey {
            case index

            case text

            case currentState = "current_state"

            case totalShipments = "total_shipments"

            case nextState = "next_state"

            case value
        }

        public init(currentState: [String]? = nil, index: Int, nextState: [String]? = nil, text: String, totalShipments: Int, value: String) {
            self.index = index

            self.text = text

            self.currentState = currentState

            self.totalShipments = totalShipments

            self.nextState = nextState

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            index = try container.decode(Int.self, forKey: .index)

            text = try container.decode(String.self, forKey: .text)

            do {
                currentState = try container.decode([String].self, forKey: .currentState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipments = try container.decode(Int.self, forKey: .totalShipments)

            do {
                nextState = try container.decode([String].self, forKey: .nextState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(String.self, forKey: .value)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(currentState, forKey: .currentState)

            try? container.encodeIfPresent(totalShipments, forKey: .totalShipments)

            try? container.encodeIfPresent(nextState, forKey: .nextState)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
