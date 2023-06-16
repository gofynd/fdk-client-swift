

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ApplicationSelfShipConfigResponse
         Used By: Serviceability
     */

    class ApplicationSelfShipConfigResponse: Codable {
        public var id: String

        public var error: ServiceabilityErrorResponse?

        public var createdBy: String?

        public var success: Bool

        public var createdAt: String?

        public var selfShip: ApplicationSelfShipConfig?

        public var updatedBy: String?

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case error

            case createdBy = "created_by"

            case success

            case createdAt = "created_at"

            case selfShip = "self_ship"

            case updatedBy = "updated_by"

            case updatedAt = "updated_at"
        }

        public init(createdAt: String? = nil, createdBy: String? = nil, error: ServiceabilityErrorResponse? = nil, id: String, selfShip: ApplicationSelfShipConfig? = nil, success: Bool, updatedAt: String? = nil, updatedBy: String? = nil) {
            self.id = id

            self.error = error

            self.createdBy = createdBy

            self.success = success

            self.createdAt = createdAt

            self.selfShip = selfShip

            self.updatedBy = updatedBy

            self.updatedAt = updatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            do {
                error = try container.decode(ServiceabilityErrorResponse.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(String.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

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

            do {
                updatedBy = try container.decode(String.self, forKey: .updatedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(selfShip, forKey: .selfShip)

            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
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

        public var error: ServiceabilityErrorResponse?

        public var createdBy: String?

        public var success: Bool

        public var createdAt: String?

        public var selfShip: ApplicationSelfShipConfig?

        public var updatedBy: String?

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case error

            case createdBy = "created_by"

            case success

            case createdAt = "created_at"

            case selfShip = "self_ship"

            case updatedBy = "updated_by"

            case updatedAt = "updated_at"
        }

        public init(createdAt: String? = nil, createdBy: String? = nil, error: ServiceabilityErrorResponse? = nil, id: String, selfShip: ApplicationSelfShipConfig? = nil, success: Bool, updatedAt: String? = nil, updatedBy: String? = nil) {
            self.id = id

            self.error = error

            self.createdBy = createdBy

            self.success = success

            self.createdAt = createdAt

            self.selfShip = selfShip

            self.updatedBy = updatedBy

            self.updatedAt = updatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            do {
                error = try container.decode(ServiceabilityErrorResponse.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(String.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

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

            do {
                updatedBy = try container.decode(String.self, forKey: .updatedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(selfShip, forKey: .selfShip)

            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }
}
