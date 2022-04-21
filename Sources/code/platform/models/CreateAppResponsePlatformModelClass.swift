

import Foundation
public extension PlatformClient {
    /*
         Model: CreateAppResponse
         Used By: Configuration
     */

    class CreateAppResponse: Codable {
        public var app: Application?

        public var configuration: ApplicationInventory?

        public enum CodingKeys: String, CodingKey {
            case app

            case configuration
        }

        public init(app: Application? = nil, configuration: ApplicationInventory? = nil) {
            self.app = app

            self.configuration = configuration
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                app = try container.decode(Application.self, forKey: .app)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                configuration = try container.decode(ApplicationInventory.self, forKey: .configuration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(app, forKey: .app)

            try? container.encodeIfPresent(configuration, forKey: .configuration)
        }
    }
}
