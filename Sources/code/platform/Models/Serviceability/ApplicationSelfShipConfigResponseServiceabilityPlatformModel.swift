

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ApplicationSelfShipConfigResponse
         Used By: Serviceability
     */

    class ApplicationSelfShipConfigResponse: Codable {
        public var success: Bool

        public var data: ApplicationSelfShipConfig?

        public var error: ServiceabilityErrorResponse?

        public enum CodingKeys: String, CodingKey {
            case success

            case data

            case error
        }

        public init(data: ApplicationSelfShipConfig? = nil, error: ServiceabilityErrorResponse? = nil, success: Bool) {
            self.success = success

            self.data = data

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                data = try container.decode(ApplicationSelfShipConfig.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            try? container.encodeIfPresent(data, forKey: .data)

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

        public var data: ApplicationSelfShipConfig?

        public var error: ServiceabilityErrorResponse?

        public enum CodingKeys: String, CodingKey {
            case success

            case data

            case error
        }

        public init(data: ApplicationSelfShipConfig? = nil, error: ServiceabilityErrorResponse? = nil, success: Bool) {
            self.success = success

            self.data = data

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                data = try container.decode(ApplicationSelfShipConfig.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
