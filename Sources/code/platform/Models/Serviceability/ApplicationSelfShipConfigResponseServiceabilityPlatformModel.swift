

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ApplicationSelfShipConfigResponse
         Used By: Serviceability
     */

    class ApplicationSelfShipConfigResponse: Codable {
        public var id: String

        public var success: Bool

        public var error: ServiceabilityErrorResponse?

        public var selfShip: ApplicationSelfShipConfig?

        public enum CodingKeys: String, CodingKey {
            case id

            case success

            case error

            case selfShip = "self_ship"
        }

        public init(error: ServiceabilityErrorResponse? = nil, id: String, selfShip: ApplicationSelfShipConfig? = nil, success: Bool) {
            self.id = id

            self.success = success

            self.error = error

            self.selfShip = selfShip
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                error = try container.decode(ServiceabilityErrorResponse.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                selfShip = try container.decode(ApplicationSelfShipConfig.self, forKey: .selfShip)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(selfShip, forKey: .selfShip)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ApplicationSelfShipConfigResponse
         Used By: Serviceability
     */

    class ApplicationSelfShipConfigResponse: Codable {
        public var id: String

        public var success: Bool

        public var error: ServiceabilityErrorResponse?

        public var selfShip: ApplicationSelfShipConfig?

        public enum CodingKeys: String, CodingKey {
            case id

            case success

            case error

            case selfShip = "self_ship"
        }

        public init(error: ServiceabilityErrorResponse? = nil, id: String, selfShip: ApplicationSelfShipConfig? = nil, success: Bool) {
            self.id = id

            self.success = success

            self.error = error

            self.selfShip = selfShip
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                error = try container.decode(ServiceabilityErrorResponse.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                selfShip = try container.decode(ApplicationSelfShipConfig.self, forKey: .selfShip)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(selfShip, forKey: .selfShip)
        }
    }
}
