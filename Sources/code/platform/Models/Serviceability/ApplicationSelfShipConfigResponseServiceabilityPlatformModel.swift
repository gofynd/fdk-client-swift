

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ApplicationSelfShipConfigResponse
         Used By: Serviceability
     */

    class ApplicationSelfShipConfigResponse: Codable {
        public var success: Bool

        public var error: ServiceabilityErrorResponse?

        public var data: ApplicationSelfShipConfig?

        public enum CodingKeys: String, CodingKey {
            case success

            case error

            case data
        }

        public init(data: ApplicationSelfShipConfig? = nil, error: ServiceabilityErrorResponse? = nil, success: Bool) {
            self.success = success

            self.error = error

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                error = try container.decode(ServiceabilityErrorResponse.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(ApplicationSelfShipConfig.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(data, forKey: .data)
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

        public var error: ServiceabilityErrorResponse?

        public var data: ApplicationSelfShipConfig?

        public enum CodingKeys: String, CodingKey {
            case success

            case error

            case data
        }

        public init(data: ApplicationSelfShipConfig? = nil, error: ServiceabilityErrorResponse? = nil, success: Bool) {
            self.success = success

            self.error = error

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                error = try container.decode(ServiceabilityErrorResponse.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(ApplicationSelfShipConfig.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
