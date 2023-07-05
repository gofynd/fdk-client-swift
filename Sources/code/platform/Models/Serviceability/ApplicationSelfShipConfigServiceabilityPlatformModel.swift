

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ApplicationSelfShipConfig
         Used By: Serviceability
     */

    class ApplicationSelfShipConfig: Codable {
        public var selfShip: SelfShipResponse?

        public enum CodingKeys: String, CodingKey {
            case selfShip = "self_ship"
        }

        public init(selfShip: SelfShipResponse? = nil) {
            self.selfShip = selfShip
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                selfShip = try container.decode(SelfShipResponse.self, forKey: .selfShip)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(selfShip, forKey: .selfShip)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ApplicationSelfShipConfig
         Used By: Serviceability
     */

    class ApplicationSelfShipConfig: Codable {
        public var selfShip: SelfShipResponse?

        public enum CodingKeys: String, CodingKey {
            case selfShip = "self_ship"
        }

        public init(selfShip: SelfShipResponse? = nil) {
            self.selfShip = selfShip
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                selfShip = try container.decode(SelfShipResponse.self, forKey: .selfShip)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(selfShip, forKey: .selfShip)
        }
    }
}
