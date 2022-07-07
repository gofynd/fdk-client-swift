

import Foundation
public extension PlatformClient {
    /*
         Model: SubLane
         Used By: Orders
     */

    class SubLane: Codable {
        public var displayName: String

        public var currentState: [String]?

        public var index: Int

        public var nextState: [String]?

        public var name: String

        public var totalShipments: Int

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case currentState = "current_state"

            case index

            case nextState = "next_state"

            case name

            case totalShipments = "total_shipments"
        }

        public init(currentState: [String]? = nil, displayName: String, index: Int, name: String, nextState: [String]? = nil, totalShipments: Int) {
            self.displayName = displayName

            self.currentState = currentState

            self.index = index

            self.nextState = nextState

            self.name = name

            self.totalShipments = totalShipments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                currentState = try container.decode([String].self, forKey: .currentState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            index = try container.decode(Int.self, forKey: .index)

            do {
                nextState = try container.decode([String].self, forKey: .nextState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            totalShipments = try container.decode(Int.self, forKey: .totalShipments)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(currentState, forKey: .currentState)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(nextState, forKey: .nextState)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(totalShipments, forKey: .totalShipments)
        }
    }
}
