

import Foundation
public extension ApplicationClient {
    /*
         Model: AppVersionRequest
         Used By: Configuration
     */
    class AppVersionRequest: Codable {
        public var application: ApplicationVersionRequest

        public var device: Device

        public var locale: String?

        public var timezone: String?

        public enum CodingKeys: String, CodingKey {
            case application

            case device

            case locale

            case timezone
        }

        public init(application: ApplicationVersionRequest, device: Device, locale: String? = nil, timezone: String? = nil) {
            self.application = application

            self.device = device

            self.locale = locale

            self.timezone = timezone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            application = try container.decode(ApplicationVersionRequest.self, forKey: .application)

            device = try container.decode(Device.self, forKey: .device)

            do {
                locale = try container.decode(String.self, forKey: .locale)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timezone = try container.decode(String.self, forKey: .timezone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(device, forKey: .device)

            try? container.encodeIfPresent(locale, forKey: .locale)

            try? container.encodeIfPresent(timezone, forKey: .timezone)
        }
    }
}
