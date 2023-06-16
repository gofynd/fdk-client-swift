

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentTimeStamp
         Used By: Order
     */

    class ShipmentTimeStamp: Codable {
        public var tMax: String?

        public var tMin: String?

        public enum CodingKeys: String, CodingKey {
            case tMax = "t_max"

            case tMin = "t_min"
        }

        public init(tMax: String? = nil, tMin: String? = nil) {
            self.tMax = tMax

            self.tMin = tMin
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tMax = try container.decode(String.self, forKey: .tMax)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tMin = try container.decode(String.self, forKey: .tMin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tMax, forKey: .tMax)

            try? container.encodeIfPresent(tMin, forKey: .tMin)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentTimeStamp
         Used By: Order
     */

    class ShipmentTimeStamp: Codable {
        public var tMax: String?

        public var tMin: String?

        public enum CodingKeys: String, CodingKey {
            case tMax = "t_max"

            case tMin = "t_min"
        }

        public init(tMax: String? = nil, tMin: String? = nil) {
            self.tMax = tMax

            self.tMin = tMin
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tMax = try container.decode(String.self, forKey: .tMax)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tMin = try container.decode(String.self, forKey: .tMin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tMax, forKey: .tMax)

            try? container.encodeIfPresent(tMin, forKey: .tMin)
        }
    }
}
