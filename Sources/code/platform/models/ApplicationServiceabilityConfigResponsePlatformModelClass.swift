

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationServiceabilityConfigResponse
         Used By: Logistic
     */

    class ApplicationServiceabilityConfigResponse: Codable {
        public var data: ApplicationServiceabilityConfig?

        public var error: ServiceabilityrErrorResponse?

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case data

            case error

            case success
        }

        public init(data: ApplicationServiceabilityConfig? = nil, error: ServiceabilityrErrorResponse? = nil, success: Bool) {
            self.data = data

            self.error = error

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(ApplicationServiceabilityConfig.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                error = try container.decode(ServiceabilityrErrorResponse.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
