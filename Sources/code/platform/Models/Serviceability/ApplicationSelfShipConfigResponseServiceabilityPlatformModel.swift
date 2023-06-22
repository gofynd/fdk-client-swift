

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ApplicationSelfShipConfigResponse
         Used By: Serviceability
     */

    class ApplicationSelfShipConfigResponse: Codable {
        public var success: Bool

        public var selfShip: ApplicationSelfShipConfig?

        public var id: String

        public var error: ServiceabilityErrorResponse?

        public enum CodingKeys: String, CodingKey {
            case success

            case selfShip = "self_ship"

            case id

            case error
        }

        public init(error: ServiceabilityErrorResponse? = nil, id: String, selfShip: ApplicationSelfShipConfig? = nil, success: Bool) {
            self.success = success

            self.selfShip = selfShip

            self.id = id

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                selfShip = try container.decode(ApplicationSelfShipConfig.self, forKey: .selfShip)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                error = try container.decode(ServiceabilityErrorResponse.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(selfShip, forKey: .selfShip)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ApplicationSelfShipConfigResponse
         Used By: Serviceability
     */

    class ApplicationSelfShipConfigResponse: Codable {
        public var success: Bool

        public var selfShip: ApplicationSelfShipConfig?

        public var id: String

        public var error: ServiceabilityErrorResponse?

        public enum CodingKeys: String, CodingKey {
            case success

            case selfShip = "self_ship"

            case id

            case error
        }

        public init(error: ServiceabilityErrorResponse? = nil, id: String, selfShip: ApplicationSelfShipConfig? = nil, success: Bool) {
            self.success = success

            self.selfShip = selfShip

            self.id = id

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                selfShip = try container.decode(ApplicationSelfShipConfig.self, forKey: .selfShip)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                error = try container.decode(ServiceabilityErrorResponse.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(selfShip, forKey: .selfShip)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
